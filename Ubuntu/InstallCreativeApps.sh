#!/usr/bin/env bash

snap install blender
snap install gimp
snap install inkscape
snap install libreoffice
snap install freecad
snap install scribus

wget https://cdn.lwks.com/lightworks-14.5.0-amd64.deb
dpkg -i lightworks-14.5.0-amd64.deb
apt install -f