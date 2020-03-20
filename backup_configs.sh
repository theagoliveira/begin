#!/usr/bin/env bash

cd "$CODE/begin" || exit

rm keyboard_shortcuts.tar.gz
rm mimeapps_list.tar.gz
rm configs.tar.gz
rm dolphin_configs.tar.gz

tar -czf keyboard_shortcuts.tar.gz $(ls $(echo "$HOME"/.{config/{kdeglobals,kglobalshortcutsrc,khotkeysrc,plasma-org.kde.plasma.desktop-appletsrc,kwinrc},local/share/kxmlgui5/{katepart/katepart5,konsole/{konsole,session},kwrite/kwrite}ui.rc}) 2>/dev/null)
tar -czf mimeapps_list.tar.gz $(ls $(echo {"$HOME"/{.config,.local/share/applications},/etc/xdg,/usr{/local,}/share/applications}/{kde-,}mimeapps.list) 2>/dev/null)
tar -czf configs.tar.gz $(ls $(echo "$HOME"/{.oh-my-zsh/plugins/web-search/web-search.plugin.zsh,.pythonrc,.p10k.zsh,.zshrc,.config/{plasmarc,spotifyd/spotifyd.conf,terminator/config,sublime-text-3/Packages/User/SyncSettings.sublime-settings,mps-youtube/config},.local/share/konsole/{default.dark.colorscheme,Shell.profile}}) 2>/dev/null)
tar -czf dolphin_configs.tar.gz $(ls $(echo "$HOME"/{.config/dolphinrc,.local/share/{kxmlgui5/dolphin/dolphinui.rc,user-places.xbel}}) 2>/dev/null)
