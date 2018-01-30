# SUBVIXEN

Generate code from video using pixel mapping

## Built with:

- JavaScript, inc. jQuery (v1.12.4)
- Ruby (v2.4.2) on Rails (v5.1.4)
- HTML5, utilising native video and canvas elements
- CSS3

## Deployed on Heroku:

Check it out and start generating your own code from video at [http://subvixen.herokuapp.com/](http://subvixen.herokuapp.com/)

## About:

### When would I use Subvixen?

Subvixen was designed for pixel-mapping applications, the most obvious of which is programming collections of LEDs.

Some reasons you might find yourself wanting to use pixel-mapping:

- Your effect is visually or mathematically intricate.

 ...You might want an effect that is very complex, random or hard to code... but easy to represent (or already exists) as a video.

- Your effect is spatially aware.

 ...You might want to achieve effects like chases that respond correctly to the real-world spacing of your LEDs, but it could be complex or inflexible to write your code taking into account irregular spacing.

- You don't think in code.

 ...It might be quicker for you to make a video than it is to write code.


### What are the limitations of Subvixen?

Subvixen is currently generating code for Neopixel LEDs and the Arduino IDE (in C). However, the lookup table generated within the code could easily be pulled out and used in other implementations.
