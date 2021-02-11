#include "terminal.h"

// 120 character strings
const char terminal_blank_line[] = "                                                                                                                          ";
char terminal_linebuffer[] = "                                                                                                                          ";

uint8_t *const linebuffer_const = (uint8_t*)terminal_linebuffer;

Terminal::Terminal() {
  scrollback_length = 100;
  foreground_color = 15;
  background_color = 0;
  disable_vga_background_colors();
  draw_x_coord = 0;
  draw_y_coord = 0;
  reset();
}

void Terminal::begin(uint8_t initial_font_mode) {
  if (initial_font_mode == TEXTVGA) {
    set_font_vga();
    change_size(17, 60);
  }
  else {
    set_font_8x8();
    change_size(34, 60);
  }
}

void Terminal::enable_vga_background_colors() {
  background_colors_enabled = true;
}

void Terminal::disable_vga_background_colors() {
  background_colors_enabled = false;
}

uint32_t Terminal::bitmap_byte_size() {
  return scrollback_length * bytes_per_line;
}

uint32_t Terminal::ram_end_address() {
  return bitmap_byte_size()+2;
}

void Terminal::change_size(uint16_t rows, uint16_t columns){
  lines_per_screen = rows;
  characters_per_line = columns;
  bytes_per_line = characters_per_line;
  if (current_font == TEXTVGA)
    bytes_per_line *= 2;

  draw_width = characters_per_line * 8;
  draw_height = lines_per_screen * line_pixel_height;

  // Create a 1x1 white pixel bitmap handle for drawing shaded rectangles
  GD.cmd_memset(bitmap_byte_size(), 0xFF, 2); // Two bytes for 1 RGB565 pixel
  GD.BitmapHandle(TERMINAL_BITMAP_HANDLE_BACKGROUND);
  GD.BitmapSource(bitmap_byte_size());
  GD.BitmapLayout(RGB565, 2, 1);
  GD.BitmapSize(NEAREST, REPEAT, REPEAT,
                characters_per_line * 8,
                lines_per_screen * line_pixel_height);
  reset();
}

void Terminal::set_font_8x8() {
  current_font = TEXT8X8;
  line_pixel_height = 8;
}

void Terminal::set_font_vga() {
  current_font = TEXTVGA;
  line_pixel_height = 16;
}

void Terminal::reset() {
  // // set all line history to spaces
  // strncpy(terminal_linebuffer, terminal_blank_line, characters_per_line);
  // for (uint16_t i = 0; i<scrollback_length; i++) {
  //   GD.cmd_memwrite(i*characters_per_line, characters_per_line);
  //   GD.copy(linebuffer_const, characters_per_line);
  // }

  bell = 0;
  line_count = 1;
  cursor_index = 0;
  last_line_address = 0;

  erase_line_buffer();
  set_scrollbar_handle_size();
}

void Terminal::ring_bell() {
  bell = 40;
}

void Terminal::update_scrollbar_position(uint16_t new_position) {
  scrollbar_position = new_position;
  if (scrollbar_position < scrollbar_size_half)
    scrollbar_position = scrollbar_size_half;
  if (scrollbar_position > 65535 - scrollbar_size_half)
    scrollbar_position = 65535 - scrollbar_size_half;
  scrollbar_position_percent = ((float)scrollbar_position - (float)scrollbar_size_half) / (65535.0 - (float)scrollbar_size);
  scrollbar_position_percent *= 100;
  scrollbar_position_percent = floor(scrollbar_position_percent);
  scrollbar_position_percent /= 100;
  scrollbar_position_percent = 1.0 - scrollbar_position_percent;
  if (line_count <= lines_per_screen) {
    scroll_offset = 0;
  }
  else {
    scroll_offset = (uint16_t) (scrollbar_position_percent * ((float)line_count - lines_per_screen));
  }
}

void Terminal::upload_to_graphics_ram() {
  GD.cmd_memwrite(last_line_address*bytes_per_line, bytes_per_line);
  GD.copy(linebuffer_const, bytes_per_line);
}

void Terminal::set_scrollbar_handle_size() {
  lines_per_screen_percent = ((float) lines_per_screen) / ((float) line_count);
  if (lines_per_screen_percent > 1.0)
    lines_per_screen_percent = 1.0;
  scrollbar_size = (uint16_t) floor(lines_per_screen_percent * 65535.0);
  scrollbar_size_half = (uint16_t) floor(lines_per_screen_percent * 0.5 * 65535.0);
  update_scrollbar_position(65535);
}

int32_t unread_count;

void Terminal::erase_line_buffer() {
  // erase current line
  strncpy(terminal_linebuffer, terminal_blank_line, bytes_per_line);

  if (current_font == TEXTVGA) {
    for (uint8_t i=1; i<120; i+=2) {
      terminal_linebuffer[i] = (background_color << 4) | foreground_color;
    }
  }
}

void Terminal::new_line() {
  // copy terminal_linebuffer to FT810 RAM
  upload_to_graphics_ram();
  cursor_index = 0;
  line_count++;
  if (line_count >= scrollback_length)
    line_count = scrollback_length;
  last_line_address++;
  if (last_line_address > scrollback_length)
    last_line_address = 0;

  erase_line_buffer();
  set_scrollbar_handle_size();
}

