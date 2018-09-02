
Debian
====================
This directory contains files used to package genzycoind/genzycoin-qt
for Debian-based Linux systems. If you compile genzycoind/genzycoin-qt yourself, there are some useful files here.

## genzycoin: URI support ##


genzycoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install genzycoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your genzycoinqt binary to `/usr/bin`
and the `../../share/pixmaps/genzycoin128.png` to `/usr/share/pixmaps`

genzycoin-qt.protocol (KDE)

