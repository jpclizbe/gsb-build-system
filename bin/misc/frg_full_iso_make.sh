#!/bin/sh

FRG=2.12.0
GNOME=2.12.0

ISO_NAME="frg-${FRG}-${GNOME}.iso"

FRG_ROOT=/home/storage/pub/frg/

/usr/bin/mkisofs \
    -R -J -o ${ISO_NAME} \
    -V "FRG ${FRG}" \
    -A "Freerock GNOME ${FRG}" \
    $FRG_ROOT/frg-$FRG/


/usr/bin/md5sum \
    ${ISO_NAME} > \
    ${ISO_NAME}.md5

