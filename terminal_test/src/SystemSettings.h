#pragma once

#include <Arduino.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <SPI.h>
#include <GD2.h>
#include <TimeLib.h>
#include "GD2Terminal.h"
#include "input.h"

#define BATTERY_VOLTAGE_DIVIDER_PIN A8

#define BYTE_TO_BINARY_PATTERN "%c%c%c%c%c%c%c%c"
#define BYTE_TO_BINARY(byte)  \
  (byte & 0x80 ? '1' : '0'), \
  (byte & 0x40 ? '1' : '0'), \
  (byte & 0x20 ? '1' : '0'), \
  (byte & 0x10 ? '1' : '0'), \
  (byte & 0x08 ? '1' : '0'), \
  (byte & 0x04 ? '1' : '0'), \
  (byte & 0x02 ? '1' : '0'), \
  (byte & 0x01 ? '1' : '0')


#define TAG_BRIGHTNESS_SLIDER 1
#define TAG_DEADZONE1_SLIDER 2
#define TAG_DEADZONE2_SLIDER 3
#define ANALOG_POINT_SIZE 48

class SystemSettings {
public:
  SystemSettings();

  enum Rotation {
    LANDSCAPE,
    LANDSCAPE_REVERSED,
    PORTRAIT,
    PORTRAIT_REVERSED,
  };

  char line_buffer[121];
  uint8_t screen_brightness;
  bool screen_brightness_updated;
  Rotation screen_rotation;
  float battery_voltage;
  uint16_t brightness_slider_value;
  uint32_t last_terminal_refresh;

  void set_rotation(Rotation r);
  void set_backlight_brightness(uint8_t pwm);
  void init();
  uint32_t ram_end_address();
  void update_battery_voltage();
  void update();
  void draw();
};

