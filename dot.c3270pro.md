# dot.c3270pro (`.c3270pro`) keymap for `c3270` README

## Overview

The [dot.c3270pro](dot.c3270pro) profile installed as `~/.c3270pro` configures the key mapping for `c3270` as used by the author (andrew.h@derbyshire.us) to access VM and MVS.

**Note:** When available, `x3270` gives a better user experience than `c3270`.  `c3270` is useful when `x3270` is not appropriate, for example using for a long running system console under the program `screen`.

**Note**: The mouse is not supported in all environments.  The effectively disables the top of screen tabs.

## `c3270.sh` Wrapper

Once opened in a terminal window, the `c3270` emulator size is both arbitrary and fixed; if wrong (too large), it cannot be changed without restarting the program. The fixed size is less of issue with `x3270` because it _does__ check the screen and generate a new window that fits. However, `c3270` does not check the terminal window size and simply generates a default terminal size (by default, 43 lines).

The wrapper script [c3270.sh](c3270.sh) checks the terminal size and invokes `c3270` with the largest 3270 model size appropriate for the window.

**Note**: When the terminal window is tall enough and at least 132 columns, `c3270.sh` will favor emulating a [3270 model 5](README.md#terminal-sizes) over a taller but narrower terminal.

***Note***: When using `c3270`, make the terminal window two lines _higher_ than the desired 3270 terminal size _before_ running the program. This allows room for the top & bottom lines of chrome.

## Profile overview

The profile when adds, tweaks, and in some cases out-and-out corrects various items in the default setup.  Below is the primary layout by the author with alternative key mappings.

## Special Emulator Keys
|	3270 Key	|	Emulator Key	|	Emulator Alternatives	|	Notes	|
|	---------	|	------------	|	---------------------	|	-----	|
|	**Disconnect & Exit**	|	Alt-W	|	Alt-Q, Ctrl-D, Alt-D	|	Logout before using this function!
|	**Pop-up Keypad** |	Ctrl-K ||	Displays a keypad of with the [Program Attention Keys](#program-attention-keys-pak), `Reset`, `Insert`, `Attn`, `Clear` and virtually all other 3270 specific keys.
----

## Program Attention Keys (PAK)

These keys all generate an interrupt to the host.

|	3270 Key	|	Emulator Key	|	Emulator Alternatives	|	Notes	|
|	-----------	|	------------	|	---------------------	|	-----	|
|	`Enter`	|	`Enter`	|
|	`Clear`	|	Alt-C	|
|	`Attn`	|	Alt-A	|
|	`PA1`	|	F13 (aka `Print Screen`)	|	Alt-1	|
|	`PA2`	|	F14 (aka `Scroll Lock`)	|	Alt-2	|	PA2 clears the screen on the virtual console when not in full screen mode (such as the editor).
|	`PA3`	|	F13 (aka `Pause`)	|	Alt-3	|
|	`PF1`	|	F1	|
|	`PF2`	|	F2	|
|	`PF3`	|	F3	|
|	`PF4`	|	F4	|
|	`PF5`	|	F5	|
|	`PF6`	|	F6	|
|	`PF7`	|	F7	|	Page Up 	|
|	`PF8`	|	F8	|	Page Down	|
|	`PF9`	|	F9	|
|	`PF10`	|	F10	|
|	`PF11`	|	F11	|
|	`PF12`	|	F12	|
----

### Important Client keys

|	Function	|	Emulator Key	|	Emulator Alternatives	|	Notes	|
|	-----------	|	------------	|	---------------------	|	-----	|
|	`Logical Not (¬)`	|	Caret (Shift-6, AKA "`^`")	|
|	`Insert`	|	Insert	|	Alt-Help, Ctrl-Help	|	MacOS has a `Help` key instead of `Insert`; the unmodified key cannot be read by x3270, hence the modifier keys. As configured, `Insert` function actually toggles insert mode on/off, which is the typical action on a modern desktop system. A true 3270 keyboard uses `Insert` to turn on insert and `Reset` to turn it off.	|
|	`Client Paste`|	Alt-V	|	Shift-Insert, Mouse Button 2 (middle)	|
|	`Delete Word`	|	Shift-Delete	|	`Delete Word` deletes to the *left*.  Attempts to housebreak it and have it delete to the right have failed	|
|	`Delete Field`	|	Control-U	|
|	`Word Right`	|	Alt-Right Arrow	|	Alt-Right Arrow	|
|	`Word Left`	|	Alt-Left Arrow	|	Alt-Left Arrow	|
|	`Erase EOF`	|	|	|	Pop up key pad only. When in an unprotected field, `Erase EOF` erases from the cursor to the end of the field)	|
|	`Delete`	|	Delete	|	|	`Delete` deletes the character under the cursor.  It is *not* a backspace which deletes to left.|
|	`Reset`	|	Alt-R	|	Ctrl-R	|
|	`Newline`	|		|	|	Pop-up Keypad
----
