#!/bin/sh

make -j8 || exit 1

export SECURE_STORAGE_DIR=`pwd`

ln -sf /usr .
mkdir -p tmp

if [ -z "$1" ]; then
	hw/kdrive/sdl/Xsdl :1 -audit 3 -screen 640x480x32 -listen inet -listen inet6 -nolisten unix -nopn -exec "x-window-manager & xlogo & xev & xclock -update 1 & xloadimage -onroot -fullscreen background.bmp"
else
	gdb --args hw/kdrive/sdl/Xsdl :1 -exec xlogo
fi
