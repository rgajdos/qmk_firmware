#!/bin/bash

cflags="-Wno-error=deprecated"
keyboard="planck/rev6"
keymap="rgajdos"
bootloader="dfu-util"

makeparams="$keyboard:$keymap"
if [[ ! -z "$1" && "$1" -eq "flash" ]]; then
	makeparams="$makeparams:$bootloader"
fi

CFLAGS="$cflags" make "$makeparams"
