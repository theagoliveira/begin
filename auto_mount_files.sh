#!/usr/bin/env bash

sudo blkid
read -r -p "UUID: " UUID
sudo sh -c "echo 'UUID=$UUID /mnt/Files ntfs-3g nls=iso8859-1,auto,users,permissions,rw,exec 0 2' >> /etc/fstab"
sudo cat /etc/fstab
sudo mount -a
sudo chown "$USER":"$USER" "/mnt/Files/Games/SteamLinux"
