#!/usr/bin/env bash

snap remove blender
snap remove gimp
snap remove inkscape
snap remove libreoffice

dpkg --remove --purge lightworks

apt-get autoremove