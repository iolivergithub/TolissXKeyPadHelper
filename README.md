# TolissXKeyPadHelper
A simple X-KeyPad layout and lua file for some common functions in the Toliss A321 to make flying a little bit easier. Please read the following 3 sections carefully:

   * Installation
   * Disclaimer
   * License
   * Instructions

## Installation

Firstly you require:
   * XPlane 12
   + The Toliss A321 ( v1.7+ ) for XPlane 12
   + XKeyPad ( v1.6.1 or better )
   + FlyWithLuaNG ( v2.8.XX NG )

You now have to place the 3 files `X-Keys_a321_StdDef.jaon`, `X-Keys_a321.json` and `X-Keys_a321_StdDef.ini`  in your Toliss A321 directory, which should be in `X-Plane12\Aurcraft\TolissA321_V1p7`  (NB: the specific name ofthe TolissA321 directory does change with versions, but the lastest iv V1p7).

Then place the file `TolissCustom.lua` into the FlyWithLua scripts directory which should be `X-Plane 12\Resources\plugins\FlyWithLua\Scripts`

NB: This might work with other Toliss aircraft like the A319, A320 and A330, maybe even the A340...I have no idea. YMMV. Good luck (see Disclaimer)

Start X-Plane 12.

## Disclaimer

Tested on *my* machine only. No guarantees that it will work on yours and I'm not responsible for any damange caused directly or indirectly by these scripts nor by your actions. If you find a bug (and there might be) raise an Issue on the relevant Github page.

Similarly if you have an idea or want to contribute, write something to the Github Issues. No guarantees that I'll do something, but always open to ideas. NB: read the LICENSE file too!

##

Please read the LICENSE file. This software is released under GPLv3.

## Instructions

This panel has two parts, the main panel and the additional panel (there are example screenshots + a nice Toliss A3321 at the end)

### Main Panel
This is where you'll spend most of your time. It is split into various sections. It tries to adhere to the dark cockpit idea, eg: PACK1 is ON, if the button is black and OFF is the button is white; similar convention is applied elsewhere. Other colours are used to try to mimick the Airbus cockpit colour coding philosophy. Grey to used to denote a button or switch.

   * Cabin Calls
   * Packs
   * APU and Probe Heat
   * Ext Power and Dual Cooling (the latter only working if you are using a Neo aircraft)
   * Lights, ie: strobes, landing lights etc
   * Seats and "Wifi"
   * A large block corresponding to the ECAM functions
   * TCAS
   * Predictive Wind Shear and Break Fan
   * Convenience functions for passenger and cargo doors
   * Ground functions
   * ADIRU and ISCS

The lighting functions are modified using the upper and lower half of the grey buttons to change the state. As you do this, the text on the buttons will change. Some buttons have more than 2 states, eg: Landing lights are retracted, off and on.

Seat belts and Wifi show green when they are in the most safe state, otherwise amber or white depending on their state.

ECAM functions are typically just grey buttons, but will turn amber if a particular function is selected. CLR and STS will turn amber under certain conditions too.

TCAS button switches between On and Auto. The TCAS state below this is changed via the top and bottom half of the buttons. The text colour changes depending upon the state as a visual warning.

The door functions are just buttons. Check the DOORS ECAM page for their current state. NB: this accesses the ISCS functionality, so even when at gate, ground vehicles might appear - I have no control over this.

Ground function are bright red or black to denote their state. So ground power on and chocks applied are *red*. If you find  you plane not moving under full throttle, parking brake disengaged anda bright *red* CHOCKS illuminated, there's your answer.

Then we have ADIRU ALIGN and ISCS in blue and amber. ISCS brings up the Toliss TSCS dialog, and then if you are in a hurry click on ADIRU ALIGN to force alignment immediately.,

### Additional Panel
This is contains some useful convenience things. The page is accessed by clicking on the SHIFT option at the top. Currently there are four sections:

   * Cockpit lighting
   * Cabin lighting
   * Rapid Power on/off
   * Jetways

Jetways - this calls the openSAM/toggle_jwy function. However Toliss aircraft do not support OpenSAM's Jetways, so it doesn't work. I haven't removed it for various reasons. If it does start working, then it'll show different colours depending upon the state of the jeyway. If you know how to get this working with Toliss aircraft please let me know.

Cockpit lighting varies between Bright, Medium and Dim for the displayers, integral, overhead panel and flood lights. Very useful when coming into a cold and dark cockpit or just reducing the amount of light during night flying or for take-off/landing. These should be self-explanatory.

Two additional convenience buttons are provided for suitable night lighting of the panels and for turning all panel lighting off. The display brightness is unaffected.

Note: CPDLC - there is no dataref for its brightness as far as I can find. You can call the BRT/DIM rocker switch by command, but then setting the brightness is guesswork. Again, ask Toliss.

Cabin lights - this should be self explanatory again, but basically OFF means total darkness; TO/LAND - for when the cabin crew dim the lights, then MEDIUM and ON for normal usage; the former is good for those red-eye flights. BTW, am I one of the few who like the cabin being very dim at night/evening on the real aircraft...you get a much better view out of the window.

Rapid Power ON/OFF ... this is really useful for rapidly setting up the cockpit from cold & dark (OFF does the opposite). Rapid power on does a few things: it toggles the batteries (hopefully to on) and switches on the external power (assuming you have a ground power unit connected), it then turns on the crew oxygen, all the fuel pumps, turns the ADIRUs to NAV, turns on the cockpit flood lights so you can see and finally sets the cabin lights to medium for passenger experience, safety and security.

Note: these functions *toggle* the batteries, so if you've turned one off and one on, then you might get weird results.

## Screenshots

![Main Panel]([http://url/to/img.png](https://raw.githubusercontent.com/iolivergithub/TolissXKeyPadHelper/refs/heads/main/mainpanel.png))

![Additional Panel]([http://url/to/img.png](https://raw.githubusercontent.com/iolivergithub/TolissXKeyPadHelper/refs/heads/main/additionalpanel.png))
