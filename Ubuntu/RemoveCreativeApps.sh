#!/usr/bin/env bash

snap remove blender
snap remove gimp
snap remove inkscape
snap remove libreoffice
snap remove freecad
snap remove scribus

dpkg --remove --purge lightworks

apt-get autoremove