#!/usr/bin/env bash

python -m pip install --user pipx
python -m pipx ensurepath

pipx install autopep8
pipx install lxml # No apps associated
pipx install matplotlib --include-deps # No apps associated
pipx install numpy
pipx install pycodestyle
pipx install Pygments
pipx install pylint
pipx install pyqtgraph --include-deps # No apps associated
pipx install reprint # No apps associated
pipx install robobrowser --include-deps # No apps associated
pipx install jupyter --include-deps
pipx install jupyter-c-kernel
pipx inject jupyter-c-kernel jupyter
pipx inject jupyter jupyter-c-kernel
pipx install mps-youtube
pipx inject mps-youtube youtube-dl
pipx install youtube-dl

# BUKU

pipx install certifi  # No apps associated
pipx install urllib3  # No apps associated
pipx install cryptography  # No apps associated
pipx install beautifulsoup4  # No apps associated
pipx install buku
pipx inject buku flask
pipx inject buku flask.cli
pipx inject buku flask_admin
pipx inject buku flask_api
pipx inject buku flask_bootstrap
pipx inject buku flask_paginate
pipx inject buku flask_wtf
pipx inject buku arrow

python -m pip install -U ebooklib --user
python -m pip install -U feedparser --user
python -m pip install -U youtube_dl --user
python -m pip install -U buku --user
python -m pip install -U pytz --user
python -m pip install -U wget --user

asdf reshim python 3.8.0

install_c_kernel --user
