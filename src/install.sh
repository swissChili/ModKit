#!/usr/bin/env bash

echo "Installing ModKit, super user priveleges required"



echo "Making sure perl6 is installed"
p6_installed=$(which perl6)
if [ "$p6_installed" == "/usr/bin/perl6" ]; then
    echo "Perl 6 installed"
    mkdir -p /usr/share/icons/hicolor/scalable/apps
    sudo cp modkit.desktop /usr/share/applications/modkit.desktop
    sudo cp modkit_icon.svg /usr/share/icons/hicolor/scalable/apps/modkit.svg
    sudo cp modkit.p6 /usr/bin/modkit
    sudo chmod +x /usr/bin/modkit
else
    echo "Perl 6 not installed, please install it with your distribution's package manager"
    echo '
for debian-based systems: sudo apt install perl6'
fi
