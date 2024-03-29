HEX2UIColor OS X Service
===================

HEX2UIColor OS X Service lets you convert #RRGGBB (HEX) colour strings to UIColor declarations, in two clicks, from your contextual menu.

This is useful for web developers (who are used to the #RRGGBB web colour format) working on Cocoa [Touch] applications, which requre colours to be defined in a specific UIColor format.

Example:

```
#FEB157   →   [UIColor colorWithRed:0.996 green:0.694 blue:0.341 alpha:1]
```

## Installation

### Easy way

Download [this repo’s ZIP](https://github.com/egukin/hex2uicolor/archive/master.zip) and grab the `.workflow` file. Drag and drop it into your `~/Libraries/Services/` directory. Done.

### Geek way

Grab the latest code from this repo (`hex2uicolor.sh`). Launch Automator and choose to create a new Service.

![pic 1](http://f.cl.ly/items/0Y3Z0a13370n2t0Z2J0w/Screen%20Shot%202013-01-05%20at%206.35.08%20PM.png)

Make sure to tick `Output replaces selected text`.

![pic 2](http://f.cl.ly/items/2Z3Z0r2x1j3Z3L352s0a/Screen%20Shot%202013-01-05%20at%206.35.28%20PM.png)

Search for the `Run Shell Script` action in the sidebar.

![pic 3](http://f.cl.ly/items/0G1P112o1j0e0E3E0j3n/Screen%20Shot%202013-01-05%20at%206.41.26%20PM.png)

Drag and drop the action into the main area. Make sure to select the `/bin/bash` shell and change `Pass input` to `as arguments`.

![pic 4](http://f.cl.ly/items/3k3D0n0K1b0R3M0w0K2V/Screen%20Shot%202013-01-05%20at%206.41.39%20PM.png)

Replace the code with contents of `hex2uicolor.sh`.

![pic 5](http://f.cl.ly/items/0L2b2X212m3W1m1v2i1R/Screen%20Shot%202013-01-05%20at%206.42.04%20PM.png)

Save the workflow and give it a name of your liking. Done.

## Usage

Once the service is properly installed, the contextual menu of any selected text will contain the `HEX to UIColor` option. Click it. Given that the text is a proper HEX colour value (hex2uicolor currently supports `#RRGGBB` and `RRGGBB` formats only), it will get replaced with a nice and clean UIColor declaration.

## License

Copyright (c) 2013 Arnold Sakhnov

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
