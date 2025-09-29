# TolissXKeyPadHelper
A simple X-KeyPad layout and lua file for some common functions in the Toliss A321 to make flying a little bit easier. Please read the following 3 sections carefully:

   * Disclaimer
   * Version and Integrity
   * Installation
   * License
   * Instructions


## Disclaimer

Tested on *my* machine only. No guarantees that it will work on yours and I'm not responsible for any damange caused directly or indirectly by these scripts nor by your actions. If you find a bug (and there might be) raise an Issue on the relevant Github page.

Similarly if you have an idea or want to contribute, write something to the Github Issues. No guarantees that I'll do something, but always open to ideas. NB: read the LICENSE file too!

## Version and Integrity

This is version 1.6. The file TolissCustom.lua should have the following checksums:

   * SHA256: 9ab0b6eb3e9faf9645220cd6f804cc2ef63dfa9a83e1d50c8ce84ebaedc767f8
   * SHA512: 01f588970d14944476d5bd21a5ca653e8da44318a217a93d97790851c2b1458af28acd20fdb5263472f354519e7c90148402852e074a2c390e939079fbd53666
     
## Installation

Firstly you require:
   * XPlane 12
   + The Toliss A321 ( v1.7+ ) for XPlane 12
   + XKeyPad ( v1.6.1 or better )
   + FlyWithLuaNG ( v2.8.XX NG )

You now have to place the 3 files `X-Keys_a321_StdDef.jaon`, `X-Keys_a321.json` and `X-Keys_a321_StdDef.ini`  in your Toliss A321 directory, which should be in `X-Plane12\Aircraft\TolissA321_V1p7`  (NB: the specific name ofthe TolissA321 directory does change with versions, but the lastest iv V1p7).

Then place the file `TolissCustom.lua` into the FlyWithLua scripts directory which should be `X-Plane 12\Resources\plugins\FlyWithLua\Scripts`

NB: This might work with other Toliss aircraft like the A319, A320 and A330, maybe even the A340...I have no idea. YMMV. Good luck (see Disclaimer)

Start X-Plane 12.

## License

Please read the LICENSE file. This software is released under GPLv3.

Copyright (C)2025 Ian Oliver

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
   * Predictive Wind Shear and Weather Radar
   * Brake Fan
   * Convenience functions for passenger and cargo doors
   * Ground functions
   * ADIRU and ISCS

The lighting functions are modified using the upper and lower half of the grey buttons to change the state. As you do this, the text on the buttons will change. Some buttons have more than 2 states, eg: Landing lights are retracted, off and on.

Seat belts and Wifi show green when they are in the most safe state, otherwise amber or white depending on their state.

ECAM functions are typically just grey buttons, but will turn amber if a particular function is selected. CLR and STS will turn amber under certain conditions too.

TCAS button switches between On and Auto. The TCAS state below this is changed via the top and bottom half of the buttons. The text colour changes depending upon the state as a visual warning. This can select any of the 5 TCAS states from STBY through to full TA/RA

Predictive wind shear (PWS) is set to auto via the top half of the button and on by the lower half. WXRadar toggles through the three states: SYS1, SYS2 and OFF - when in Sys1 the button text is green, Sys2 in amber and Off is white. Additionally this manipulates the Multiscan and GCS switches with both of these systems being in man and off modes respectively if WXRadar is off, and both in auto mode if SYS1 or SYS2 are on. Three buttons are provided for the WX radar gain, tilt and mode of operation: each of these buttons is clickable in the top and bottom halves. The mode varies from WX, through WX+T, TURB to MAP and back. The gain varies in increments and decrements of 20 from -150 to +120, and tilt in increments and decrements of 20 from -120 to +120.

Brake fan (BRK FAN) follows the dark cockpit rule with the button being white when the fans are on, and black when off. This button is displayed in amber when the brakes are hot.

The door functions are just buttons for conveniently selecting pax and cargo door states for gate and stand situations. Check the DOORS ECAM page for their current state. NB: this accesses the ISCS functionality, so even when at gate, ground vehicles might appear - I have no control over this.

Ground function are bright red or black to denote their state. So ground power on and chocks applied are *red*. If you find  you plane not moving under full throttle, parking brake disengaged anda bright *red* CHOCKS illuminated, there's your answer.

Then we have ADIRU ALIGN and ISCS in blue and amber. ISCS brings up the Toliss TSCS dialog, and then if you are in a hurry click on ADIRU ALIGN to force alignment immediately.,

### Additional Panel
This is contains some useful convenience things. The page is accessed by clicking on the SHIFT option at the top. Currently there are four sections:

   * Cockpit lighting
   * Cabin lighting
   * Rapid Power on/off
   * Jetways

Jetways - this calls the openSAM/toggle_jwy function. However Toliss aircraft do not support OpenSAM's Jetways, so it doesn't work. I haven't removed it for various reasons. If it does start working, then it'll show different colours depending upon the state of the jeyway. If you know how to get this working with Toliss aircraft please let me know.

Cockpit lighting varies between Bright, Medium and Dim for the displays, integral, overhead panel and flood lights. Further convenience buttons are provided for night flights that make the cockpit dark or dim, and also turn off the panel lighting: very useful when coming into a cold and dark cockpit or just reducing the amount of light during night flying or for take-off/landing. The button controlling the dome is clickable with the top half making it brigher and bottom darker - it does from off, via dim to bright (and back again).

Note: CPDLC - there is no dataref for its brightness as far as I can find. You can call the BRT/DIM rocker switch by command, but then setting the brightness is guesswork. Again, ask Toliss.

Cabin lights - this should be self explanatory again, but basically OFF means total darkness; TO/LAND - for when the cabin crew dim the lights, then MEDIUM and ON for normal usage; the former is good for those red-eye flights. BTW, am I one of the few who like the cabin being very dim at night/evening on the real aircraft...you get a much better view out of the window.

Rapid Power ON/OFF ... this is really useful for rapidly setting up the cockpit from cold & dark (OFF does the opposite). Rapid power on does a few things: it toggles the batteries (hopefully to on) and switches on the external power (assuming you have a ground power unit connected), it then turns on the crew oxygen, all the fuel pumps, standby compass, capt & purser emergency activation on, arms the emergency exits, turns on the seatbelts sign and ensures Wifi is off (formerly no-smoking), turns the ADIRUs to NAV, turns on the cockpit dome and flood lights so you can see and then finally sets the cabin lights to medium for passenger experience, safety and security. 

Note 1: these functions *toggle* the batteries, so if you've turned one off and one on, then you might get weird results.

Note 2: Wifi...Toliss still use no-smoking signs, but my airline has free wifi, so I repurposed the switch so there :-P ... if you look at the main panel of this helper you'll see

Note 3: some of the above may or may not work, especially anything involving switches, but it seems to on mine.

## Screenshots

![Main Panel]([http://url/to/img.png](https://raw.githubusercontent.com/iolivergithub/TolissXKeyPadHelper/refs/heads/main/mainpanel.png))

![Additional Panel]([http://url/to/img.png](https://raw.githubusercontent.com/iolivergithub/TolissXKeyPadHelper/refs/heads/main/additionalpanel.png))
