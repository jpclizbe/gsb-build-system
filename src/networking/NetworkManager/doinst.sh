ldconfig -r .
function install_file() {
  # $1 = File to process

  FILE="$(dirname "$1")/$(basename "$1" .new)"
  if [ ! -e "$FILE" ]
  then
    mv "$FILE.new" "$FILE"
  elif [ "$(cat "$FILE" | md5sum)" != "$(cat "$FILE.new" | md5sum)" ]
  then
    # We need to make sure to install our version of the file;
    # Move the old versions out of the way.
    if [ -f "$FILE" ];
    then
            mv "$FILE" "$FILE".old.$(date +%m%d%y);
    fi;
    # Install our new file.
    mv "$FILE.new" "$FILE"
  else
    rm -f "$FILE.new"
  fi
}

install_file etc/rc.d/rc.networkmanager.new
install_file etc/rc.d/rc.networkmanager-dispatcher.new

## If rc.local doesn't exist, create it
if [ ! -e etc/rc.d/rc.local ]; then
	echo "#!/bin/sh" > etc/rc.d/rc.local
	chmod 755 etc/rc.d/rc.local
fi

## If rc.local_shutdown doesn't exist, create it
if [ ! -e etc/rc.d/rc.local_shutdown ]; then
	echo "#!/bin/sh" > etc/rc.d/rc.local_shutdown
	chmod 755 etc/rc.d/rc.local_shutdown
fi
	
## If the netdev group don't exist, add them:
## 
if grep "^netdev::" etc/group 1> /dev/null 2> /dev/null ; then
  true
else
  echo "netdev::87:avahi" >> etc/group
fi

# if rc.networkmanager is executable, run it on startup
run=`grep ". /etc/rc.d/rc.networkmanager" etc/rc.d/rc.local`
if [[ "${run}" == "" ]]; then
cat << EOF >>etc/rc.d/rc.local

# To disable networkmanager, chmod rc.networkmanager to 644
if [ -x /etc/rc.d/rc.networkmanager ]; then
  . /etc/rc.d/rc.networkmanager start
fi
EOF
fi

# if rc.networkmanager is executable, stop on shutdown
run=`grep ". /etc/rc.d/rc.networkmanager" etc/rc.d/rc.local_shutdown`
if [[ "${run}" == "" ]]; then
cat << EOF >>etc/rc.d/rc.local_shutdown

# To disable networkmanager shutdown, chmod rc.networkmanager to 644
if [ -x /etc/rc.d/rc.networkmanager ]; then
  . /etc/rc.d/rc.networkmanager stop
fi
EOF
fi

## 
## Complain if dbus somehow was removed, and disable autostart.
##
if [ ! -f etc/rc.d/rc.messagebus ]; then
	echo "NetworkManager requires dbus.  You appear to be missing /etc/rc.d/rc.messagebus."
	echo "Perhaps you need to reinstall the dbus package?"
    chmod -x etc/rc.d/rc.networkmanager*;
fi;

## 
## Make dbus executable if NetworkManager is installed
##
if [ ! -x etc/rc.d/rc.messagebus ]; then
    chmod +x etc/rc.d/rc.messagebus;
fi;
  
##
## Restart dbus (reload NetworkManager info), and start services
##
#if [ -x etc/rc.d/rc.messagebus ]; then
    #chmod +x etc/rc.d/rc.networkmanager*;
    #. etc/rc.d/rc.messagebus restart;
    #. etc/rc.d/rc.networkmanager restart;
#fi;

# By default, disable NetworkManager.  Users must enable if they wish.
chmod -x etc/rc.d/rc.networkmanager*;

cat << EOF

Note for Slackware Users:
-----
To allow users to connect to the NetworkManager daemon, they have to be in the
group "netdev". 

By default, NetworkManager is disabled.  In order to enable it, you will need to 
restart the dbus message system to load the new NetworkManager settings, and make
the /etc/rc.d/rc.networkmanager executable.
EOF