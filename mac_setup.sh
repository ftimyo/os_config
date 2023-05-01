#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Please provide a hostname as an argument."
  exit 1
fi

echo "Setting hostname to $1"
sudo scutil --set HostName "$1"
sudo scutil --set ComputerName "$1"
sudo scutil --set LocalHostName "$1"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$1"
dscacheutil -flushcache


echo "Setting zsh as the default shell"
sudo dscl . -create /Users/$USER UserShell /bin/zsh

echo "Hostname set to $1 and zsh set as default shell successfully!"
exit 0
