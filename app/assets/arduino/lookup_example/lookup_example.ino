
#include <Adafruit_NeoPixel.h>

#define PIN     6
#define N_LEDS 16  // in my neopixel ring


// Declaring a Neopixel object
// Parameter 1 = number of pixels in strip total, inc indiv leds in rings
// Parameter 2 = pin number (most are valid)
// Parameter 3 = pixel type flags, add together as needed:
//   NEO_KHZ800  800 KHz bitstream (most NeoPixel products w/WS2812 LEDs)
//   NEO_KHZ400  400 KHz (classic 'v1' (not v2) FLORA pixels, WS2811 drivers)
//   NEO_GRB     Pixels are wired for GRB bitstream (most NeoPixel products)
//   NEO_RGB     Pixels are wired for RGB bitstream (v1 FLORA pixels, not v2)
// *******N.B. Mine are v2
Adafruit_NeoPixel strip = Adafruit_NeoPixel(N_LEDS, PIN, NEO_GRB + NEO_KHZ800);


// bring in lookup table, will gives us total number of frames and all pixel RGB values
#include "lookup.h"

// frame counter
int fr = 0;

long previousMillis = 0; // to store last time LEDs were updated
int interval = 39; // 40ms = 25fps, with a bit of a buffer




void setup() {
  strip.begin();

  Serial.begin(9600);

}




void loop() {

   unsigned long currentMillis = millis();

   if (currentMillis - previousMillis >= interval) {
      // Logs for checking timing precision:
      // Serial.print("current time: ");
      // Serial.println(currentMillis);
      // Serial.print("frame: ");
      // Serial.println(fr);

      // save this is a time LEDs were updated
      previousMillis = currentMillis;

//      // now update LEDs - RAM
//      for (int i = 0; i < totalFixtures; i++) {
//        uint32_t c = strip.Color(fx[i][fr][0], fx[i][fr][1], fx[i][fr][2]);
//        strip.setPixelColor(i, c);
//        strip.show();
//      };

      // now update LEDs ex PROGMEM
      for (int i = 0; i < totalFixtures; i++) {
        uint8_t r = pgm_read_byte_near(&fx[i][fr][0]);
        uint8_t g = pgm_read_byte_near(&fx[i][fr][1]);
        uint8_t b = pgm_read_byte_near(&fx[i][fr][2]);
        uint32_t c = strip.Color(r, g, b);
        strip.setPixelColor(i, c);
        strip.show();
      };

      fr++;
      if (fr == totalFrames) {
        fr = 0;
      }
   }
}
