#!/usr/bin/bash

echo "> BBQLinux GSettings"

mkdir -p ~/.bbqlinux

NEW_VERSION=20141005
if [ ! -f ~/.bbqlinux/.gsettings ] || [ "$1" == "init" ]
then
    echo "Applying initial settings."
    # Interface
    gsettings set org.mate.interface gtk-theme 'BBQLinux'
    gsettings set org.mate.interface icon-theme 'gnome-carbonite'

	# Marco
    gsettings set org.mate.Marco.general theme 'BBQLinux'

    # Background
    gsettings set org.mate.background picture-filename '/usr/share/backgrounds/bbqlinux/bbqlinux_wallpaper_00.jpg'

    # Font rendering
    gsettings set org.mate.font-rendering antialiasing 'rgba'
    gsettings set org.mate.font-rendering dpi 96.0
    gsettings set org.mate.font-rendering hinting 'slight'
    gsettings set org.mate.font-rendering rgba-order 'rgb'

    # Mate terminal
    gsettings set org.mate.terminal.profile:/org/mate/terminal/profiles/default/ default-size-columns 100
    gsettings set org.mate.terminal.profile:/org/mate/terminal/profiles/default/ default-size-rows 30
    gsettings set org.mate.terminal.profile:/org/mate/terminal/profiles/default/ use-custom-default-size true
    gsettings set org.mate.terminal.profile:/org/mate/terminal/profiles/default/ use-theme-colors true
    gsettings set org.mate.terminal.profile:/org/mate/terminal/profiles/default/ scrollback-unlimited true
    gsettings set org.mate.terminal.profile:/org/mate/terminal/profiles/default/ visible-name 'Default'

    touch ~/.bbqlinux/.gsettings
    echo ${NEW_VERSION} > ~/.bbqlinux/.gsettings
	echo "Done."
fi

CURRENT_VERSION=$(cat ~/.bbqlinux/.gsettings)
NEW_VERSION=20141003
if [ ${CURRENT_VERSION} -lt ${NEW_VERSION} ]
then
    echo "Upgrading from ${CURRENT_VERSION} to ${NEW_VERSION}"

    # Interface
    gsettings set org.mate.interface gtk-theme 'BBQLinux'
    gsettings set org.mate.interface icon-theme 'gnome-carbonite'

	# Marco
    gsettings set org.mate.Marco.general theme 'BBQLinux'

    echo ${NEW_VERSION} > ~/.bbqlinux/.gsettings
	echo "Done."
fi

CURRENT_VERSION=$(cat ~/.bbqlinux/.gsettings)
NEW_VERSION=20141005
if [ ${CURRENT_VERSION} -lt ${NEW_VERSION} ]
then
    echo "Upgrading from ${CURRENT_VERSION} to ${NEW_VERSION}"

    # Mate Terminal
    gsettings set org.mate.terminal.profile:/org/mate/terminal/profiles/default/ use-theme-colors true

    echo ${NEW_VERSION} > ~/.bbqlinux/.gsettings
	echo "Done."
fi

exit 0
