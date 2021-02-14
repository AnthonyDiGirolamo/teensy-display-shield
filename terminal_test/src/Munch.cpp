#include "Munch.h"

extern GDClass GD;

Munch::Munch(void) {
}

uint8_t Munch::init(uint32_t ram_address) {
  ram_starting_address = ram_address;

  munch_magic = 6;
	munch_base_color = 0;
  color_wheel_position = 0;

  last_frame_millis = 0;
  current_frame_cell = 0;
  rendered_frames = false;

  // Create the 128x128 bitmap for the munch texture
  GD.BitmapHandle(1);
  GD.BitmapSource(ram_starting_address);
  GD.BitmapLayout(L8, FRAME_BUFFER_ROW_BYTES, FRAME_BUFFER_HEIGHT);
  // Tile 128x128 to fill the display
  GD.BitmapSize(NEAREST, REPEAT, REPEAT, GD.w, GD.h);
  // No tiling
  // GD.BitmapSize(NEAREST, BORDER, BORDER, GD.w, GD.h);

  // Create a 1x1 white pixel bitmap handle for drawing shaded squares
  GD.cmd_memset(ram_end_address() - 2, 0xFF, 2); // Two bytes for 1 RGB565 pixel
  GD.BitmapHandle(2);
  GD.BitmapSource(ram_end_address() - 2);
  GD.BitmapLayout(RGB565, 2, 1);
  GD.BitmapSize(NEAREST, REPEAT, REPEAT, 64, 64);

  // malloc the frame_buffer
  frame_buffer = (uint8_t *) malloc(FRAME_BUFFER_BYTES);
  if (frame_buffer == NULL)
    return 0;	// failed
  memset(frame_buffer, 0, FRAME_BUFFER_BYTES);
  return 1;
}

uint32_t Munch::ram_end_address() {
  return ram_starting_address + (FRAME_BUFFER_BYTES * FRAME_CELL_COUNT) + 2;
}

void Munch::update(void) {
  if (rendered_frames) {
    // increment frame count
    if (millis() > last_frame_millis + MILLIS_PER_FRAME) {
      current_frame_cell = (current_frame_cell + 1) % FRAME_CELL_COUNT;
      last_frame_millis = millis();
    }
  }
  else {
    // render each frame and send to gpu ram
    for (int cell = 0; cell < FRAME_CELL_COUNT; cell++) {
      for (int y = 0; y < FRAME_BUFFER_HEIGHT; y++) {
        for (int x = 0; x < FRAME_BUFFER_WIDTH; x++) {
          frame_buffer[y*FRAME_BUFFER_WIDTH + x] = munch_base_color + munch_magic * (x ^ y);
        }
      }

      GD.cmd_memwrite(ram_starting_address + (FRAME_BUFFER_BYTES * cell), FRAME_BUFFER_BYTES);
      GD.copy((uint8_t*)frame_buffer, FRAME_BUFFER_BYTES);

      munch_base_color = (munch_base_color + 8) % 256;
    }
    free(frame_buffer);
    rendered_frames = true;
  }
}

void Munch::color_wheel(uint8_t wheel_position) {
  wheel_position = 255 - wheel_position;
  if(wheel_position < 85) {
    GD.ColorRGB(255 - wheel_position * 3, 0, wheel_position * 3);
  } else if(wheel_position < 170) {
    wheel_position -= 85;
    GD.ColorRGB(0, wheel_position * 3, 255 - wheel_position * 3);
  } else {
    wheel_position -= 170;
    GD.ColorRGB(wheel_position * 3, 255 - wheel_position * 3, 0);
  }
}

void Munch::draw(void) {
  GD.SaveContext();
  GD.VertexFormat(3); // means points are scaled by 8 from here on

  GD.Begin(BITMAPS);
  GD.cmd_scale(F16(2), F16(2));
  GD.cmd_setmatrix();

  GD.BitmapHandle(1);
  GD.Cell(current_frame_cell);
  GD.Vertex2f(0, 0);


  GD.ColorA(128);
  GD.BlendFunc(SRC_ALPHA, ONE_MINUS_SRC_ALPHA);

  // GD.BlendFunc(ONE, ONE);  // Very washed out

  int screen_width = 64 * (1+floor(GD.w / 64));
  int screen_height = 64 * (1+floor(GD.h / 64));
  GD.BitmapHandle(2);
  uint8_t cwp = color_wheel_position;
  for (int x = 0; x < screen_width; x+= 64) {
    for (int y = 0; y < screen_height; y+= 64) {
      color_wheel(cwp);
      cwp = (cwp + 5) % 256;
      GD.Vertex2f(8*x, 8*y);
    }
  }

  GD.RestoreContext();

  // Rotate colors
  color_wheel_position = (color_wheel_position + 1) % 256;
}
