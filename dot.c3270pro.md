# Read me file for dot.c3270pro (`.c3270pro`)

## Overview

The [dot.c3270pro](dot.c3270pro) file should be saved in your home directory on a on UNIX or MacOS system for key mapping for `c3270` and `c3270`. This file is as used by the author (swhobbit@derbyshire.us) to access VM when `x3270` is not appropriate, for example for a long running terminal for a system console via the program `screen`.

## Using c3270.sh to set the `c3270` emulator window size.

Once opened in a terminal window, the `c3270` emulator size is fixed. This is less of issue with `x3270` because it will always generate an emulator window appropriate for the model of 3270 requested.  However, `c3270` does not check the terminal window size and automatically adjust to the best screen size for the client window.

The wrapper script [`c3270.sh`](c3270.sh) *does* check the terminal size and uses the largest model possible for the window.

**Note**: When the terminal window is at least 132 columns, `c3270.sh` will favor emulating a [3270 model 5](Readme#Terminal-Sizes) over a taller but narrower terminal.

***Note***: When using `c3270`, make the terminal window two lines _higher_ than the desired the 3270 terminal size _before_ running the program. This allows room for the top & bottom lines of chrome.


## Profile overview

The profile adds, tweaks, and in some cases out-and-out corrects various items in the default setup for x3270 keys.  Below is the primary layout by the author with alternatives.

### Special Emulator Keys
| 3270 Key	| Emulator Key	| Emulator Alternatives	| Notes	|
| ---------	| ------------	| ---------------------	| -----	|
| **Disconnect & Exit**	| Alt-W	| Alt-Q, Ctrl-D, Alt-D	| Logout before using this function!
| **Pop-up Keypad** | Ctrl-K || Displays a keypad of with `PAn` & `PFn` keys, `Reset`, `Insert`, `Attn`, `Clear` and virtually all other 3270 specific keys.
----

## Program Attention Keys (PAK)

These keys all generate an interrupt to the host.

| 3270 Key	| Emulator Key	| Emulator Alternatives	| Notes	|
| -----------	| ------------	| ---------------------	| -----	|
| `Enter`	| `Enter`	|
| `Clear`	| Alt-C	|
| `Attn`	| Alt-A	|
|
| `PA1`	| F13 (aka `Print Screen`)	| Alt-1	|
| `PA2`	| F14 (aka `Scroll Lock`)	| Alt-2	| PA2 clears the screen on the virtual console when not in full screen mode (such as the editor).
| `PA3`	| F13 (aka `Pause`)	| Alt-3	|
|
| `PF1`	| F1	|
| `PF2`	| F2	|
| `PF3`	| F3	|
| `PF4`	| F4	|
| `PF5`	| F5	|
| `PF6`	| F6	|
| `PF7`	| F7	| Page Up	|
| `PF8`	| F8	| Page Down	|
| `PF9`	| F9	|
| `PF10`	| F10	|
| `PF11`	| F11	|
| `PF12`	| F12	|
---

**Note**: Especially in `c3270`, various keys are reserved by the operating system.  For example on MacOS Meta-I is intercepted by the `Terminal` to put up an Info box.

### Important Client keys

| Function	| Emulator Key	| Emulator Alternatives	| Notes	|
| -----------	| ------------	| ---------------------	| -----	|
| `Logical Not (¬)`	| Caret (Shift-6, AKA "`^`")	|
| `Insert`	| Insert	| Alt-Help, Ctrl-Help	| MacOS has a `Help` key instead of `Insert`; the unmodified key cannot be read by x3270, hence the modifier keys. The `Insert` function actually toggles insert mode on/off, which is the typical action on a modern desktop system. A true 3270 keyboard uses `Insert` to turn on insert and `Reset` to turn it off. alternatives are provided.	|
| `Client Paste`| Alt-V	| Shift-Insert, Mouse Button 2 (middle)	|
| `Delete Word`	| Shift-Delete	| `Delete Word` deletes to the *left*.  Attempts to housebreak it and have it delete to the right have failed	|
| `Delete Field`	| Control-U	|
| `Word Right`	| Alt-Right Arrow	| Alt-Right Arrow	|
| `Word Left`	| Alt-Left Arrow	| Alt-Left Arrow	|
| `Erase EOF`	|	|	| Pop up key pad only. When in an unprotected field, `Erase EOF` erases from the cursor to the end of the field)	|
| `Delete`	| Delete	|	| `Delete` deletes the character under the cursor.  It is *not* a backspace which deletes to left.|
| `Reset`	| Alt-R	| Ctrl-R	|
| `Newline`	| 	| | Pop-up Keypad
----

**Note**: The mouse is not supported in all environments.
