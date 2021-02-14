// Allow printing (eg with Serial) using the stream operator
template<class T> inline Print& operator <<(Print &obj,     T arg) { obj.print(arg);    return obj; }
template<>        inline Print& operator <<(Print &obj, float arg) { obj.print(arg, 4); return obj; }

#include <SPI.h>
#include <GD2.h>

#include <TimeLib.h>

#include <stdlib.h>
#include <stdio.h>

#include "terminal.h"

#include "input.h"

#include "SystemSettings.h"
#include "Munch.h"

time_t getTeensy3Time() {
  return Teensy3Clock.get();
}


Input controller;
Terminal terminal;
SystemSettings system_settings;
Munch munch;

// Standard GD3 Chip Select Pins
#define GD3_CS 8
#define GD3_SDCS 9

// // Example custom pins
// #define GD3_CS 21
// #define GD3_SDCS 20
// #define GD3_SCLK 14
// #define GD3_MOSI 7
// #define GD3_MISO 12

void setup() {
  Serial.begin(115200);
  // while (!Serial) {}

  // // Teensy custom SPI pins
  // SPI.setMOSI(GD3_MOSI);
  // SPI.setMISO(GD3_MISO);
  // SPI.setSCK(GD3_SCLK);

  SPI.begin();

  // Gameduino3 Setup
  Serial.println("GD.begin()");
  GD.begin(~GD_STORAGE, GD3_CS, GD3_SDCS);
  // GD.begin(GD_CALIBRATE | GD_TRIM | GD_STORAGE, GD3_CS, GD3_SDCS);
  Serial.println("GD.begin() Complete");

  // Enable printf/sprintf to print floats
  // asm(".global _printf_float");

  Serial.println("GD3 Edition");

  setSyncProvider(getTeensy3Time);

  if (timeStatus()!= timeSet) {
    Serial.println("Unable to sync with the RTC");
  } else {
    Serial.println("RTC has set the system time");
  }

  controller.begin();

  // Setup the terminal. Must come after GD.begin -------------------
  terminal.begin(TEXTVGA);
  // terminal.begin(TEXT8X8);
  terminal.set_window_bg_color(0x000000);  // Background window color
  terminal.set_window_opacity(255);  // 0-255

  // Changing Fonts -------------------------------------------------
  // 8X8 Monochrome
  // terminal.set_font_8x8();
  // VGA 16-color
  terminal.set_font_vga();
  // VGA background colors are disabled by default.
  terminal.disable_vga_background_colors();
  // Enable character backgound color. Disables window color&opacity
  // terminal.enable_vga_background_colors();

  // Font changes must be followed by setting a size ---------------
  // Fullscreen
  terminal.set_size_fullscreen();
  // Custom Size
  // terminal.change_size(row_count, column_count);

  // Get FT81X first available ram address (after terminal data) ---
  // terminal.ram_end_address();

  GD.ClearColorRGB(0x000000);
  system_settings.init();
  munch.init(system_settings.ram_end_address());
}

// Display List size
uint16_t display_list_offset = 0;

// FPS and time per game loop
uint32_t delta_time_start = 0;
uint32_t delta_time_micros = 30000; // initial guess

void loop() {
  // Frame time start
  delta_time_start = micros();

  // Update Controller
  controller.update_buttons();

  // Get touchscreen inputs
  GD.get_inputs();

  // Run app update functions. e.g. current_app.update();
  munch.update();

  system_settings.update_battery_voltage();
  system_settings.update();

  // Draw Screen
  GD.Clear();

  // Draw current app.
  munch.draw();

  // Draw system_settings overlay app.
  system_settings.draw();

  // Draw FPS and Display List Usage for the previous frame.
  float delta_time = (float)delta_time_micros * 1e-6;

  sprintf(system_settings.line_buffer,
          "FPS: %.2f --- DisplayList: %3.2f%% (%u / 8192)",
          1.0 / delta_time, 100.0 * ((float)display_list_offset/8192), display_list_offset);
  // Draw white text with a black outline.
  GD.ColorRGB(BLACK);
  GD.cmd_text(0, GD.h-23,   18, 0, system_settings.line_buffer);
  GD.cmd_text(2, GD.h-23,   18, 0, system_settings.line_buffer);
  GD.cmd_text(1, GD.h-23-1, 18, 0, system_settings.line_buffer);
  GD.cmd_text(1, GD.h-23+1, 18, 0, system_settings.line_buffer);
  GD.ColorRGB(WHITE);
  GD.cmd_text(1, GD.h-23,   18, 0, system_settings.line_buffer);

  // Get the size (current position) of the display list.
  GD.finish();
  display_list_offset = GD.rd16(REG_CMD_DL);

  GD.swap();

  // Frame time end.
  delta_time_micros = micros() - delta_time_start;
}

