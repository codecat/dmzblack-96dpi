#!/bin/sh
cd DMZ-Black-96dpi/pngs
./make.sh
cd ../..
cp -r DMZ-Black-96dpi /usr/share/icons/
./change_cursor.sh
