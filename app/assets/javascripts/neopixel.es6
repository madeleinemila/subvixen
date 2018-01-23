const neopixel = {



  startString: `#include &lt;Adafruit_NeoPixel.h&gt;<br /><br /><span class="comment">// Please note below where to adjust for the pin and Neopixel type being used in your circuit<br />// Default: PIN 6, Neopixel v2<br /><br /><br /><br />// ********* BEGIN LOOKUP TABLE *********</span><br /><br />`,


  endString: `<br /><span class="comment">// ********** End Lookup Table **********</span><br /><br /><br /><br />
  <span class="comment">// ********* ADJUST PIN FOR YOUR CIRCUIT *********</span></br />
  #define PIN     6<br /><br />
  #define N_LEDS totalFixtures<br /><br />
  <span class="comment">// ********* ADJUST FOR YOUR NEOPIXELS *********</span><br />
  Adafruit_NeoPixel strip = Adafruit_NeoPixel(N_LEDS, PIN, NEO_GRB + NEO_KHZ800);<br/><br /><br />
  <span class="comment">// frame counter</span><br />
  int fr = 0;<br /><br />
  long previousMillis = 0; <span class="comment">// to store last time LEDs were updated</span><br /><br />
  int interval = 39; <span class="comment">// 40ms = 25fps, with 1ms off for timing</span><br /><br />
  void setup() {<br />
  &nbsp;&nbsp;strip.begin();<br />
  }<br /><br />
  void loop() {<br />
  &nbsp;&nbsp;unsigned long currentMillis = millis();<br />
  &nbsp;&nbsp;if (currentMillis - previousMillis >= interval) {<br />
  &nbsp;&nbsp;&nbsp;&nbsp;previousMillis = currentMillis;<br />
  &nbsp;&nbsp;&nbsp;&nbsp;for (int i = 0; i < totalFixtures; i++) {<br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;uint8_t r = pgm_read_byte_near(&fx[i][fr][0]);<br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;uint8_t g = pgm_read_byte_near(&fx[i][fr][1]);<br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;uint8_t b = pgm_read_byte_near(&fx[i][fr][2]);<br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;uint32_t c = strip.Color(r, g, b);<br/>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;strip.setPixelColor(i, c);<br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;strip.show();<br />
  &nbsp;&nbsp;&nbsp;&nbsp;};<br /><br />
  &nbsp;&nbsp;&nbsp;&nbsp;fr++;<br />
  &nbsp;&nbsp;&nbsp;&nbsp;if (fr == totalFrames) {<br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fr = 0;<br />
  &nbsp;&nbsp;&nbsp;&nbsp;}<br />
  &nbsp;&nbsp;}<br />
  }<br />`,
};