void Terminal::append_string(const char* str) {
  for(uint16_t i=0; i<strlen(str); i++) {
    append_character(str[i]);
  }
  // for(char& c : str) {
  //   // append_character(c);
  // }
  // append_character((char) 13);
}

void Terminal::put_char(char newchar) {
  if (current_font == TEXTVGA) {
    terminal_linebuffer[cursor_index*2+1] = (background_color << 4) | foreground_color;
    terminal_linebuffer[cursor_index*2] = newchar;
  }
  else {
    terminal_linebuffer[cursor_index] = newchar;
  }
}

uint8_t Terminal::append_character(char newchar) {
  if (cursor_index >= characters_per_line
      || newchar == TERMINAL_KEY_CR
      || newchar == TERMINAL_KEY_LF) {
    new_line();
    return LINE_FULL;
  }

  switch (newchar) {
  case TERMINAL_KEY_BACKSPACE:
    // delete current char if not at the beginning of the line
    if (cursor_index > 0) {
      put_char(' ');
      cursor_index--;

    }
    break;
  default:
    put_char(newchar);
    cursor_index++;
    break;
  }
  return CHAR_READ;
}

void Terminal::draw() {
  draw(draw_x_coord, draw_y_coord);
}

void Terminal::draw(int16_t startx, int16_t starty) {
  if (startx != draw_x_coord || starty != draw_y_coord) {
    draw_x_coord = startx;
    draw_y_coord = starty;
  }

  GD.SaveContext();

  // Use bitmap handle 14 for text bitmaps
  GD.BitmapHandle(TERMINAL_BITMAP_HANDLE_TEXT);
  GD.BitmapSize(NEAREST, BORDER, BORDER, 480, line_pixel_height);
  GD.BitmapLayout(current_font, bytes_per_line, 1);

  uint16_t current_line_address = last_line_address;
  if (scroll_offset > 0)
    current_line_address = (current_line_address + (scrollback_length-scroll_offset)) % scrollback_length;

  int16_t ycoord;
  uint16_t min_lines = line_count;
  if (line_count > lines_per_screen)
    min_lines = lines_per_screen;

  uint16_t max_xoffset = 0;
  if (bell > 10) {
    max_xoffset = bell / 10;
    bell--;
  }

  GD.Begin(BITMAPS);

  // Draw Background

  if (current_font == TEXTVGA && background_colors_enabled)
    // Use VGA background colors if enabled
    GD.BlendFunc(ONE, ZERO);
  else {
    // Draw a shaded Terminal Background with a 1x1 stretched bitmap
    // GD.BlendFunc(SRC_ALPHA, ONE_MINUS_SRC_ALPHA);
    GD.ColorRGB(0x000000);
    // GD.ColorA(32+128); // opacity
    GD.ColorA(32);
    GD.Vertex2ii(draw_x_coord, draw_y_coord, TERMINAL_BITMAP_HANDLE_BACKGROUND);
    GD.ColorA(255);

    // Terminal Background with a Rectangle primitive
    // GD.Begin(RECTS);
    // GD.BlendFunc(SRC_ALPHA, ONE_MINUS_SRC_ALPHA);
    // GD.ColorRGB(0x000000);
    // GD.ColorA(128);
    // GD.LineWidth(1*16); // 1 pixel radius
    // GD.Vertex2ii(0, DISPLAY_HEIGHT - 7*16);
    // GD.Vertex2ii(DISPLAY_WIDTH, DISPLAY_HEIGHT);
  }

  GD.ColorRGB(WHITE);

  // Draw Terminal Text

  for (int i=0; i<min_lines; i++) {
    ycoord = (draw_y_coord + (lines_per_screen * line_pixel_height)) - line_pixel_height - (line_pixel_height * i);
    // Change the bitmap start address
    GD.BitmapSource( current_line_address * bytes_per_line );
    GD.Vertex2ii(max_xoffset ? GD.random(max_xoffset) + draw_x_coord : draw_x_coord,
                 ycoord,
                 TERMINAL_BITMAP_HANDLE_TEXT);
    current_line_address = (current_line_address + (scrollback_length-1)) % scrollback_length;
  }

  // Draw Scrollbar

  GD.BlendFunc(SRC_ALPHA, ONE_MINUS_SRC_ALPHA);
  GD.ColorA(128); // alpha to 128/256
  GD.cmd_bgcolor(VALHALLA);
  GD.cmd_fgcolor(LIGHT_STEEL_BLUE);

  GD.Tag(TAG_SCROLLBAR);
  GD.cmd_scrollbar(draw_x_coord + draw_width - SCROLLBAR_WIDTH,
                   draw_y_coord + SCROLLBAR_HALF_WIDTH,
                   SCROLLBAR_WIDTH,
                   draw_height - SCROLLBAR_WIDTH,
                   OPT_FLAT,
                   scrollbar_position - scrollbar_size_half,
                   scrollbar_size,
                   65535);
  GD.cmd_track(draw_x_coord + draw_width - SCROLLBAR_WIDTH,
               draw_y_coord + SCROLLBAR_HALF_WIDTH,
               SCROLLBAR_WIDTH,
               draw_height - SCROLLBAR_WIDTH,
               TAG_SCROLLBAR);

  GD.RestoreContext();
}
