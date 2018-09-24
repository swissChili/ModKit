# Modkit
Open source TF2 mod-manager for Linux.

## Installation
```sh
# change into the src directory
cd src
# make the installer executable
chmod +x install.sh
# run the installer
./install.sh
```
If you don't have Perl 6 installed you will be prompted to install it. 
If you do, the installation should work fine.
You can download an up-to-date version from the Perl 6 [website](https://perl6.org/downloads/)
or from your distribution's package manager.

## Usage
ModKit registers itself as a handler for the `modkit:` URI scheme. Please note
that this only works on distributions that supprot `xdg-open`. This comes with
Gnome, Plasma, and most other desktop environments. If it is not installed
on your system, please install it or this software will not work. 

If you would like to install a mod from the terminal, run 
```sh
modkit --install=github.com/CriticalFlaw/flawhud
```
This should install the CriticalFlaw/flawhud repo to your TF2 custom directory

To provide a link to a one-click install for your mod, just make a link
on your website or repo to `modkit:github.com/user/repo` for ModKit
users to install it by clicking the link. 
