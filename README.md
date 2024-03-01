# SUBVIXEN

Generate code from video using pixel mapping

## A Proof of Concept:

I created Subvixen as a proof-of-concept for an in-browser hobbyist pixel-mapper: an app that could take a video, take a drawing of points on that video, sample the RGB data at each point, and generate a lookup table and the necessary program code to provide those same RGB values to hardware via Arduino.

![Subvixen quick demo](http://res.cloudinary.com/mrmy/image/upload/v1517406335/demo_t5whon.gif)

## Built with:

- JavaScript, inc. jQuery (v1.12.4)
- Ruby (v2.4.2) on Rails (v5.1.4) -> Updated to Ruby (v3.2.2) on Rails (v7.0)
- HTML5, utilising native video and canvas elements
- CSS3, SASS

## Deployed on Heroku:

Check it out and start generating your own code from video at [https://subvixen.herokuapp.com/](https://subvixen.herokuapp.com/)

## About:

### How to use Subvixen in 99 seconds

[Go to the Subvixen walkthrough video](https://youtu.be/ZCpgYL-KHDM)

### When would I use Subvixen?

Subvixen was designed for pixel-mapping applications, the most obvious of which is programming collections of LEDs.

Some reasons you might find yourself wanting to use pixel-mapping:

- Your effect is visually or mathematically intricate.

  You might want an effect that is very complex, random or hard to code... but easy to represent (or already exists) as a video.

- Your effect is spatially aware.

  You might want to achieve effects like chases that respond correctly to the real-world spacing of your LEDs, but it could be complex or inflexible to write your code taking into account irregular spacing.

- You don't think in code.

  It might be quicker for you to make a video than it is to write code.

### What are the limitations of Subvixen?

Subvixen is currently generating code for Neopixel LEDs and the Arduino IDE (in C). However, the lookup table generated within the code could easily be pulled out and used in other implementations.

## FUTURE VERSIONS:

Future features that would take Subvixen from proof-of-concept to a richer app include:

- Test coverage.

- Refactoring, especially with extending/scaling in mind; for example, this could be refactored with a more OOP approach, that could then make it easier to extend and unit test.

- More sophisticated Arduino code, to account for other hardware types and data compression for example. This should involve using a different data structure than a multi-dimensional array.

- Better responsive design

- Option of down-sampling RGB values to allow for greater compression, since subtle color differences aren't perceivable on LEDs

- User logins, to allow users to save their progress as well as private videos and rig configurations

- Limit uploading of videos to only within user logins, so the public library isn't open to trolls

- Handle larger video sizes (currently 40MB limit)

- Handle audio, for use cases where the pixel-mapped hardware might be synced with music

- Improved precision of Arduino code timing, so if a user has synchronised video (and therefore the code) with audio, the hardware will stay in sync IRL.

- Improved interface for changing fixture #'s - the current idea is that a user can change a fixture's number to any number, and the lookup table is generated in fixture # order. It allows duplicate numbers although it highlights the input field in the moment a user enters a duplicate. I made it a flexible system to allow for people's different rig/circuit numbering systems, but it needs to be fine-tuned.

- A more comprehensive public video library

- Basic video manipulation features in the browser, such as speed changes, crops, color adjustments or basic trims and edits

- A more comprehensive preset rig library

- A more fully-featured rig drawing tool, which could include a shapes library, graphing, mirroring over more axes, and an import feature

- Drag and drop fixture adjustments

- Allow repositioning groups of fixtures or entire rig as one unit

- Tweak the overlay view to allow for overlapping fixture icons

- Support code generation in other languages

- Include option to tweak overall pixel brightness

- Add tags to videos for better searching

- Allow users to change color of fixture icons on the stage to give better visibility
