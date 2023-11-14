#!/bin/zsh
PrivilegesCLI --add

brew analytics off
brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts

brew update
brew upgrade

brew install --cask visual-studio-code-insiders
sudo ln -fs "/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin/code" /usr/local/bin/code-insiders
code-insiders --pre-release --install-extension GitHub.copilot
code-insiders --pre-release --install-extension GitHub.copilot-chat
code-insiders --install-extension eriklynd.json-tools
code-insiders --install-extension yzhang.markdown-all-in-one
code-insiders --install-extension darkriszty.markdown-table-prettify
code-insiders --install-extension DotJoshJohnson.xml
code-insiders --install-extension fabiospampinato.vscode-diff
code-insiders --install-extension tamasfe.even-better-toml

brew install asdf

brew install dockutil
sed -i '' '1 s/^#.*$/''#!\/usr\/bin\/env python2''/' /opt/homebrew/Cellar/dockutil/2.0.5/bin/dockutil
dockutil --remove "Messages" --no-restart
dockutil --remove "Mail" --no-restart
dockutil --remove "Photos" --no-restart
dockutil --remove "FaceTime" --no-restart
dockutil --remove "Calendar" --no-restart
dockutil --remove "Contacts" --no-restart
dockutil --remove "Reminders" --no-restart
dockutil --remove "Notes" --no-restart
dockutil --remove "Apple@SAP"

brew install font-fira-code font-fira-code-nerd-font font-meslo-lg font-meslo-lg-nerd-font
brew install cloudfoundry/tap/cf-cli@8 argocd gh jq yq
brew install alfred bartender bat colima docker gnupg htop iterm2 jetbrains-toolbox mtr buildpacks/tap/pack pinentry-mac ruby@3.1 tree watch
gem install colorls

brew cleanup --prune all -s
