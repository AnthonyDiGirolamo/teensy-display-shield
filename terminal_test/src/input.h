#pragma once

#include <Arduino.h>
#include "vec2.h"

#define ANALOG1_UD A14
#define ANALOG1_LR A15
#define ANALOG2_UD A10
#define ANALOG2_LR A11

#define BUTTON1_PIN_U 2
#define BUTTON1_PIN_D 3
#define BUTTON1_PIN_L 4
#define BUTTON1_PIN_R 5

#define BUTTON2_PIN_U 23
#define BUTTON2_PIN_D 31
#define BUTTON2_PIN_L 30
#define BUTTON2_PIN_R 41

#define BUTTON1_U 7
#define BUTTON1_D 6
#define BUTTON1_L 5
#define BUTTON1_R 4
#define BUTTON2_U 3
#define BUTTON2_D 2
#define BUTTON2_L 1
#define BUTTON2_R 0

#define D_NONE       0
#define D_RIGHT      1
#define D_UP_RIGHT   2
#define D_UP         3
#define D_UP_LEFT    4
#define D_LEFT       5
#define D_DOWN_LEFT  6
#define D_DOWN       7
#define D_DOWN_RIGHT 8

// +pi = right
// +1/2pi = up
// 0 = left
// -1/2pi = down
// -pi = right

// uint32_t button_mask = (1 << BUTTON_RIGHT) | (1 << BUTTON_DOWN) | (1 << BUTTON_LEFT) | (1 << BUTTON_UP) | (1 << BUTTON_SEL);

class Input {
 public:
  volatile uint8_t buttons = 0;
  volatile uint8_t buttons_last = 0;
  uint16_t joystick1_LR_min;
  uint16_t joystick1_LR_max;
  uint16_t joystick1_UD_min;
  uint16_t joystick1_UD_max;
  uint16_t joystick2_LR_min;
  uint16_t joystick2_LR_max;
  uint16_t joystick2_UD_min;
  uint16_t joystick2_UD_max;
  vec2f joystick1;
  vec2f joystick2;
  float joystick1_deadzone;
  float joystick2_deadzone;
  float joystick_dpad_diagonal_zone;
  uint8_t joystick1_dpad_direction;
  uint8_t joystick2_dpad_direction;

  void begin();
  void update_buttons();
  bool buttons_changed();
  bool button_pressed(uint8_t joystick_button);
  bool button_released(uint8_t joystick_button);
  bool button_held(uint8_t joystick_button);
  /* float joystick_direction(); */
  // use joystick1.angle() or
  //     joystick2.angle()

};
