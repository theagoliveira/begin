#!/usr/bin/env bash

# yay -S --noconfirm adobe-source-code-pro-fonts # Monospaced font family for user interface and coding environments (already installed)
yay -S --noconfirm awesome-terminal-fonts      # fonts/icons for powerlines
yay -S --noconfirm nerd-fonts-complete         # Iconic font aggregator, collection, and patcher. 40+ patched fonts, over 3,600 glyph/icons, includes popular collections such as Font Awesome & fonts such as Hack
yay -S --noconfirm font-victor-mono            # A programming font with cursive italics and ligatures
yay -S --noconfirm ipa-fonts                   # Japanese outline Mincho fonts implementing IVS compliant with Hanyo-Denshi collection (based on IPAex Mincho fonts)
yay -S --noconfirm otf-fira-code               # Monospaced font with programming ligatures
yay -S --noconfirm otf-hasklig                 # A font with symbol ligatures, intended for Haskell code
yay -S --noconfirm otf-latin-modern            # Improved version of Computer Modern fonts as used in LaTeX
yay -S --noconfirm powerline-fonts             # patched fonts for powerline
yay -S --noconfirm gnu-free-fonts              # A free family of scalable outline fonts
yay -S --noconfirm ttf-hack                    # A hand groomed and optically balanced typeface based on Bitstream Vera Mono.
yay -S --noconfirm ttf-humor-sans              # A sanserif typeface in the style of xkcd.
yay -S --noconfirm ttf-iosevka                 # A slender monospace typeface. Shape: default
yay -S --noconfirm ttf-ms-fonts                # Core TTF Fonts from Microsoft
yay -S --noconfirm ttf-font-awesome            # Iconic font designed for Bootstrap
yay -S --noconfirm ttf-ibm-plex                # IBM Plex Mono, Sans, and Serif
yay -S --noconfirm ttf-linux-libertine         # Serif (Libertine) and Sans Serif (Biolinum) OpenType fonts with large Unicode coverage

# INPUT MONO
wget -O "Input-Font.zip" "http://input.fontbureau.com/build/?fontSelection=fourStyleFamily&regular=InputMono-Regular&italic=InputMono-Italic&bold=InputMono-Bold&boldItalic=InputMono-BoldItalic&a=ss&g=ss&i=topserif&l=topserif&zero=slash&asterisk=0&braces=straight&preset=default&line-height=1.2&accept=I+do&email="
unzip -j Input-Font.zip "Input_Fonts/Input/*.ttf" -d "$HOME/.fonts"
fc-cache -fv
rm -f 'Input-Font.zip'

# JETBRAINS MONO
wget -O "JetBrainsMono.zip" "https://download.jetbrains.com/fonts/JetBrainsMono-1.0.0.zip"
unzip -j JetBrainsMono.zip "*.ttf" -d "$HOME/.fonts"
fc-cache -fv
rm -f 'JetBrainsMono.zip'

# LIGATURE DROID SANS MONO
wget -O "$HOME/.fonts/LigaDroidSansMono.ttf" "https://github.com/abogoyavlensky/DroidCode/raw/master/LigaDroidSansMono.ttf"
fc-cache -fv

# AILERON
wget -O "aileron.zip" "https://dotcolon.net/download/fonts/aileron_0102.zip"
unzip -j "aileron.zip" "*.otf" -d "$HOME/.fonts"
fc-cache -fv
rm -f "aileron.zip"

# SCUNTHORPE
wget -O "scunthorpe-sans.zip" "https://vole.wtf/scunthorpe-sans/scunthorpe-sans.zip?v=2"
unzip -j "scunthorpe-sans.zip" "*.otf" -d "$HOME/.fonts"
fc-cache -fv
rm -f "scunthorpe-sans.zip"

# https://www.reddit.com/r/archlinux/comments/5r5ep8/make_your_arch_fonts_beautiful_easily/
sudo ln -s /etc/fonts/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d
sudo ln -s /etc/fonts/conf.avail/10-sub-pixel-rgb.conf /etc/fonts/conf.d
sudo ln -s /etc/fonts/conf.avail/11-lcdfilter-default.conf /etc/fonts/conf.d
