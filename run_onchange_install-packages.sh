#!/bin/zsh
brew tap homebrew/cask-versions

brew update
brew upgrade

brew install --cask visual-studio-code-insiders
ls -s /Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin/code /usr/local/bin/code-insiders
code-insiders --pre-release --install-extension GitHub.copilot
code-insiders --pre-release --install-extension GitHub.copilot-chat
code-insiders --install-extension eriklynd.json-tools
code-insiders --install-extension yzhang.markdown-all-in-one
code-insiders --install-extension darkriszty.markdown-table-prettify
code-insiders --install-extension DotJoshJohnson.xml

brew install asdf
add_asdf_plugins
asdf install

brew install alfred bat colorls docker gnupg htop iterm2 mtr pack pinentry-mac tree watch
