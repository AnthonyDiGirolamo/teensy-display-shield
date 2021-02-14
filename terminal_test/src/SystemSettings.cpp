#include "SystemSettings.h"

extern GDClass GD;
extern GD2Terminal terminal;
extern Input controller;

SystemSettings::SystemSettings(void) {
}

void SystemSettings::init(void) {
  pinMode(BATTERY_VOLTAGE_DIVIDER_PIN, INPUT);

  brightness_slider_value = 65535;
  set_backlight_brightness(128);
  set_rotation(LANDSCAPE);

  last_terminal_refresh = 0;
}

uint32_t SystemSettings::ram_end_address() {
  return terminal.ram_end_address();
}

void SystemSettings::set_rotation(Rotation r) {
  // Screen Rotation
  // 0, 1 - Landscape
  // 2, 3 - Portrait
  screen_rotation = r;
  GD.cmd_setrotate(r);
}

// Backlight PWM: 0-128
void SystemSettings::set_backlight_brightness(uint8_t pwm) {
  uint8_t new_screen_brightness;
  if (pwm > 128)
    new_screen_brightness = 128;
  else if (pwm < 1)
    new_screen_brightness = 1;
  else
    new_screen_brightness = pwm;
  if (new_screen_brightness != screen_brightness) {
    screen_brightness = new_screen_brightness;
    screen_brightness_updated = true;
    GD.cmd_regwrite(REG_PWM_DUTY, screen_brightness);
  }
}

void SystemSettings::update_battery_voltage() {
  battery_voltage = ((float) analogRead(BATTERY_VOLTAGE_DIVIDER_PIN)/1024)*3.3*2;
}

// Handle inputs
void SystemSettings::update() {
  switch (GD.inputs.track_tag & 0xff) {
  case TAG_BRIGHTNESS_SLIDER: // Check Brightness Slider
    brightness_slider_value = GD.inputs.track_val;
    set_backlight_brightness(floor(((float) brightness_slider_value / 65535.0) * 128));
    break;
  // Analog Stick Deadzone Sliders
  // case TAG_DEADZONE1_SLIDER:
  //   controller.joystick1_deadzone = (float) GD.inputs.track_val / 65535.0;
  //   break;
  // case TAG_DEADZONE2_SLIDER:
  //   controller.joystick2_deadzone = (float) GD.inputs.track_val / 65535.0;
  //   break;
  case TAG_SCROLLBAR: // Terminal Scrollbar
    terminal.update_scrollbar_position(GD.inputs.track_val);
    break;
  }
}

// Render UI
void SystemSettings::draw() {
  // Clear terminal history
  // terminal.reset();

  // Every 5 seconds print the time and battery voltage
  if (millis() > last_terminal_refresh + 1000) {
    // Print time
    terminal.foreground_color = TERMINAL_VGA_BRIGHT_MAGENTA;
    terminal.background_color = TERMINAL_VGA_BRIGHT_CYAN;
    sprintf(line_buffer, "[Time] ");
    terminal.append_string(line_buffer);

    terminal.foreground_color = TERMINAL_VGA_WHITE;
    terminal.background_color = TERMINAL_VGA_BLACK;
    sprintf(line_buffer, "%02d:%02d:%02d ", hour(), minute(), second());
    terminal.append_string(line_buffer);

    terminal.foreground_color = TERMINAL_VGA_BRIGHT_WHITE;
    sprintf(line_buffer, "%04d-%02d-%02d\n", year(), month(), day());
    terminal.append_string(line_buffer);

    // Print battery voltage
    terminal.foreground_color = TERMINAL_VGA_BRIGHT_GREEN;
    sprintf(line_buffer, "[Battery] %1.2f V\n", battery_voltage);
    terminal.append_string(line_buffer);

    last_terminal_refresh = millis();
  } // end last_terminal_refresh check

  // Check for brightness change
  if (screen_brightness_updated) {
    terminal.foreground_color = TERMINAL_VGA_BRIGHT_YELLOW;
    sprintf(line_buffer, "[Brightness] ");
    terminal.append_string(line_buffer);

    terminal.foreground_color = TERMINAL_VGA_BRIGHT_WHITE;
    sprintf(line_buffer, "%3.1f%%\n", (float)screen_brightness * 0.78125);
    terminal.append_string(line_buffer);

    screen_brightness_updated = false;
  }

  // Check for button presses
  if (controller.buttons_changed()) {
    sprintf(line_buffer, "[Buttons] ");
    terminal.foreground_color = TERMINAL_VGA_BRIGHT_BLUE;
    terminal.append_string(line_buffer);
    sprintf(line_buffer, "%c%c%c%c%c%c%c%c\n", BYTE_TO_BINARY(controller.buttons));
    terminal.foreground_color = TERMINAL_VGA_BRIGHT_CYAN;
    terminal.append_string(line_buffer);
    if ((controller.buttons & 1) == 0) {
      terminal.ring_bell();
    }
  }

  int position_x = 0, position_y = 0;

  // Activates and uses bitmap_handle 14 & 13
  // Be sure to reset the bitmap_handle afterwards
  terminal.draw(position_x, position_y);

  GD.ColorRGB(COLOR_WHITE);

  // Draw Brightness Slider
  GD.Tag(TAG_BRIGHTNESS_SLIDER);
  GD.cmd_slider(8, 2+1*16, GD.w - 2*16, 8, OPT_FLAT,
                brightness_slider_value, 65535);
  GD.cmd_track(8, 2+1*16, GD.w - 2*16, 8, TAG_BRIGHTNESS_SLIDER);
}
