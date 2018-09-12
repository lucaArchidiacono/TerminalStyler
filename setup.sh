#!/bin/bash

echo '------------------------------------------------------------------------'
echo '=> HomeBrew update'
echo '------------------------------------------------------------------------'

brew update

echo "Completed updating HomeBrew"

echo ""

echo '------------------------------------------------------------------------'
echo '=> Installation of Ruby with HomeBrew'
echo '------------------------------------------------------------------------'

brew install ruby

echo "Completed Ruby installation"

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
echo '=> Add some default configs into zshrc-file  '
echo '------------------------------------------------------------------------'

cd ~

git clone https://github.com/bhilburn/powerlevel9k.git ~/powerlevel9k

cat <<EOF >~/.zshrc
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_beginning"
POWERLEVEL9K_RVM_BACKGROUND="black"
POWERLEVEL9K_RVM_FOREGROUND="249"
POWERLEVEL9K_RVM_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_TIME_BACKGROUND="black"
POWERLEVEL9K_TIME_FOREGROUND="249"
POWERLEVEL9K_TIME_FORMAT="\UF43A %D{%I:%M  \UF133  %m.%d.%y}"
POWERLEVEL9K_RVM_BACKGROUND="black"
POWERLEVEL9K_RVM_FOREGROUND="249"
POWERLEVEL9K_RVM_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='white'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='black'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='blue'
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'
POWERLEVEL9K_VCS_COMMIT_ICON="\uf417"
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500%f"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\u2570\uf460%f "
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context os_icon ssh root_indicator dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time  status  time)
HIST_STAMPS="mm/dd/yyyy"
DISABLE_UPDATE_PROMPT=true

# Load Nerd Fonts with Powerlevel9k theme for Zsh
POWERLEVEL9K_MODE='nerdfont-complete'
source ~/powerlevel9k/powerlevel9k.zsh-theme

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
EOF

echo "Completed implementing default properties in zshrc-file"

echo ""

echo '------------------------------------------------------------------------'
echo '=> Installation of NeoFetch  '
echo '------------------------------------------------------------------------'

brew install neofetch

echo "Completed installing NeoFetch"

echo ""

echo '------------------------------------------------------------------------'
echo '=> Installation of Artii  '
echo '------------------------------------------------------------------------'

gem install artii

echo "Completed installing Artii"

echo ""

echo '------------------------------------------------------------------------'
echo '=> Installation of LolCat  '
echo '------------------------------------------------------------------------'

gem install lolcat

echo "Completed installing LolCat"

echo ""

echo '------------------------------------------------------------------------'
echo '=> Setup motd.sh '
echo '------------------------------------------------------------------------'

sudo touch /etc/motd.sh

sudo chmod a+rwx /etc/motd.sh

cat <<EOF >/etc/motd.sh
#!/bin/bash
artii "Welcome" | lolcat
neofetch
EOF

echo "Completed setup of motd.sh"

echo ""


if [ ! -f ~/.zlogin ]; then
  echo '------------------------------------------------------------------------'
  echo '=> Create .zlogin '
  echo '------------------------------------------------------------------------'

  sudo touch ~/.zlogin

  sudo chmod a+rwx ~/.zlogin

else
  echo '------------------------------------------------------------------------'
  echo '=> Modify .zlogin '
  echo '------------------------------------------------------------------------'

fi


cat <<EOF >~/.zlogin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

/etc/motd.sh
EOF

echo "Completed setup .zlogin"

echo ""

echo '------------------------------------------------------------------------'
echo '=> Download color schemes for iTerm2 '
echo '------------------------------------------------------------------------'

cd ~/Downloads && curl -fLo "mbadolato-iTerm2-Color-Schemes-3502a88.zip" https://github.com/mbadolato/iTerm2-Color-Schemes/archive/master.zip

echo "Completed downloading color schemes for iTerm2"

echo ""

echo '------------------------------------------------------------------------'
echo '=> Setup iTerm2 '
echo '------------------------------------------------------------------------'

/usr/libexec/PlistBuddy -c "Add ':Custom Color Presets:Dracula' dict" ~/Library/Preferences/com.googlecode.iterm2.plist
/usr/libexec/PlistBuddy -c "Merge 'Dracula.itermcolors' ':Custom Color Presets:Dracula'" ~/Library/Preferences/com.googlecode.iterm2.plist
/usr/libexec/PlistBuddy -c "Copy ':New Bookmarks:0' ':New Bookmarks:1'" ~/Library/Preferences/com.googlecode.iterm2.plist
/usr/libexec/PlistBuddy -c "Set ':New Bookmarks:1:Name' 'Dracula'" ~/Library/Preferences/com.googlecode.iterm2.plist
/usr/libexec/PlistBuddy -c "Set ':New Bookmarks:1:Non Ascii Font' 'DroidSansMonoNerdFontComplete- 12'" ~/Library/Preferences/com.googlecode.iterm2.plist
/usr/libexec/PlistBuddy -c "Set ':New Bookmarks:1:Normal Font' 'DroidSansMonoNerdFontComplete- 12'" ~/Library/Preferences/com.googlecode.iterm2.plist

echo "Completed setup iTerm2"

echo ""

cat << "EOF"
._._._. _________                                     __        .__          __  .__                       ._._._.
| | | | \_   ___ \  ____   ____    ________________ _/  |_ __ __|  | _____ _/  |_|__| ____   ____   ______ | | | |
| | | | /    \  \/ /  _ \ /    \  / ___\_  __ \__  \\   __\  |  \  | \__  \\   __\  |/  _ \ /    \ /  ___/ | | | |
 \|\|\| \     \___(  <_> )   |  \/ /_/  >  | \// __ \|  | |  |  /  |__/ __ \|  | |  (  <_> )   |  \\___ \   \|\|\|
 ______  \______  /\____/|___|  /\___  /|__|  (____  /__| |____/|____(____  /__| |__|\____/|___|  /____  >  ______
 \/\/\/         \/            \//_____/            \/                     \/                    \/     \/   \/\/\/
EOF


echo "************************************************************************************************************************************"
echo "************************************************************************************************************************************"
echo "***                                                                                                                              ***"
echo "***    Everything should be downloaded and installed. Pls continue with the next steps which are described in the README file    ***"
echo "***                                                                                                                              ***"
echo "************************************************************************************************************************************"
echo "************************************************************************************************************************************"
open /Applications/iTerm.app
