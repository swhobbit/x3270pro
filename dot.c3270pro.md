# dot.c3270pro (`.c3270pro`) keymap for `c3270` README

## Before We Begin

**Note:** When available, `x3270` gives a better user experience than `c3270`.  `c3270` is useful when `x3270` is not appropriate, for example when using for a long running system console under the program `screen`.

## Overview

The [dot.c3270pro](dot.c3270pro) profile when installed as `~/.c3270pro` configures the key mapping for `c3270` as used by the author to access VM and MVS.

**Note**: The mouse is not supported in all environments.  If the mouse not supported, this effectively prevents direct movement to the top of screen tabs (but see [Special Emulator Keys](#Special-Emulator-Keys) below).

***Note***: When using `c3270`, make the terminal window two lines _taller_ than the desired 3270 terminal size _before_ running the program. This allows room for the top & bottom lines of chrome.

## Profile overview

The profile when adds, tweaks, and in some cases out-and-out corrects various items in the default setup.  Below is the primary layout by the author with alternative key mappings.

**Note**: All Keypad keys may require **NUMLOCK** to be engaged.

**Note**: **Print Screen**, **Scroll Lock**, and **Pause** may not work on Windows systems.


## Special Emulator Keys
|	3270 Key	|	Emulator Key	|	Alternative Emulator Key(s)	|	Notes	|
|	---------	|	------------	|	---------------------	|	-----	|
|	**Disconnect & Exit**	|	Alt-w	|	Alt-q,<br>Ctrl-d,<br>Alt-d	|	Logout before using this function!	|
|	**Display top menu**	|	Ctrl-n	| 	|	 Displays left most top (**File**) menu, which include such items as listing *all* key mappings. When displayed, the right arrow scrolls to the binary options (**Options**) menu and the pop-up (**Keypad**) menu. |
|	**Pop-up Keypad**	|	Ctrl-k	|	|	Displays a pop-up keypad of with the Program Attention Keys, `Reset`, `Insert`, and virtually all other 3270 specific keys.
----

## Program Attention Keys (PAK) and Program Function Keys (PFK)

These keys all generate an interrupt to the host.

|	3270 Key	|	Emulator Key	|	Alternative Emulator Key(s)	|	Notes	|
|	-----------	|	------------	|	---------------------	|	-----	|
|	`Enter`	|	**Enter**	|	|	Main keyboard **ENTER**, not the keypad **ENTER**	|
|	`Clear`	|	Alt-c	|	Ctrl-c	|
|	`Attn`	|	Alt-a	|	Ctrl-c
||
|	`PA1`	|	Ctrl-a 1	|	F13 (or **Print&nbsp;Screen**),<br>Keypad -	| **Keypad -** may return `PF4` under some emulators such as `PuTTY`
|	`PA2`	|	Ctrl-a 2	|	F14 (or **Scroll&nbsp;Lock**),<br>Keypad +	|	On VM systems, `PA2` clears output area of the screen on the virtual console when not in full screen mode (such as the editor) without clearing user input.
|	`PA3`	|	Ctrl-a 3	|	F15 (or **Pause**)	|	
| |
|	`PF1`	|	F1	|
|	`PF2`	|	F2	|
|	`PF3`	|	F3	|
|	`PF4`	|	F4	|
|	`PF5`	|	F5	|
|	`PF6`	|	F6	|
|	`PF7`	|	F7	|	**Page Up**	|
|	`PF8`	|	F8	|	**Page Down**	|
|	`PF9`	|	F9	|
|	`PF10`	|	F10	|
|	`PF11`	|	F11	|
|	`PF12`	|	F12	|
| |
|	`PF13`	|	Ctrl-a F1	|	Keypad 7	|
|	`PF14`	|	Ctrl-a F2	|	Keypad 8	|
|	`PF15`	|	Ctrl-a F3	|	Keypad 9	|
|	`PF16`	|	Ctrl-a F4	|	Keypad 4	|
|	`PF17`	|	Ctrl-a F5	|	Keypad 5	|
|	`PF18`	|	Ctrl-a F6	|	Keypad 6	|
|	`PF19`	|	Ctrl-a F7	|	Keypad 1	|
|	`PF20`	|	Ctrl-a F8	|	Keypad 2	|
|	`PF21`	|	Ctrl-a F9	|	Keypad 3	|
|	`PF22`	|	Ctrl-a F10	|	Keypad 0	|
|	`PF23`	|	Ctrl-a F11	|	Keypad . (period)	|
|	`PF24`	|	Ctrl&#8209;a&nbsp;F12	|	Keypad **Enter**	|
----

### Important Client keys

|	Function	|	Emulator Key	|	Alternative Emulator Key(s)	|	Notes	|
|	-----------	|	------------	|	---------------------	|	-----	|
|	`Logical Not (¬)`	|	Caret (**^**)	|
|	`Insert`	|	Insert	|	Alt-Help, Ctrl-Help	|	MacOS has a `Help` key instead of `Insert`; the unmodified key cannot be read by x3270, hence the modifier keys.<p>As configured, the **Insert** key actually toggles insert mode on/off, which is the typical action on a modern desktop system. A true 3270 keyboard uses `Insert` to turn on insert and `Reset` to turn it off.	|
|	`Delete Field`	|	Ctrl-u	|
|	`Erase EOF`	|	Alt-e	|	|When in an unprotected field, `Erase EOF` erases from the cursor to the end of the field)	|
|	`Delete`	|	Delete	|	|	`Delete` deletes the character under the cursor. It is *not* a backspace which deletes to left.|
|	`Reset`	|	Alt-r	|	Ctrl-r	|	Unlocks keyboard (if locked), and turns off insert (if enabled). |
|	`Refresh`	|	Ctrl-l	|	| 	Redraw the Screen	|
|	`Newline`	|	Ctrl-j	|	Alt-**Enter**	|	First unprotected character of the next line. |
| |
## Screen Size Warning

Once opened in a terminal window, the size of the `c3270` logical screen cannot be changed. (Changing the terminal window itself is operating system dependant, of course.) If wrong (too large or small), the `c3270` logical screen cannot be changed without restarting the program.

## `c3270.sh` Wrapper

Use of this script is generally optional.

The wrapper script [c3270.sh](c3270.sh) checks the terminal size and invokes `c3270` with the largest 3270 model size appropriate for the window, overriding `~/.c3270pro` if needed.

**Note**: While the `c3270` module will  by default generate the correct screen, it will set the *model* to [3270 model 4](./README.md#terminal-sizes).  This will affect programs which check the model rather than screen size.  (Checking the actual screen size was not possible until VM/SP 4.) 

**Note**: When the terminal window is both tall & wide enough, `c3270.sh` will favor emulating a [3270 model 5](./README.md#terminal-sizes) over a taller but narrower terminal.
