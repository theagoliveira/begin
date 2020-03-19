# Begin

Script used to install everything in a Manjaro/Windows 10 dual boot fresh install

## What to backup before formatting

- Text editors settings
- Shortcuts, mimeapps lists and configs with `sh backup_configs.sh`
- Dolphin configs

## Linux (Manjaro KDE)

### Steps

01. Check **Set time and date automatically** and **Hardware clock in local time zone** (dual boot with Windows 10)
01. Edit grub settings with `sudo nano /etc/default/grub` and set `GRUB_TIMEOUT=25`
01. Unmount the Files partition and run the commands on `auto_mount_files.sh` (use ls to print the commands before unmounting)
01. `sh create_new_folders.sh`
01. Update system with **Package Manager**
01. `sh install_yay.sh`
01. `yay -Syyuu --devel`
01. `sh install_go_apps.sh`
01. `sh install_programs.sh`
01. `sh download_portable_apps.sh`
01. `sh install_fonts.sh`
01. `sh install_text_editors.sh`
01. `sh install_texlive.sh`
01. `sh install_printer_drivers.sh`
01. `sh install_asdf.sh`
01. Restart shell
01. `sh install_zsh.sh`
01. `sh install_zsh_addons.sh`
01. Restart shell
01. `cd $HOME; wget -O ".dircolors" "https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.256dark"`
01. Configure Oh-My-Zsh, Powerlevel10k and asdf
01. `sh install_asdf_plugins.sh`
01. `sh install_ruby_gems.sh`
01. `sh install_python_packages.sh`
01. `sh global_git_config.sh`

### Programs

#### Firefox

- Activate sync
- Configure appearance
- Edit preferences

#### Oh-My-Zsh

- Update `$HOME/.zshrc` and `$HOME/.p10k.zsh`

#### asdf

- [Add to shell](https://asdf-vm.com/#/core-manage-asdf-vm?id=add-to-your-shell) (replace '$HOME/.asdf' with '/opt/asdf-vm')

#### Dropbox

- Login

#### Manjaro Configurations

- Setup icons-only task manager
- Configure shortcuts
- Configure file associations
- Change alt + click behavior to meta + click (System Settings -> Window Management -> Window Behavior -> Window Actions)

#### Dolphin

- Edit preferences
- Configure UP shortcut
- Configure places

#### Calibre

- Add libraries

#### Terminator

- Update config

#### Spotifyd

- Edit configurations
- `sudo wget -P "$HOME/.config/systemd/user" "https://raw.githubusercontent.com/Spotifyd/spotifyd/master/contrib/spotifyd.service"`
- `sudo systemctl --user enable spotifyd.service`
- `sudo systemctl --user start spotifyd.service`

#### Steam

- Activate previously installed games
- Download when gaming

#### Konsole / Yakuake

- Edit font and color scheme

#### mps-youtube

- Edit configurations

#### VSCode

- Install Settings Sync and recover settings

#### Sublime Text

- Install Package Control
  - View > Show Console > Run command below
- Install SyncSettings package and recover settings

``` shell
# One-liner to install Package Control
import urllib.request,os,hashlib; h = '6f4c264a24d933ce70df5dedcf1dcaee' + 'ebe013ee18cced0ef93d5f746d80ef60'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)
```

### Configs

- [KDE Shortcuts](https://forum.kde.org/viewtopic.php?t=151477#p398067)
  - `$HOME/.config/kdeglobals`
  - `$HOME/.config/kglobalshortcutsrc`
  - `$HOME/.config/khotkeysrc`
  - `$HOME/.config/kwinrc`
  - `$HOME/.config/plasma-org.kde.plasma.desktop-appletsrc`
  - `$HOME/.local/share/kxmlgui5/katepart/katepart5ui.rc`
  - `$HOME/.local/share/kxmlgui5/konsole/konsoleui.rc`
  - `$HOME/.local/share/kxmlgui5/konsole/sessionui.rc`
  - `$HOME/.local/share/kxmlgui5/kwrite/kwriteui.rc`
- KDE `mimeapps.list` Files
  - `$HOME/.config/kde-mimeapps.list`
  - `$HOME/.config/mimeapps.list`
  - `/etc/xdg/kde-mimeapps.list`
  - `/etc/xdg/mimeapps.list`
  - `$HOME/.local/share/applications/mimeapps.list`
  - `$HOME/.local/share/applications/kde-mimeapps.list`
  - `/usr/local/share/applications/kde-mimeapps.list`
  - `/usr/share/applications/kde-mimeapps.list`
  - `/usr/local/share/applications/mimeapps.list`
  - `/usr/share/applications/mimeapps.list`
- powerlevel10k: `$HOME/.p10k.zsh`
- spotifyd: `$HOME/.config/spotifyd/spotifyd.conf`
- terminator: `$HOME/.config/terminator/config`
- zsh: `$HOME/.zshrc`

## Windows 10

### Steps

Check [kelps/repave-scripts](https://github.com/kelps/repave-scripts/blob/master/install.bat)

## Optional

### Using stylistic sets in VSCode

- Install extension [Custom CSS and JS Loader](https://marketplace.visualstudio.com/items?itemName=be5invis.vscode-custom-css) ([GitHub](https://github.com/be5invis/vscode-custom-css))
- Create file `$HOME/Apps/vscode/stylistic_sets.css`
- Uncomment the following lines in settings JSON
  - `"vscode_custom_css.imports": ["file:///home/thiago/Apps/vscode/stylistic_sets.css"],`
  - `"vscode_custom_css.policy": true,`
- Run `sudo chown -R $(whoami) /opt/visual-studio-code/`
- Restart VSCode
- Activate command "Reload Custom CSS and JS"
- Restart VSCode

## References

### alsa-utils

- [Manjaro Linux Forum: No sound on headphones](https://forum.manjaro.org/t/no-sound-on-headphones/6489/28)
- [Arch Linux Forums: [Solved] No sound on headphone jack(s), internal speakers are working](https://bbs.archlinux.org/viewtopic.php?id=231683)

### recode

- [Stack Overflow: Find/Replace htmlentities using the standard linux toolchain?](https://stackoverflow.com/questions/3322820/find-replace-htmlentities-using-the-standard-linux-toolchain)
- [Stack Overflow: Bash script to convert from HTML entities to characters](https://stackoverflow.com/questions/5929492/bash-script-to-convert-from-html-entities-to-characters)
