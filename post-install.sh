#!/bin/zsh

add_asdf_plugins ~/.plugin-versions
asdf install

dockutil --remove "Microsoft OneNote" --no-restart
dockutil --remove "Microsoft Word" --no-restart
dockutil --remove "Microsoft PowerPoint" --no-restart
dockutil --move "Google Chrome" --position 3 --no-restart
dockutil --move "Microsoft Outlook" --position 4 --no-restart
dockutil --add "/Applications/Microsoft Teams classic.app"  --after "Microsoft Outlook"
