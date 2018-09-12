# TerminalStyler

### Description

This Repository will show you how to personalise your terminal design by configuring iTerm2 with Powerlevel9k. Powerlevel9k is a popular and highly customisable terminal theme for the shell Zsh. I will explain how to set this up with icons from Nerd Fonts, your choice of color scheme, and your own custom prompt sections.

### Prerequisity: install HomeBrew, iTerm2, zsh, Nerd Fonts, Powerlevel9k, Ruby, artii-gem, lolcat-gem, neofetch

- Before conituning with this tutorial pls make sure to install [HomeBrew](https://brew.sh/).
- Now run the ```setup.sh``` file. This shell file installs/sets up (iTerm2, zsh, Nerd Fonts, Powerlevel9k, Ruby, artii-gem, lolcat-gem, neofetch) everything needed for the upcoming steps.

### After setup.sh installation

If everything went fine, you should see iTerm2 running.

## Download color schemes for iTerm2

Already done by ```setup.sh``` :white_check_mark:

- There are many iTerm2 color schemes out there. One source is [iterm2colorschemes](https://iterm2colorschemes.com/), which gives you about 175 choices. The ```setup.sh``` file should already have downloaded you the .zip with the ```Dracula``` color scheme.

## Configure iTerm2 with Color Schemes

As ```setup.sh``` already donwloaded the ```Dracula``` color schemes, we want to add it into your new iTerm2 profile called ```TerminalStyler```.
For this reason select ```iTerm -> Preferences -> Profiles -> TerminalStyler -> Color Presets -> Dracula```. You should instantly see how the color of your iTerm2 console changes.

If you want to import a new color scheme to your profile ```TerminalStyler```, select ```iTerm -> Preferences -> Profiles -> Dracula -> Color Presets -> Import```.

## Configure iTerm2 with Nerd Fonts

Already done by ```setup.sh``` :white_check_mark:

## Customisation of prompt and welcome screen

Because we already ran the shell script (```setup.sh```), no further action is required. You should have a fully configured ```~/.zshrc```, ```~/.zlogin``` and a ```/etc/motd.sh``` file.

Just a short description for what those files are needed:
- ```/etc/motd.sh``` is the shell-script for the welcome screen. Basically you can modify what text should appear and add some extra configuration if interested.
- ```~/.zshrc``` is a file with the Powerlevel9k and NerdFonts configuration for z-shell and iTerm2.

# Result
This should be the result after completing all steps:
![Result](https://github.com/lucaArchidiacono/TerminalStyler/blob/master/resultato.png)
