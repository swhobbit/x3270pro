# Read me file for x3270 repository

## Overview

This repository exists to provide an example of key mapping for `x3270` and `c3270` as used by the author (andrew.h@derbyshire.us) to access VM.

### Terminal Sizes

The standard terminal sizes for 3270 emulation are:

| Model | Lines | Columns |
| ----- | ----- | ------  |
|  2    |   24  |   80    |
|  3    |   32  |   80    |
|  4    |   43  |   80    |
|  5    |   27  |   132   |

## Installing x3270

### MacOS

1. Install XQuartz https://www.xquartz.org/
1. Install xcode: https://developer.apple.com/xcode/downloads/
1. Install MacPorts: https://www.macports.org/
1. Install packages:
   * `sudo port install x3270`
   * _`sudo port install c3270`_

### Linux (ubuntu)

`sudo apt-get install -y`
* `3270-common`
* _`c3270`_
* `fonts-3270`
* _`pr3287`_
* _`s3270`_
* `x3270`
* `x3270-doc`
* `xfonts-x3270-misc`

__Note:__ _Italicized_ items are optional.

### NetBSD

#### `x3270`

1. To install `x3270`, first configure the Package system:
1. Using `su` or `sudo`:
   * `pkg_add x3270`

#### `c3270`

As of this writing, `c3270` is not available as a NetBSD port, and must be build by hand.

1. Configure the Package system:
1. Install `gmake`:
   * `pkg_add gmake`
1. Fetch the suite3270 source and build it:
   * Check http://x3270.bgp.nu/download.html  for the latest version.  
     (The following assumes (version 3.6ga8).
   * `ftp http://x3270.bgp.nu/download/03.06/suite3270-3.6ga8-src.tgz`
   * `tar zxf suite3270-3.6ga8-src.tgz`
   * `cd suite3270-3.6/`
   * `./configure --enable-c3270`
   * `gmake`
 1. Using `su` or `sudo`:
    * `gmake install install.man`

### Installing `wc3270` on Windows Windows

If you must run from a console Window, download from http://x3270.bgp.nu/download.html and install:
* `wc3270`

## Using Under X Windows (via `x3270`)

See the [dot.x3270pro documentation](dot.x3270pro.md) file.

## Using in a terminal Window (via `c3270`)

See the [dot.c3270pro documentation](dot.c3270pro.md) file.

## Using on a Windows (via `wc3270`)

***NOTE***: If running Windows 10 and it is otherwise possible, use the Windows Subsystem for Linux to install and run the `x3270` version.  The Windows version is a console application, and more limited in functionality.

This section to _To Be Determined_.
