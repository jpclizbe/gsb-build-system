if [ -x usr/bin/rarian-sk-update ]; then
  usr/bin/rarian-sk-update -p var/lib/scrollkeeper 1> /dev/null 2> /dev/null
fi

if [ -x usr/bin/update-desktop-database ]; then
  usr/bin/update-desktop-database 1> /dev/null 2> /dev/null
fi
