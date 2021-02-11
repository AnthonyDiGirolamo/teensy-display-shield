#include "Munch.h"

extern GDClass GD;
extern Input controller;

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

  GD.BitmapHandle(1);
  GD.BitmapSource(ram_starting_address);
  GD.BitmapLayout(L8, FRAME_BUFFER_ROW_BYTES, FRAME_BUFFER_HEIGHT);
  GD.BitmapSize(NEAREST, REPEAT, REPEAT, GD.w, GD.h);

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

  GD.Begin(BITMAPS);
  GD.cmd_scale(F16(2), F16(2));
  GD.cmd_setmatrix();
  GD.Vertex2ii(0, 0, 1, current_frame_cell);

  GD.ColorA(128);
  GD.BlendFunc(SRC_ALPHA, ONE_MINUS_SRC_ALPHA);

  GD.BlendFunc(ONE, ONE);  // Very washed out

  uint8_t cwp = color_wheel_position;
  for (int x = 0; x < GD.w; x+= 64) {
    for (int y = 0; y < GD.w; y+= 64) {
      color_wheel(cwp);
      cwp = (cwp + 10) % 256;
      GD.Vertex2ii(x, y, 2);
    }
  }

  GD.RestoreContext();

  color_wheel_position = (color_wheel_position + 1) % 256;

  // Test different magic and base color values
  // sprintf(line_buffer,
  //         "base color: %u --- magic: %u )",
  //         munch_base_color, munch_magic);

  // Display millis and cell number
  // sprintf(line_buffer,
  //         "time: %u -- frame: %u )", last_frame_millis, current_frame_cell);

  // GD.ColorRGB(0xFFFFFF);
  // GD.cmd_text(2*GD.w/3, GD.h-16, 20, 0, line_buffer);

}
