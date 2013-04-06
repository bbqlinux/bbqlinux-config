#!/usr/bin/bash

if [ ! -f ~/.bbqlinux_gsettings ]
then
    # Interface
    gsettings set org.mate.interface gtk-theme 'Shiki-Brave'
    gsettings set org.mate.interface icon-theme 'gnome-brave'

	# Marco
	gsettings set org.mate.Marco.general theme 'Shiki-Colors-Metacity'

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
    gsettings set org.mate.terminal.profile:/org/mate/terminal/profiles/default/ background-color '#2C892C892C89'
    gsettings set org.mate.terminal.profile:/org/mate/terminal/profiles/default/ foreground-color '#C420C420C420'
    gsettings set org.mate.terminal.profile:/org/mate/terminal/profiles/default/ bold-color '#000000000000'
    gsettings set org.mate.terminal.profile:/org/mate/terminal/profiles/default/ palette '#2E2E34343636:#CCCC00000000:#4E4E9A9A0606:#C4C4A0A00000:#34346565A4A4:#757550507B7B:#060698209A9A:#D3D3D7D7CFCF:#555557575353:#EFEF29292929:#8A8AE2E23434:#FCFCE9E94F4F:#72729F9FCFCF:#ADAD7F7FA8A8:#3434E2E2E2E2:#EEEEEEEEECEC'
    gsettings set org.mate.terminal.profile:/org/mate/terminal/profiles/default/ use-theme-colors false
	gsettings set org.mate.terminal.profile:/org/mate/terminal/profiles/default/ scrollback-unlimited true
	gsettings set org.mate.terminal.profile:/org/mate/terminal/profiles/default/ visible-name 'Default'

    touch ~/.bbqlinux_gsettings
    echo $(date +"%Y%m%d") > ~/.bbqlinux_gsettings
fi

exit 0
