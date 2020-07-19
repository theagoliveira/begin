#!/usr/bin/env bash

python -m pip install --user pipx
python -m pipx ensurepath

python -m pip install -U beautifulsoup4 --user
python -m pip install -U buku --user
python -m pip install -U certifi --user
python -m pip install -U clipboard --user
python -m pip install -U cryptography --user
python -m pip install -U ebooklib --user
python -m pip install -U feedparser --user
python -m pip install -U flask --user
python -m pip install -U html5lib --user
python -m pip install -U htmlparser --user
python -m pip install -U lxml --user
python -m pip install -U matplotlib --user
python -m pip install -U numpy --user
python -m pip install -U ps_mem --user
python -m pip install -U pyqt5 --user
python -m pip install -U pyqtgraph --user
python -m pip install -U pyqtwebengine --user
python -m pip install -U python-dateutil --user
python -m pip install -U pytz --user
python -m pip install -U reprint --user
python -m pip install -U rich --user
python -m pip install -U robobrowser --user
python -m pip install -U urllib3 --user
python -m pip install -U "werkzeug<1" --user
python -m pip install -U wget --user
python -m pip install -U wheel --user
python -m pip install -U youtube_dl --user

asdf reshim python 3.8.0

pipx install autopep8
pipx install buku
pipx install jupyter --include-deps
pipx install jupyter-c-kernel
pipx install mps-youtube
pipx install pycodestyle
pipx install Pygments
pipx install pylint
pipx install youtube-dl

pipx inject buku arrow
pipx inject buku flask
pipx inject buku flask_admin
pipx inject buku flask_api
pipx inject buku flask_bootstrap
pipx inject buku flask_paginate
pipx inject buku flask_reverse_proxy_fix
pipx inject buku flask_wtf
pipx inject buku flask.cli
pipx inject buku "werkzeug<1"
pipx inject jupyter jupyter-c-kernel
pipx inject jupyter-c-kernel jupyter
pipx inject mps-youtube youtube-dl

asdf reshim python 3.8.0

install_c_kernel --user
