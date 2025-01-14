#!/bin/sh

CFLAGS="-O0 -g -DDEBUG -Werror=format" \
../configure --prefix=`pwd`/data/usr \
--enable-debug \
--disable-xorg --disable-dmx --disable-xvfb --disable-xnest --disable-xquartz --disable-xwin \
--enable-xephyr --disable-xfake --disable-xfbdev --disable-unit-tests \
--disable-shm --disable-mitshm --disable-dri --disable-dri2 --disable-glx --disable-xf86vidmode \
--disable-xsdl --enable-kdrive --enable-kdrive-kbd --enable-kdrive-mouse --enable-kdrive-evdev \
--disable-libdrm \
|| exit 1

nice -n19 make -j8
