#ifndef __TERMINAL_H__
#define __TERMINAL_H__

#include <Arduino.h>
#include <SPI.h>
#include <GD2.h>

// DB32 Pallete
// https://github.com/geoffb/dawnbringer-palettes

#define BLACK            0x000000  // #000000
#define VALHALLA         0x222034  // #222034
#define LOULOU           0x45283c  // #45283c
#define OILED_CEDAR      0x663931  // #663931
#define ROPE             0x8f563b  // #8f563b
#define TAHITI_GOLD      0xdf7126  // #df7126
#define TWINE            0xd9a066  // #d9a066
#define PANCHO           0xeec39a  // #eec39a

#define GOLDEN_FIZZ      0xfbf236  // #fbf236
#define ATLANTIS         0x99e550  // #99e550
#define RAINFOREST       0x6abe30  // #6abe30
#define ELF_GREEN        0x37946e  // #37946e
#define DELL             0x4b692f  // #4b692f
#define VERDIGRIS        0x524b24  // #524b24
#define OPAL             0x323c39  // #323c39
#define DEEP_KOAMARU     0x3f3f74  // #3f3f74

#define VENICE_BLUE      0x306082  // #306082
#define ROYAL_BLUE       0x5b6ee1  // #5b6ee1
#define CORNFLOWER       0x639bff  // #639bff
#define VIKING           0x5fcde4  // #5fcde4
#define LIGHT_STEEL_BLUE 0xcbdbfc  // #cbdbfc
#define WHITE            0xffffff  // #ffffff
#define HEATHER          0x9badb7  // #9badb7
#define TOPAZ            0x847e87  // #847e87

#define DIM_GRAY         0x696a6a  // #696a6a
#define SMOKEY_ASH       0x595652  // #595652
#define CLAIRVOYANT      0x76428a  // #76428a
#define RED              0xac3232  // #ac3232
#define MANDY            0xd95763  // #d95763
#define PLUM             0xd77bba  // #d77bba
#define STINGER          0x8f974a  // #8f974a
#define BROWN            0x8a6f30  // #8a6f30

#define TERMINAL_KEY_BELL 7
#define TERMINAL_KEY_BACKSPACE 8
#define TERMINAL_KEY_CR 13
#define TERMINAL_KEY_LF 10
#define TERMINAL_KEY_SPACE 32
#define TERMINAL_KEY_ESC 27
#define TERMINAL_KEY_DEL 127

#define SCROLLBAR_WIDTH 20
#define SCROLLBAR_HALF_WIDTH 10

#define TAG_SCROLLBAR 201

#define LINE_FULL 0
#define CHAR_READ 1

#define TERMINAL_VGA_BLACK   0
#define TERMINAL_VGA_BLUE    1
#define TERMINAL_VGA_GREEN   2
#define TERMINAL_VGA_CYAN    3
#define TERMINAL_VGA_RED     4
#define TERMINAL_VGA_MAGENTA 5
#define TERMINAL_VGA_YELLOW  6
#define TERMINAL_VGA_WHITE   7
#define TERMINAL_VGA_BRIGHT_BLACK   8
#define TERMINAL_VGA_BRIGHT_BLUE    9
#define TERMINAL_VGA_BRIGHT_GREEN   10
#define TERMINAL_VGA_BRIGHT_CYAN    11
#define TERMINAL_VGA_BRIGHT_RED     12
#define TERMINAL_VGA_BRIGHT_MAGENTA 13
#define TERMINAL_VGA_BRIGHT_YELLOW  14
#define TERMINAL_VGA_BRIGHT_WHITE   15

#define TERMINAL_BITMAP_HANDLE_TEXT 14
#define TERMINAL_BITMAP_HANDLE_BACKGROUND 13

class Terminal {
public:
  Terminal();

  uint16_t cursor_index;
  uint16_t line_count;
  uint16_t last_line_address;
  uint16_t lines_per_screen;
  uint8_t line_pixel_height;
  uint8_t characters_per_line;
  uint8_t bytes_per_line;
  uint8_t current_font;
  bool background_colors_enabled;
  uint8_t foreground_color;
  uint8_t background_color;
  uint16_t scrollback_length;
  float lines_per_screen_percent;
  uint16_t scrollbar_size;
  uint16_t scrollbar_size_half;
  uint16_t scrollbar_position;
  float scrollbar_position_percent;
  uint16_t scroll_offset;
  int16_t draw_x_coord;
  int16_t draw_y_coord;
  uint16_t draw_width;
  uint16_t draw_height;

  uint16_t bell;

  void begin(uint8_t initial_font_mode);
  void reset();
  void set_font_8x8();
  void set_font_vga();
  uint32_t bitmap_byte_size();
  uint32_t ram_end_address();
  void change_size(uint16_t rows, uint16_t columns);
  void enable_vga_background_colors();
  void disable_vga_background_colors();
  void ring_bell();
  uint8_t append_character(char newchar);
  void append_string(const char* str);
  void new_line();
  void upload_to_graphics_ram();
  void update_scrollbar_position(uint16_t new_position);
  void draw();
  void draw(int16_t startx, int16_t starty);
 private:
  void erase_line_buffer();
  void put_char(char newchar);
  void set_scrollbar_handle_size();
};

#endif
