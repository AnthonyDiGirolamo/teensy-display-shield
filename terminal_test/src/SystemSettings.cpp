#include "SystemSettings.h"

extern GDClass GD;
extern Terminal terminal;
extern Input controller;

SystemSettings::SystemSettings(void) {
}

void SystemSettings::init(void) {
  pinMode(BATTERY_VOLTAGE_DIVIDER_PIN, INPUT);

  brightness_slider_value = 65535;
  set_backlight_brightness(128);
  set_rotation(LANDSCAPE);

  // terminal.set_font_8x8();
  int rows = 14, columns = 42;
  terminal.set_font_vga();
  terminal.change_size(14, 42);

  last_terminal_refresh = 0;

  // Use terminal background bitmap to draw the system settings background with
  // a different bitmaphandle
  GD.BitmapHandle(SYSTEM_SETTINGS_BACKGROUNG_BITMAP);
  GD.BitmapSource(terminal.bitmap_byte_size());
  GD.BitmapLayout(RGB565, 2, 1);
  GD.BitmapSize(NEAREST, REPEAT, REPEAT,
                8 * columns, terminal.line_pixel_height * rows);
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
  // clear scrollback
  // terminal.reset();

  if (millis() > last_terminal_refresh + 5000) {
    // Print time
    terminal.foreground_color = TERMINAL_VGA_BRIGHT_MAGENTA;
    sprintf(line_buffer, "[Time] ");
    terminal.append_string(line_buffer);

    terminal.foreground_color = TERMINAL_VGA_WHITE;
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

  if (screen_brightness_updated) {
    terminal.foreground_color = TERMINAL_VGA_BRIGHT_YELLOW;
    sprintf(line_buffer, "[Brightness] ");
    terminal.append_string(line_buffer);

    terminal.foreground_color = TERMINAL_VGA_BRIGHT_WHITE;
    sprintf(line_buffer, "%3.1f%%\n", (float)screen_brightness * 0.78125);
    terminal.append_string(line_buffer);

    screen_brightness_updated = false;
  }

  // Analog Stick Debug
  /*
  sprintf(line_buffer, "Joystick 1 Deadzone: %3.1f%%\n", 100.0 * controller.joystick1_deadzone);
  // GD.cmd_text(10, 4, 18, 0, line_buffer);
  terminal.foreground_color = TERMINAL_VGA_BRIGHT_WHITE;
  terminal.append_string(line_buffer);
  terminal.append_character('\n');

  sprintf(line_buffer, "Joystick 2 Deadzone: %3.1f%%\n", 100.0 * controller.joystick2_deadzone);
  // GD.cmd_text(10, 4, 18, 0, line_buffer);
  terminal.foreground_color = TERMINAL_VGA_BRIGHT_WHITE;
  terminal.append_string(line_buffer);

  // sprintf(line_buffer, "A1: x: %.3f  %u %u %u\n", controller.joystick1.x, controller.joystick1_LR_min, analogRead(A15), controller.joystick1_LR_max);
  sprintf(line_buffer, "A1: %.3f\n", controller.joystick1.angle());
  terminal.foreground_color = TERMINAL_VGA_BRIGHT_CYAN;
  terminal.append_string(line_buffer);

  // sprintf(line_buffer, "    y: %.3f  %u %u %u\n", controller.joystick1.y, controller.joystick1_UD_min, analogRead(A14), controller.joystick1_UD_max);
  sprintf(line_buffer, "    %d\n", controller.joystick1_dpad_direction);
  terminal.foreground_color = TERMINAL_VGA_CYAN;
  terminal.append_string(line_buffer);

  sprintf(line_buffer, "A2: %.3f\n", controller.joystick2.angle());
  // sprintf(line_buffer, "A2: x: %.3f  %u %u %u\n", controller.joystick2.x, controller.joystick2_LR_min, analogRead(A11), controller.joystick2_LR_max);
  terminal.foreground_color = TERMINAL_VGA_BRIGHT_BLUE;
  terminal.append_string(line_buffer);

  // sprintf(line_buffer, "    y: %.3f  %u %u %u\n", controller.joystick2.y, controller.joystick2_UD_min, analogRead(A10), controller.joystick2_UD_max);
  sprintf(line_buffer, "    %d\n", controller.joystick2_dpad_direction);
  terminal.foreground_color = TERMINAL_VGA_BLUE;
  terminal.append_string(line_buffer);
  */


  if (controller.buttons_changed()) {
    sprintf(line_buffer, "[Buttons] ");
    terminal.foreground_color = TERMINAL_VGA_BRIGHT_BLUE;
    terminal.append_string(line_buffer);
    sprintf(line_buffer, "%c%c%c%c%c%c%c%c\n", BYTE_TO_BINARY(controller.buttons));
    terminal.foreground_color = TERMINAL_VGA_BRIGHT_CYAN;
    terminal.append_string(line_buffer);
  }

  // send partial line to ft810 ram
  terminal.upload_to_graphics_ram();

  int position_x = 12, position_y = 12;
  // Draw SystemSettings Background
  GD.ColorRGB(BLACK);
  GD.Begin(BITMAPS);
  GD.ColorA(220);
  GD.Vertex2ii(position_x, position_y, SYSTEM_SETTINGS_BACKGROUNG_BITMAP);
  GD.ColorA(255);

  // Activates and uses bitmap_handle 14 & 13
  // Be sure to reset the bitmap_handle afterwards
  terminal.draw(position_x, position_y);

  // Draw joystick background circles
  /*
  vec2f analog1_center(2*GD.w/4, 3*GD.h/4);
  vec2f analog2_center(3*GD.w/4, 3*GD.h/4);
  analog1_center *= 16;
  analog2_center *= 16;

  GD.ColorRGB(HEATHER);
  GD.Begin(POINTS);
  GD.PointSize(16 * ANALOG_POINT_SIZE);
  GD.Vertex2f(analog1_center.x, analog1_center.y);
  GD.Vertex2f(analog2_center.x, analog2_center.y);

  // Draw joystick deadzones
  vec2f analog1_position = controller.joystick1 * ANALOG_POINT_SIZE;
  vec2f analog2_position = controller.joystick2 * ANALOG_POINT_SIZE;

  GD.ColorRGB(BLACK);
  GD.PointSize(16 * ANALOG_POINT_SIZE * controller.joystick1_deadzone);
  GD.Vertex2f(analog1_center.x, analog1_center.y);
  GD.PointSize(16 * ANALOG_POINT_SIZE * controller.joystick2_deadzone);
  GD.Vertex2f(analog2_center.x, analog2_center.y);

  // Draw joystick current positions
  GD.PointSize(16 * 6);

  if (analog1_position.length() > ANALOG_POINT_SIZE * controller.joystick1_deadzone)
    GD.ColorRGB(CORNFLOWER);
  else
    GD.ColorRGB(RED);

  analog1_position *= -16;
  analog1_position += analog1_center;
  GD.Vertex2f(analog1_position.x, analog1_position.y);

  if (analog2_position.length() > ANALOG_POINT_SIZE * controller.joystick2_deadzone)
    GD.ColorRGB(CORNFLOWER);
  else
    GD.ColorRGB(RED);

  analog2_position *= -16;
  analog2_position += analog2_center;
  GD.Vertex2f(analog2_position.x, analog2_position.y);
  */

  GD.ColorRGB(WHITE);

  // Draw Brightness Slider
  GD.Tag(TAG_BRIGHTNESS_SLIDER);
  GD.cmd_slider(8, 2+1*16, GD.w - 2*16, 8, OPT_FLAT,
                brightness_slider_value, 65535);
  GD.cmd_track(8, 2+1*16, GD.w - 2*16, 8, TAG_BRIGHTNESS_SLIDER);

  // Analog Stick Deadzone Sliders
  // GD.Tag(TAG_DEADZONE1_SLIDER);
  // GD.cmd_slider(8, 2+3*16, GD.w - 2*16, 8, OPT_FLAT,
  //               (uint16_t) floor(controller.joystick1_deadzone * 65535), 65535);
  // GD.cmd_track(8, 2+3*16, GD.w - 2*16, 8, TAG_DEADZONE1_SLIDER);

  // GD.Tag(TAG_DEADZONE2_SLIDER);
  // GD.cmd_slider(8, 2+5*16, GD.w - 2*16, 8, OPT_FLAT,
  //               (uint16_t) floor(controller.joystick2_deadzone * 65535), 65535);
  // GD.cmd_track(8, 2+5*16, GD.w - 2*16, 8, TAG_DEADZONE2_SLIDER);
}
