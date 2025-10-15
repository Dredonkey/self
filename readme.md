Self
====

This fork contains a demo of the primitive maker, showing how one can use SDL3 from within Self. This has only been tested on linux.

### How to run the demo
Skip step 5 if you are using the snapshot I provided in discord.
1. Clone this repo: `git clone --depth 1 https://github.com/Dredonkey/self.git` (You must clone because `git describe --tags --dirty` is ran during the build process.)
2. Install 32 bit sdl libraries if you don't have them.
3. Build the vm as you normally would (objects/build.sh shows how to do it if you don't know how, you should also reference the [Self handbook](https://handbook.selflanguage.org/2024.1/build.html).).
4. Cd into `objects` and load a snapshot containing at least a basic world, it can also have morphic loaded. Make sure to use the Self binary you just built, it will be located in build/vm/Self.
5. Load the demo into the world by evaluating `'ui2/paint.self' runScript. 'glue1/glue1.self' runScript. 'glue/glue1_wrappers.self' runScript.`.
6. Evaluate `sdl demo start` and watch it go! (or crash and burn...)

If you try this in a morphic world, you can actually edit the methods in `sdl demo` as it is running.
Try changing the string that is drawn to the screen.
Depending on your setup, morphic will stop responding if the sdl window is not visible, so watch out for that. (This doesnt happen for me on kde plasma but happens on labwc, for example.)

### QOL changes
I also made a couple of nice QOL changes that are present in this branch. You need to file in the changed modules in this repo if you want to use them. If you don't have xsel installed, don't file in xlib.self.
* I added system wide clipboard support to morphic, it just uses a utility named "xsel" in a subprocess, so it's the most naive way of doing this, and definitely not a permanent solution, but hey, it works! You will need to make sure you have xsel installed, though.
* I changed morphic to consider the alt key to be the same as the meta key, this lets you use some nice shortcuts that normally conflict with global shortcuts. If you get a copy of the factory morph it has a panel listing some of the shortcuts. A nice one it doesn't list is meta+arrow keys for moving around the world.