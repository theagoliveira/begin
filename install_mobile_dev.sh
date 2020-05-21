#!/usr/bin/env bash

yay -S --noconfirm dart
yay -S --noconfirm android-sdk
yay -S --noconfirm android-sdk-build-tools
yay -S --noconfirm android-sdk-platform-tools
yay -S --noconfirm android-platform
yay -S --noconfirm android-ndk

cd /opt || exit
sudo git clone https://github.com/flutter/flutter.git -b master

sudo groupadd flutterusers
sudo gpasswd -a thiago flutterusers
sudo chown -R :flutterusers /opt/flutter
sudo chown -R :flutterusers /opt/android-sdk
sudo chmod -R g+w /opt/flutter
sudo chmod -R g+w /opt/android-sdk
newgrp flutterusers
flutter precache
flutter doctor -v

"$ANDROID_HOME"/tools/bin/sdkmanager --licenses
sudo "$ANDROID_HOME"/tools/bin/sdkmanager --licenses

sudo touch /root/.android/repositories.cfg
touch "$HOME"/.android/repositories.cfg

# flutter channel master
flutter upgrade
