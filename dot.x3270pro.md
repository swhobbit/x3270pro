# Read me file for x3270_keys Repository

## Overview

This repository exists to provide an example of key mapping for `x3270` and `c3270` as used by the author (swhobbit@derbyshire.us) to access VM.

### Terminal Sizes

The standard terminal sizes for 3270 emulation are:

| Model | Lines | Columns |
| ----- | ----- | ------  |
|  2    |   24  |   80    |
|  3    |   32  |   80    |
|  4    |   43  |   80    |
|  5    |   27  |   132   |

## Getting x3270

### MacOS

1. Install https://www.xquartz.org/
1. Install xcode: https://developer.apple.com/xcode/downloads/
1. Install MacPorts: https://www.macports.org/
1. Install packages:
   * `sudo port install x3270`
   * `sudo port install c3270`

### Linux (ubuntu)

apt-get install -y
* `3270-common`
* _`c3270`_
* `fonts-3270`
* _`pr3287`_
* _`s3270`_
* `x3270`
* `x3270-doc`
* `xfonts-x3270-misc`

__Note:__ _Italicized_ items are optional.

### Windows

***NOTE***: If running Windows 10 and it is otherwise possible, use the Windows Subsystem for Linux to run the `x3270` version.  The Windows version is a console application, and more limited in functionality.

If you must run from a console Window, download from http://x3270.bgp.nu/download.html and install:
* `wc3270`

## X windows (x3270 on various platforms)

### Profile overview

The profile adds, tweaks, and in some cases out-and-out corrects various items in the default setup for x3270 keys.  Below is the primary layout by the author with alternatives.

### Program Attention Keys (PAK)

These keys all generate an interrupt to the host.

| 3270 Key    | Emulator Key | Emulator Alternatives | Notes |
| ----------- | ------------ | --------------------- | ----- |
| `Enter`     | Return       |
| `Clear`     | Alt-C        | Meta-C     |
| `Attn`      | Alt-A        | Meta-A     |
|
| `PA1`       | F13 (aka `Print Screen`)          | Meta-1, Keypad-Divide (aka keypad "/") | *Keypad-Divide is x3270 only*|
| `PA2`       | F14 (aka `Scroll Lock`)| Meta-2, Keypad-Multiply (aka keypad "*") |*Keypad-Multiply is x3270 only*|
| `PA3`       | F13 (aka `Pause`)| Meta-3      |
|
| `PF1`         | F1  |
| `PF2`         | F2  |
| `PF3`         | F3  |
| `PF4`         | F4  |
| `PF5`         | F5  |
| `PF6`         | F6  |
| `PF7`         | F7  | Page Up |
| `PF8`         | F8  | Page Down |
| `PF9`         | F9  |
| `PF10`        | F10 |
| `PF11`        | F11 |
| `PF12`        | F12 |
|
| `PF13`        | Shift-F1  | Keypad-7 | *x3270 only* |
| `PF14`        | Shift-F2  | Keypad-8 | *x3270 only* |
| `PF15`        | Shift-F3  | Keypad-9 | *x3270 only* |
| `PF16`        | Shift-F4  | Keypad-4 | *x3270 only* |
| `PF17`        | Shift-F5  | Keypad-5 | *x3270 only* |
| `PF18`        | Shift-F6  | Keypad-6 | *x3270 only* |
| `PF19`        | Shift-F7  | Keypad-1 | *x3270 only* |
| `PF20`        | Shift-F8  | Keypad-2 | *x3270 only* |
| `PF21`        | Shift-F9  | Keypad-3 | *x3270 only* |
| `PF22`        | Shift-F10 | Keypad-0 | *x3270 only* |
| `PF23`        | Shift-F11 | Keypad-Decimal (AKA keypad "`.`") | *x3270 only* |
| `PF24`        | Shift-F12 | Keypad-Enter, Keypad-Plus (AKA keypad "`+`") | *x3270 only* |
---

***Note***: Keys noted **x3270 only** are not supported by `c3270`.

**Note**: Especially in `c3270`, various keys are reserved by the operating system.  For example on MacOS Meta-I is intercepted by the `Terminal` to put up an Info box.

### Other 3270 Special Keys
| 3270 Key    | Emulator Key | Emulator Alternatives | Notes |
| ----------- | ------------ | --------------------- | ----- |
| **Disconnect & Exit** | Alt-W | _c3270 only_ also supports: Alt-Q, Ctrl-D, Alt-D | You may also simply close the Window *after* logging out. |
----

### Important Client keys

| Function    | Emulator Key | Emulator Alternatives |
| ----------- | ------------ | --------------------- |
| `Logical Not (¬)` | Caret (Shift-6, AKA "`^`") |
| `Insert`    | Insert       | Alt-Help, Meta-Help, Ctrl-Help | MacOS has a `Help` key instead of `Insert`; the unmodified key cannot be read by x3270, hence the modifier key alternatives are provided. |
| `Client Paste`| Meta-V       | Shift-Insert, Mouse Button 2 (middle) |
| `Delete Word` | Shift-Delete | `Delete Word` deletes to the *left*.  Attempts to housebreak it and have it delete to the right have failed |
| `Delete Field` | Control-U   |
| `Word Right`  | Meta-Right Arrow | Alt-Right Arrow |
| `Word Left`  | Meta-Left Arrow | Alt-Left Arrow |
| `Erase EOF` | Shift-End    | When in an unprotected field, `Erase EOF` erases from the cursor to the end of the field) |
| `Delete`    | Delete  |  | `Delete` deletes the character under the cursor.  It is *not* a backspace which deletes to left.|
| `Reset`     | Meta-R       | Ctrl-R |
| `Newline`   | Shift-Return |
----

**Note**: The `Insert` function actually toggles insert mode on/off, which is the typical action on a modern desktop system. A true 3270 keyboard uses `Insert` to turn on insert and `Reset` to turn it off.


## Using console on Windows (wc3270) and UNIX/Mac OS

### Profile Overview

In a manner similar to the X windows profile, the c3270 profile tweaks, and in some cases out-and-out corrects various items in the default setup for c3270 keys. For example, it adds an insert toggle.  It is not extensive or as tested as the X Windows profile -- the author follows his own advice and uses the X windows version whenever possible.

### c3270.sh

Once opened in a console window, the emulator cannot be resized. This is less of issue with `x3270` because it will always generate a window appropriate for the model of 3270 requested.  However, `c3270` itself does not check the terminal window size and automatically adjust

The wrapper script `c3270.sh` checks the terminal size and uses the largest model possible for the window.
for changes.

**Note**: If the terminal window is at least 132 columns, `c3270.sh` will favor emulating a [3270 model 5](#Terminal-Sizes) over a taller but narrower terminal.

***Note***: If using `c3270.sh`, make the terminal window two lines *higher* than the desired the 3270 terminal size **before** running the program. This allows room for the top & bottom lines of chrome.
