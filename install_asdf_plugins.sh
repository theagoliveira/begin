#!/usr/bin/env bash

asdf plugin-add python
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git

asdf list-all python
asdf list-all ruby

echo "Install version with asdf install <name> <version>"

asdf install python 3.8.0

# SysPat
PKG_CONFIG_PATH=/usr/lib/openssl-1.0/pkgconfig CC=/usr/bin/gcc-6 asdf install ruby 2.3.3

# Web II
asdf install ruby 2.6.3

asdf global python 3.8.0
asdf global ruby 2.6.3

asdf reshim ruby 2.3.3
asdf reshim ruby 2.6.3
asdf reshim python 3.8.0