#!/bin/bash

echo '------------------------------------------------------------------------'
echo '=> HomeBrew update'
echo '------------------------------------------------------------------------'

brew update

echo "Completed updating HomeBrew"

echo ""

echo '------------------------------------------------------------------------'
echo '=> Installation of iTerm2 with HomeBrew'
echo '------------------------------------------------------------------------'

brew cask install iterm2

echo "Completed iTerm2 installation"

echo ""

echo '------------------------------------------------------------------------'
echo '=> Installation of Zsh-shell with HomeBrew '
echo '------------------------------------------------------------------------'

brew install zsh

echo "Completed zsh-shell installation"

echo ""

echo '------------------------------------------------------------------------'
echo '=> Change default shell to Zsh '
echo '------------------------------------------------------------------------'

chsh -s /bin/zsh

echo "Completed switching default shell"

echo ""

echo '------------------------------------------------------------------------'
echo '=> Download Nerd Fonts with curl '
echo '------------------------------------------------------------------------'

cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

echo "Completed Nerd Fonts installation"

echo ""

echo '------------------------------------------------------------------------'
echo '=> Tell Powerlevel9k to use the installed Nerd Fonts in your zshrc-file  '
echo '------------------------------------------------------------------------'

cd ~

echo "POWERLEVEL9K_MODE='nerdfont-complete'" >> ~/.zshrc

echo "Completed implementing Nerd Font to zshrc-file"

echo ""

echo '------------------------------------------------------------------------'
echo '=> Installation of Powerlevel9k theme and adding it to the zshrc-file  '
echo '------------------------------------------------------------------------'

git clone https://github.com/bhilburn/powerlevel9k.git ~/powerlevel9k

echo 'source  ~/powerlevel9k/powerlevel9k.zsh-theme' >> ~/.zshrc

echo "Completed installing Powerlevel9k"

echo ""

echo "Everything should be downloaded and installed. Pls continue with the next steps which are described in the README file"

open /Applications/iTerm.app
