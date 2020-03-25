# dot.c3270pro (`.c3270pro`) keymap for `c3270` README

## Before We Begin

**Note:** When available, `x3270` gives a better user experience than `c3270`.  `c3270` is useful when `x3270` is not appropriate, for example when using for a long running system console under the program `screen`.

## Overview

The [dot.c3270pro](dot.c3270pro) profile when installed as `~/.c3270pro` configures the key mapping for `c3270` as used by the author to access VM and MVS.

**Note**: The mouse is not supported in all environments.  If the mouse not supported, this effectively disables the top of screen tabs.

***Note***: When using `c3270`, make the terminal window two lines _taller_ than the desired 3270 terminal size _before_ running the program. This allows room for the top & bottom lines of chrome.

## Profile overview

The profile when adds, tweaks, and in some cases out-and-out corrects various items in the default setup.  Below is the primary layout by the author with alternative key mappings.

**Note**: All Keypad keys may require `NUMLOCK` to be engaged.

**Note**: `Print Screen`, `Scroll Lock`, and `Pause` may not work on Windows systems.


## Special Emulator Keys
|	3270 Key	|	Emulator Key	|	Alternative Emulator Key(s)	|	Notes	|
|	---------	|	------------	|	---------------------	|	-----	|
|	**Disconnect & Exit**	|	Alt-W	|	Alt-Q, Ctrl-D, Alt-D	|	Logout before using this function!
|	**Pop-up Keypad**	|	Ctrl-K	|	|	Displays a keypad of with the [Program Attention Keys](#program-attention-keys-pak), `Reset`, `Insert`, `Attn`, `Clear` and virtually all other 3270 specific keys.
----

## Program Attention Keys (PAK)

These keys all generate an interrupt to the host.

|	3270 Key	|	Emulator Key	|	Alternative Emulator Key(s)	|	Notes	|
|	-----------	|	------------	|	---------------------	|	-----	|
|	`Enter`	|	`Enter`	|
|	`Clear`	|	Alt-C	|
|	`Attn`	|	Alt-A	|
|	`PA1`	|	F13 (aka `Print Screen`)	|	Ctrl-a 1<br>Keypad -	| Keypad - may return `PF4` under some emulators such as `PuTTY`
|	`PA2`	|	F14 (aka `Scroll Lock`)	|	Ctrl-a 2<br>Keypad +	|	On VM, PA2 clears the screen on the virtual console when not in full screen mode (such as the editor).
|	`PA3`	|	F15 (aka `Pause`)	|	Ctrl-a 3	|	
|	`PF1`	|	F1	|
|	`PF2`	|	F2	|
|	`PF3`	|	F3	|
|	`PF4`	|	F4	|
|	`PF5`	|	F5	|
|	`PF6`	|	F6	|
|	`PF7`	|	F7	|	Page Up	|
|	`PF8`	|	F8	|	Page Down	|
|	`PF9`	|	F9	|
|	`PF10`	|	F10	|
|	`PF11`	|	F11	|
|	`PF12`	|	F12	|
|	`PF13`	|	Keypad 7	|	Ctrl-a F1	|
|	`PF14`	|	Keypad 8	|	Ctrl-a F2	|
|	`PF15`	|	Keypad 9	|	Ctrl-a F3	|
|	`PF16`	|	Keypad 4	|	Ctrl-a F4	|
|	`PF17`	|	Keypad 5	|	Ctrl-a F5	|
|	`PF18`	|	Keypad 6	|	Ctrl-a F6	|
|	`PF19`	|	Keypad 1	|	Ctrl-a F7	|
|	`PF20`	|	Keypad 2	|	Ctrl-a F8	|
|	`PF21`	|	Keypad 3	|	Ctrl-a F9	|
|	`PF22`	|	Keypad 0	|	Ctrl-a F10	|
|	`PF23`	|	Keypad . (period)	|	Ctrl-a F11	|
|	`PF24`	|	Keypad Enter	|	Ctrl-a F12	|
----

### Important Client keys

|	Function	|	Emulator Key	|	Alternative Emulator Key(s)	|	Notes	|
|	-----------	|	------------	|	---------------------	|	-----	|
|	`Logical Not (¬)`	|	Caret (Shift-6, AKA "`^`")	|
|	`Insert`	|	Insert	|	Alt-Help, Ctrl-Help	|	MacOS has a `Help` key instead of `Insert`; the unmodified key cannot be read by x3270, hence the modifier keys. As configured, `Insert` function actually toggles insert mode on/off, which is the typical action on a modern desktop system. A true 3270 keyboard uses `Insert` to turn on insert and `Reset` to turn it off.	|
|	`Delete Word`	|	Shift-Delete	|	`Delete Word` deletes to the *left*.  Attempts to housebreak it and have it delete to the right have failed	|
|	`Delete Field`	|	Control-U	|
|	`Word Right`	|	Alt-Right Arrow	|
|	`Word Left`	|	Alt-Left Arrow	w	|
|	`Erase EOF`	|	Alt-e	|	Pop up key pad only. When in an unprotected field, `Erase EOF` erases from the cursor to the end of the field)	|
|	`Delete`	|	Delete	|	|	`Delete` deletes the character under the cursor.  It is *not* a backspace which deletes to left.|
|	`Reset`	|	Alt-R	|	Ctrl-R	|
|	`Newline`	|	Ctrl-j	|	First unprotected characterr of of the next line. |
----
## Screen Size Warning

Once opened in a terminal window, the size of the `c3270` logical screen cannot be changed.  (Changing the terminal window itself is operating system dependant, of course.) If wrong (too large or small), the `c3270` logical screen cannot be changed without restarting the program.

## `c3270.sh` Wrapper

Use of this script is generally optional.

 The wrapper script [c3270.sh](c3270.sh) checks the terminal size and invokes `c3270` with the largest 3270 model size appropriate for the window, overriding `~/.c3270pro` if needed.

**Note**: While the `c3270` module will  by default generate the correct screen, it will set the *model* to [3270 model 4](./README.md#terminal-sizes).  This will affect programs which check the model rather than screen size.  (Checking the actual screen size was not possible until VM/SP 4.) 

**Note**: When the terminal window is tall enough and with enough, `c3270.sh` will favor emulating a [3270 model 5](./README.md#terminal-sizes) over a taller but narrower terminal.
