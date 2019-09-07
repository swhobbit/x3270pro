# Read me file for x3270_keys Repository

## Overview

This repository exists to provide an example of key mapping for x3270 as used by the author (swhobbit@derbyshire.us) to access VM.

## Getting x3270

### MacOS

1. Install https://www.xquartz.org/
1. Install xcode: https://developer.apple.com/xcode/downloads/
1. Install MacPorts: https://www.macports.org/
1. Install packages:
   * `sudo port install x3270`
   * `sudo port install c3270`

### Linux (ubuntu)

apt-get install
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

If you must run the console download from http://x3270.bgp.nu/download.html and install:
* `wc3270`

## X windows (x3270 on various platforms)

### Profile overview

The profile adds, tweaks, and in some cases out-and-out corrects various items in the default setup for x3270 keys.  Below is the primary layout by the author with alternatives.

### Program Attention Keys (PAK)

These keys all generate an interrupt to the host.

| 3270 Key    | Emulator Key | Emulator Alternatives |
| ----------- | ------------ | --------------------- |
| `Enter`       | Return       |            |
| `Clear`       | Alt-C        | Meta-C     |
| `Attn`        | Alt-A        | Meta-A     |
|             |              |      |
| `PA1`         | F13          | Meta-F1 Keypad-Divide (aka keypad "/") |
| `PA2`         | F14          | Meta-F2 Keypad-Multipy (aka keypad "*") |
| `PA3`         | F13          | Meta-F3       |
|             |              |      |
| `PF1`         | F1  |  |
| `PF2`         | F2  |  |
| `PF3`         | F3  |  |
| `PF4`         | F4  |  |
| `PF5`         | F5  |  |
| `PF6`         | F6  |  |
| `PF7`         | F7  | Page Up |
| `PF8`         | F8  | Page Down |
| `PF9`         | F9  |  |
| `PF10`        | F10 |  |
| `PF11`        | F11 |  |
| `PF12`        | F12 |  |
|             |           |      |
| `PF13`        | Shift-F1  | Keypad-7 |
| `PF14`        | Shift-F2  | Keypad-8 |
| `PF15`        | Shift-F3  | Keypad-9 |
| `PF16`        | Shift-F4  | Keypad-4 |
| `PF17`        | Shift-F5  | Keypad-5 |
| `PF18`        | Shift-F6  | Keypad-6 |
| `PF19`        | Shift-F7  | Keypad-1 |
| `PF20`        | Shift-F8  | Keypad-2 |
| `PF21`        | Shift-F9  | Keypad-3 |
| `PF22`        | Shift-F10 | Keypad-0 |
| `PF23`        | Shift-F11 | Keypad-Decimal (AKA keypad "`.`") |
| `PF24`        | Shift-F12 | Keypad-Enter, Keypad-Plus (AKA keypad "`+`") |

### Other 3270 Special Keys
| 3270 Key    | Emulator Key | Emulator Alternatives |
| ----------- | ------------ | --------------------- |
| `Insert`      | Insert     | Alt-Help, Meta-Help, Ctrl-Help |
| `Erase EOF`   | Shift-End    |                       |
| `Delete`      | Delete (*not* Backspace) |  |
| `Reset`       | Meta-R       | |
| `Newline`     | Shift-Return | |

**Note:** When in an unprotected field, `Erase EOF` erases from the cursor  to the end of the field)

### Other Important keys
| Function    | Emulator Key | Emulator Alternatives |
| ----------- | ------------ | --------------------- |
| Client Paste| Meta-V       | Shift-Insert, Mouse Button 2 (middle) |
| Delete Word | Shift-Delete |  |
| Delete Field | Control-U   |  |
| Word Right  | Meta-Right Arrow | Alt-Right Arrow |
| Word Left  | Meta-Left Arrow | Alt-Left Arrow |
| Logical Not (¬) | Caret (Shift-6, AKA "`^`") |

**Note**: A Mac has a `Help` key instead of `Insert`; the unmodified key cannot be read by x3270, hence the modifier key alternatives.

**Note**: The `Insert` function actually toggles insert mode on/off, the typical action on a modern desktop system. A true 3270 keyboard uses `Insert` to turn on insert and `Reset` to turn it off.

**Note**: `Delete` deletes the character under the cursor.  It is *not* a backspace which deletes to left.

**Note**: `Delete Word` deletes to the *left*.  Attempts to housebreak it and have it delete to the right have failed

## Using Windows (c3270)

### Profile Overview

In a manner similar to the X windows profile, the c3270 profile weaks, and in some cases out-and-out corrects various items in the default setup for c3270 keys.  For example, it adds an insert toggle.  It is not extensive or as tested as the X Windows profile -- the author follows his own advice and uses the X windows version whenever possible.
