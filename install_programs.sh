#!/usr/bin/env bash

autoload zmv # zsh mass rename program

yay -S --noconfirm audacity
yay -S --noconfirm alsa-utils
yay -S --noconfirm alacritty
yay -S --noconfirm anki
yay -S --noconfirm android-studio
yay -S --noconfirm atomicparsley
yay -S --noconfirm bat
yay -S --noconfirm broot
yay -S --noconfirm browsh-bin
yay -S --noconfirm btfs
yay -S --noconfirm byzanz
yay -S --noconfirm caffeine
yay -S --noconfirm calibre
yay -S --noconfirm cbonsai-git
yay -S --noconfirm cheese
yay -S --noconfirm clang
yay -S --noconfirm cpdf-bin
yay -S --noconfirm czmq
yay -S --noconfirm discord
yay -S --noconfirm docker
yay -S --noconfirm downgrade
yay -S --noconfirm droidcam

sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo gpasswd -a thiago docker

yay -S --noconfirm dropbox
yay -S --noconfirm eclipse-java-bin
yay -S --noconfirm emby-server

sudo systemctl enable emby-server.service
sudo systemctl start emby-server.service

yay -S --noconfirm etcher
yay -S --noconfirm exa
yay -S --noconfirm exercism-bin
yay -S --noconfirm farbfeld
yay -S --noconfirm fawkes
yay -S --noconfirm fbreader
yay -S --noconfirm fd
yay -S --noconfirm fff
yay -S --noconfirm findimagedupes
yay -S --noconfirm freerdp
yay -S --noconfirm freetype2-cleartype
yay -S --noconfirm fzf
yay -S --noconfirm gbacklight
yay -S --noconfirm gcc-fortran
yay -S --noconfirm gibo
yay -S --noconfirm gimp
yay -S --noconfirm gimp-fourier
yay -S --noconfirm git-delta
yay -S --noconfirm gnome-keyring
yay -S --noconfirm gnuplot
yay -S --noconfirm go-mtpfs-git
yay -S --noconfirm google-chrome
yay -S --noconfirm gron
yay -S --noconfirm guvcview
yay -S --noconfirm hardinfo
yay -S --noconfirm heroku-cli
yay -S --noconfirm html-xml-utils
yay -S --noconfirm httpie
yay -S --noconfirm inkscape
yay -S --noconfirm insomnia-bin
yay -S --noconfirm intellij-idea-ce
yay -S --noconfirm itch
yay -S --noconfirm jabref
yay -S --noconfirm jdk8-openjdk # tuxguitar dependency
yay -S --noconfirm jdownloader2
yay -S --noconfirm john # FIX: https://forum.manjaro.org/t/getting-pdf2john-pl-to-work/95140
# yay -S --noconfirm jq # Installed by balena-etcher
yay -S --noconfirm kaccounts-integration
yay -S --noconfirm kcharselect
yay -S --noconfirm keepassxc
yay -S --noconfirm kicad
yay -S --noconfirm kio-gdrive

echo "KIO GDrive Usage: https://community.kde.org/KIO_GDrive#Usage"

yay -S --noconfirm krename
yay -S --noconfirm krita
yay -S --noconfirm ktikz
yay -S --noconfirm libffi
yay -S --noconfirm libffi6
yay -S --noconfirm libkgapi
yay -S --noconfirm librecad
yay -S --noconfirm lorem-ipsum-generator
yay -S --noconfirm lutris
yay -S --noconfirm lxsplit
yay -S --noconfirm manjaro-printer
yay -S --noconfirm mp3wrap
yay -S --noconfirm mpv
yay -S --noconfirm mupdf
yay -S --noconfirm mupdf-tools
yay -S --noconfirm ncdu
yay -S --noconfirm neofetch
yay -S --noconfirm nnn
yay -S --noconfirm noisetorch
yay -S --noconfirm nyxt-browser-git
yay -S --noconfirm obs-linuxbrowser
yay -S --noconfirm obs-studio
yay -S --noconfirm onefetch
yay -S --noconfirm ookla-speedtest-bin
yay -S --noconfirm ox-bin
yay -S --noconfirm pandoc
yay -S --noconfirm pavucontrol
yay -S --noconfirm parallel
yay -S --noconfirm pdfpc
yay -S --noconfirm pdfgrep
yay -S --noconfirm pdftk
yay -S --noconfirm perl-image-exiftool
yay -S --noconfirm perl-xml-xpath
yay -S --noconfirm piper
yay -S --noconfirm playonlinux
yay -S --noconfirm postgresql
# yay -S --noconfirm postgresql-12 # SysPat
yay -S --noconfirm postgresql-libs
yay -S --noconfirm postman-bin

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
yay -S --noconfirm qtkeychain
yay -S --noconfirm r
yay -S --noconfirm reaper-bin
yay -S --noconfirm recode
yay -S --noconfirm redshift
yay -S --noconfirm reflector
yay -S --noconfirm remmina # CONFIG: https://askubuntu.com/questions/74713/how-can-i-copy-paste-files-via-rdp-in-kubuntu
yay -S --noconfirm ripgrep
yay -S --noconfirm ripgrep-all
yay -S --noconfirm seahorse
yay -S --noconfirm shellcheck
yay -S --noconfirm shotcut
yay -S --noconfirm skypeforlinux-stable-bin
yay -S --noconfirm spotifyd-full-git

echo "Spotifyd configuration: https://github.com/Spotifyd/spotifyd#configuration"

yay -S --noconfirm tageditor
yay -S --noconfirm telegram-desktop-bin
yay -S --noconfirm terminator
yay -S --noconfirm ticker
yay -S --noconfirm tree
yay -S --noconfirm tuxguitar
yay -S --noconfirm unrar
yay -S --noconfirm wine-gecko
yay -S --noconfirm wine-mono
yay -S --noconfirm winetricks
yay -S --noconfirm wkhtmltopdf
yay -S --noconfirm wmctrl
yay -S --noconfirm woeusb-git
yay -S --noconfirm xdotool
yay -S --noconfirm zeal
yay -S --noconfirm zoxide

# SysPat

yay -S --noconfirm libmagick6
yay -S --noconfirm imagemagick

# NPM Apps

sudo npm install --global tldr
sudo npm install --global fkill-cli
sudo npm install --global chrome-headless-render-pdf
sudo npm install --global how-2
npm update --global --verbose

# WINE

winetricks corefonts
winetricks dotnet45
winetricks winhttp

# GIT

cd "$HOME/git" || exit
git clone https://github.com/r0oth3x49/udemy-dl.git
