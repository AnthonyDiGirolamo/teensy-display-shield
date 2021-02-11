#pragma once

#include <Arduino.h>
#include <math.h>
#include <SPI.h>
#include <GD2.h>
#include "input.h"

#define FRAME_BUFFER_WIDTH 128
#define FRAME_BUFFER_HEIGHT 128
#define FRAME_CELL_COUNT 32
#define MILLIS_PER_FRAME 30

// 1 byte per L8 or RGB332, 2 bytes for RGB565
#define FRAME_BUFFER_ROW_BYTES (1 * FRAME_BUFFER_WIDTH)
#define FRAME_BUFFER_BYTES (1 * FRAME_BUFFER_WIDTH * FRAME_BUFFER_HEIGHT)

class Munch {
public:
  Munch();

  uint32_t ram_starting_address;
  uint32_t last_frame_millis;
  uint8_t munch_magic;
	uint8_t munch_base_color;
	uint8_t color_wheel_position;
  bool rendered_frames;
  uint8_t current_frame_cell;
  uint8_t *frame_buffer;
  char line_buffer[60];

  uint8_t init(uint32_t ram_address);
  uint32_t ram_end_address();
  void update();
  void color_wheel(uint8_t wheel_position);
  void draw();
};

