#!/bin/sh

##Symple script to check if night-light is enable and if true inform user how remove

#Status of the key

light_status=$(sudo -u gdm dbus-launch --exit-with-session gsettings get org.gnome.settings-daemon.plugins.color night-light-enabled)

_user=$(id -u gdm)

check_light() {
#Check the key and inform
if [ "$light_status" == true ] ; then
	echo
	echo "Night-light feature is enabled also in GDM screen, see"
	echo "here : https://bugzilla.gnome.org/show_bug.cgi?id=785273"
	echo "for more info."
	echo "If you want to disable it please type this command:"
	echo 
	echo "sudo -u gdm dbus-launch --exit-with-session gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled false"
	echo	
fi
}

if [ "$_user" == 120 ]; then
	check_light
fi
