#include "Input.h"

void Input::begin() {
  pinMode(BUTTON1_PIN_U, INPUT_PULLUP);
  pinMode(BUTTON1_PIN_D, INPUT_PULLUP);
  pinMode(BUTTON1_PIN_L, INPUT_PULLUP);
  pinMode(BUTTON1_PIN_R, INPUT_PULLUP);
  pinMode(BUTTON2_PIN_U, INPUT_PULLUP);
  pinMode(BUTTON2_PIN_D, INPUT_PULLUP);
  pinMode(BUTTON2_PIN_L, INPUT_PULLUP);
  pinMode(BUTTON2_PIN_R, INPUT_PULLUP);
  joystick1_LR_min = 512 - 100;
  joystick1_LR_max = 512 + 100;
  joystick1_UD_min = 512 - 100;
  joystick1_UD_max = 512 + 100;
  joystick2_LR_min = 512 - 100;
  joystick2_LR_max = 512 + 100;
  joystick2_UD_min = 512 - 100;
  joystick2_UD_max = 512 + 100;
  joystick1_deadzone = .4;
  joystick2_deadzone = .4;
  joystick_dpad_diagonal_zone = M_PI * .5 * .3;
}

void Input::update_buttons() {
  buttons_last = buttons;
  buttons = digitalReadFast(BUTTON1_PIN_U) << BUTTON1_U |
    digitalReadFast(BUTTON1_PIN_D) << BUTTON1_D |
    digitalReadFast(BUTTON1_PIN_L) << BUTTON1_L |
    digitalReadFast(BUTTON1_PIN_R) << BUTTON1_R |
    digitalReadFast(BUTTON2_PIN_U) << BUTTON2_U |
    digitalReadFast(BUTTON2_PIN_D) << BUTTON2_D |
    digitalReadFast(BUTTON2_PIN_L) << BUTTON2_L |
    digitalReadFast(BUTTON2_PIN_R) << BUTTON2_R ;

  // Read
  joystick1.set(((float) analogRead(ANALOG1_LR)),
                ((float) analogRead(ANALOG1_UD)));

  // Calibration
  if (joystick1.x < joystick1_LR_min)
    joystick1_LR_min = joystick1.x;
  if (joystick1.x > joystick1_LR_max)
    joystick1_LR_max = joystick1.x;
  if (joystick1.y < joystick1_UD_min)
    joystick1_UD_min = joystick1.y;
  if (joystick1.y > joystick1_UD_max)
    joystick1_UD_max = joystick1.y;
  joystick1.x = map(joystick1.x, joystick1_LR_min, joystick1_LR_max, 0, 1024);
  joystick1.y = map(joystick1.y, joystick1_UD_min, joystick1_UD_max, 0, 1024);

  // Map within the unit circle -1.0 to 1.0
  joystick1 /= 1024;
  joystick1 *= 2;
  joystick1 -= 1.0;
  joystick1.y *= -1.0; // invert the y axis

  // Check for dpad direction
  if (joystick1.length() > joystick1_deadzone) {
    float a = joystick1.angle();
    float angle_diff = (HALF_PI - joystick_dpad_diagonal_zone) * 0.5;

    if ((a < PI && a >= PI-angle_diff)
        || (a <= -PI+angle_diff && a > -PI))
      joystick1_dpad_direction = D_RIGHT;
    // else if ()
    //   joystick1_dpad_direction = D_UP_RIGHT;
    // else if ()
    //   joystick1_dpad_direction = D_UP;
  }
  else
    joystick1_dpad_direction = 0;

  // Read
  joystick2.set(((float) analogRead(ANALOG2_LR)),
                ((float) analogRead(ANALOG2_UD)));

  // Calibration
  if (joystick2.x < joystick2_LR_min)
    joystick2_LR_min = joystick2.x;
  if (joystick2.x > joystick2_LR_max)
    joystick2_LR_max = joystick2.x;
  if (joystick2.y < joystick2_UD_min)
    joystick2_UD_min = joystick2.y;
  if (joystick2.y > joystick2_UD_max)
    joystick2_UD_max = joystick2.y;
  joystick2.x = map(joystick2.x, joystick2_LR_min, joystick2_LR_max, 0, 1024);
  joystick2.y = map(joystick2.y, joystick2_UD_min, joystick2_UD_max, 0, 1024);

  // Map within the unit circle -1.0 to 1.0
  joystick2 /= 1024;
  joystick2 *= 2;
  joystick2 -= 1.0;
  joystick2.x *= -1.0; // invert the x axis

  joystick2_dpad_direction = 0;
}

bool Input::buttons_changed() {
  return buttons != buttons_last;
}

bool Input::button_pressed(uint8_t joystick_button) {
  // BUTTON_SEL is pressed
  // !(this button == 0) and (last button == 1)
  return (!(buttons & (1<<joystick_button))
          && (buttons_last & (1<<joystick_button)));
}

bool Input::button_released(uint8_t joystick_button) {
  // BUTTON_SEL is released
  // !(this button == 1) and (last button == 0)
  return ((buttons & (1<<joystick_button))
          && !(buttons_last & (1<<joystick_button)));
}

bool Input::button_held(uint8_t joystick_button) {
  return !(buttons & (1<<joystick_button));
}
