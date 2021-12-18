Title: README for dot.x3270pro keymap used with x3270

# README for dot.x3270pro (`.x3270pro`) keymap used with `x3270` 

## Overview

The [dot.x3270pro](dot.x3270pro) profile when installed as `~/.x3270pro` configures key mapping for `x3270` as used by the author 
([andrew.h@derbyshire.us](mailto:andrew.h@derbyshire.us)) to access VM. 

The profile adds, tweaks, and in some cases out-and-out corrects various items in the setup for x3270 keys. 

## Installing x3270

See [README](README#get-3270).

## `x3270.sh` wrapper

In some X Windows environments, multiple `x3270` will land on in the same position and hide each other. The (x3270.sh)[x3270.sh] script does two things:

* It randomizes the position of the `x3270` windows on the screen.
* It adds the to `x3270` `-once` option  to automatically close the window after session termination.

## Profile keys
Below is the primary layout by the author with alternative key bindings.

### Program Attention Keys (PAK)

These keys all generate an interrupt to the host.

|	3270 Key	|	Emulator Key	|	Emulator Alternatives	|	Notes	|
|	--------	|	------------	|	---------------------	|	-----	|
|	`Enter`		|	Return		|
|	`Clear`		|	Alt-C	        |	Meta-C	|
|	`Attn`		|	Alt-A	        |	Meta-A	|
|	`PA1`		|	F13 (aka `Print Screen`)	|	Meta-1, Keypad-Divide (aka keypad "/")	|
|	`PA2`		|	F14 (aka `Scroll Lock`)	|	Meta-2, Keypad-Multiply (aka keypad "*")	|
|	`PA3`		|	F13 (aka `Pause`)|	Meta-3		|
|	`PF1`		|	F1		|
|	`PF2`		|	F2		|
|	`PF3`		|	F3		|
|	`PF4`		|	F4		|
|	`PF5`		|	F5		|
|	`PF6`		|	F6		|
|	`PF7`		|	F7		|	Page Up		|
|	`PF8`		|	F8		|	Page Down	|
|	`PF9`		|	F9		|
|	`PF10`		|	F10		|
|	`PF11`		|	F11		|
|	`PF12`		|	F12		|
|	`PF13`		|	Shift-F1	|	Keypad-7	|
|	`PF14`		|	Shift-F2	|	Keypad-8	|
|	`PF15`		|	Shift-F3	|	Keypad-9	|
|	`PF16`		|	Shift-F4	|	Keypad-4	|
|	`PF17`		|	Shift-F5	|	Keypad-5	|
|	`PF18`		|	Shift-F6	|	Keypad-6	|
|	`PF19`		|	Shift-F7	|	Keypad-1	|
|	`PF20`		|	Shift-F8	|	Keypad-2	|
|	`PF21`		|	Shift-F9	|	Keypad-3	|
|	`PF22`		|	Shift-F10	|	Keypad-0	|
|	`PF23`		|	Shift-F11	|	Keypad-Decimal (AKA keypad "`.`")	|
|	`PF24`		|	Shift-F12	|	Keypad-Enter, Keypad-Plus (AKA keypad "`+`")	|

### Important Client keys / functions

|	Function	|	Emulator Key	|	Emulator Alternatives	| Notes 
|	-------------	|	------------	|	---------------------	| ----
|	`Logical Not (¬)`	|	Caret (`^`)	|
|	`US Cent Sign (¢)`	|	Alt-4	|
|       `Copy`		|	Drag-Mouse	|	|
|	`Insert`	|	Insert		|	Alt-Insert, Meta-Insert, Ctrl-Insert	|	MacOS has a `Help` key instead of `Insert`; the unmodified key cannot be read by x3270 unless "Enable key equivalents" is disabled in XQuartz. Hence, the modifier key alternatives are provided.  <br><br> **Note:** The `Insert` function is configured to toggle insert mode on/off, which is the typical action on a modern desktop system. A true 3270 keyboard uses `Insert` to turn on insert and `Reset` to turn it off.
|	`Delete Word`	|	Shift-Delete	|	|	`Delete Word` deletes the word to the *left*.  Attempts to housebreak it and have it delete to the right have failed.	|
|	`Delete Field`	|	Control-U	|
|	`Word Right`	|	Meta-Right Arrow	|	Alt-Right Arrow	|
|	`Word Left`	|	Meta-Left Arrow	|	Alt-Left Arrow	|
|	`Erase EOF`	|	Shift-End	|	|	When in an unprotected field, `Erase EOF` erases from the cursor to the end of the field).	|
|	`Delete`	|	Delete		|	|	`Delete` deletes the character under the cursor.  It is *not* a backspace which deletes to left.	|
|	`Paste`	|	Meta-V		|	Shift-Insert, Mouse Button 3 (middle button)	| Pasting a long strings or multiple lines into formatted fields may have undesirable results.
|	`Reset`		|	Meta-R		|	Ctrl-R	|
|	`Newline`	|	Shift-Return	|
