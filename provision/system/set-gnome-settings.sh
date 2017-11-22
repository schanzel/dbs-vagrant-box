#!/usr/bin/env bash

# Set Keyboard to German
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'de'), ('xkb', 'us')]"

# disable screen saver
gsettings set org.gnome.desktop.screensaver idle-activation-enabled false

# turn off lock screen
gsettings set org.gnome.desktop.screensaver lock-enabled false

# Set Favourites to Launcher
gsettings set com.canonical.Unity.Launcher favorites "['application://mysql-workbench.desktop', 'application://robo3t.desktop', 'application://eclipse-ide-java.desktop', 'application://org.gnome.Nautilus.desktop', 'application://firefox.desktop', 'application://gnome-terminal.desktop', 'unity://running-apps', 'unity://expo-icon', 'unity://devices']"
