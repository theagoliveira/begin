#!/usr/bin/env bash

cd "$CODE/begin" || exit

rm keyboard_shortcuts.tar.gz
rm mimeapps_list.tar.gz
rm configs.tar.gz
rm dolphin_configs.tar.gz
rm skins.tar.gz

shopt -s globstar

files=$(for n in "$HOME"/.{config/{kdeglobals,kglobalshortcutsrc,khotkeysrc,plasma-org.kde.plasma.desktop-appletsrc,kwinrc},local/share/kxmlgui5/{katepart/katepart5,konsole/{konsole,session},kwrite/kwrite}ui.rc}; do if [[ -f "$n" ]]; then printf '%s\n' "$n"; fi; done)
tar czf keyboard_shortcuts.tar.gz $files

files=$(for n in {"$HOME"/{.config,.local/share/applications},/etc/xdg,/usr{/local,}/share/applications}/{kde-,}{mimeapps.list,mimeinfo.cache}; do if [[ -f "$n" ]]; then printf '%s\n' "$n"; fi; done)
tar czf mimeapps_list.tar.gz $files

files=$(for n in "$HOME"/{.oh-my-zsh/plugins/web-search/web-search.plugin.zsh,.pythonrc,.p10k.zsh,.zshrc,.config/{plasmarc,spotifyd/spotifyd.conf,terminator/config,sublime-text-3/Packages/User/SyncSettings.sublime-settings,mps-youtube/config,mpv/{input.conf,mpv.conf},yakuakerc},.local/share/konsole/{default.dark.colorscheme,Shell.profile}}; do if [[ -f "$n" ]]; then printf '%s\n' "$n"; fi; done)
tar czf configs.tar.gz $files

files=$(for n in "$HOME"/{.config/dolphinrc,.local/share/{kxmlgui5/dolphin/dolphinui.rc,user-places.xbel}}; do if [[ -f "$n" ]]; then printf '%s\n' "$n"; fi; done)
tar czf dolphin_configs.tar.gz $files

files=$(for n in "$HOME"/.local/share/{yakuake/kns_skins/monochrome/,plasma/desktoptheme/ChromeOS/}**/*; do if [[ -f "$n" ]]; then printf '%s\n' "$n"; fi; done)
tar czf skins.tar.gz $files

shopt -u globstar
