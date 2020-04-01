#!/usr/bin/env bash

yay -S --noconfirm alsa-utils
yay -S --noconfirm broot
yay -S --noconfirm byzanz
yay -S --noconfirm calibre
yay -S --noconfirm clang
yay -S --noconfirm cpdf-bin
yay -S --noconfirm czmq
yay -S --noconfirm discord
yay -S --noconfirm docker

sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo gpasswd -a thiago docker

yay -S --noconfirm dropbox
yay -S --noconfirm etcher
yay -S --noconfirm fbreader
yay -S --noconfirm fff
yay -S --noconfirm freetype2-cleartype
yay -S --noconfirm gimp
yay -S --noconfirm gimp-fourier
yay -S --noconfirm gnuplot
yay -S --noconfirm hardinfo
yay -S --noconfirm heroku-cli
yay -S --noconfirm html-xml-utils
yay -S --noconfirm inkscape
yay -S --noconfirm jabref
yay -S --noconfirm jdk8-openjdk # tuxguitar dependency
yay -S --noconfirm jdownloader2
# yay -S --noconfirm jq # Installed by balena-etcher
yay -S --noconfirm kaccounts-integration
yay -S --noconfirm kcharselect
yay -S --noconfirm kicad
yay -S --noconfirm kio-gdrive

echo "KIO GDrive Usage: https://community.kde.org/KIO_GDrive#Usage"

yay -S --noconfirm krename
yay -S --noconfirm ktikz
yay -S --noconfirm libkgapi
yay -S --noconfirm librecad
yay -S --noconfirm lxsplit
yay -S --noconfirm mp3wrap
yay -S --noconfirm mpv
yay -S --noconfirm mupdf
yay -S --noconfirm mupdf-tools
yay -S --noconfirm neofetch
yay -S --noconfirm nnn
yay -S --noconfirm obs-studio
yay -S --noconfirm pandoc
yay -S --noconfirm pdfpc
yay -S --noconfirm pdftk
yay -S --noconfirm perl-xml-xpath
yay -S --noconfirm piper
yay -S --noconfirm postgresql
yay -S --noconfirm postgresql-libs

echo "PostgreSQL initial configuration: https://wiki.archlinux.org/index.php/PostgreSQL#Initial_configuration"
# sudo -iu postgres
# initdb -D /var/lib/postgres/data
# sudo systemctl start postgresql.service
# sudo systemctl enable postgresql.service
# sudo nano /var/lib/postgres/data/postgresql.conf (uncomment "listen_addresses = 'localhost'" and "port = 5432")
# sudo systemctl restart postgresql.service

yay -S --noconfirm pstoedit
yay -S --noconfirm qbittorrent
yay -S --noconfirm qpdf
yay -S --noconfirm recode
yay -S --noconfirm reflector
yay -S --noconfirm shellcheck
yay -S --noconfirm spotifyd

echo "Spotifyd configuration: https://github.com/Spotifyd/spotifyd#configuration"

yay -S --noconfirm terminator
yay -S --noconfirm tree
yay -S --noconfirm tuxguitar
yay -S --noconfirm woeusb-git

# SysPat

yay -S --noconfirm libmagick6
yay -S --noconfirm imagemagick
