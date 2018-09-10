# TerminalStyler

### Description

This Repository will show you how to personalise your terminal design by configuring iTerm2 with Powerlevel9k. Powerlevel9k is a popular and highly customisable terminal theme for the shell Zsh. I will explain how to set this up with icons from Nerd Fonts, your choice of color scheme, and your own custom prompt sections.

### Prerequisity: install HomeBrew, iTerm2, zsh, Nerd Fonts, Powerlevel9k, Ruby, artii-gem, lolcat-gem, neofetch

- Before conituning with this tutorial pls make sure to install [HomeBrew](https://brew.sh/).
- After installing HomeBrew run this command ```brew install ruby``` in the terminal. For the "motd" setup we need 2 different ruby gems.
- Now run the ```setup.sh``` file. This bash file should help you installing everything needed for the upcoming steps.

### After setup.sh installation

If everything went fine, you should see running iTerm2.
For the next steps we try to select a color scheme which fits your needs and setup the fonts which we downloaded using the ```setup.sh``` file.

## Configure iTerm2 with Color Schemes

There are many iTerm color schemes out there. One source is [iterm2colorschemes](https://iterm2colorschemes.com/), which gives you about 175 choices. Once you have downloaded them, select ```iTerm -> Preferences -> Profiles -> Colors -> Color Presets -> Import``` then select the colour scheme you like.

## Configure iTerm2 with Nerd Fonts

Next setup iTerm2 to use the font by going to:

```iTerm2 -> Preferences -> Profiles -> Text -> Font -> Change Font```

Select the font Droid Sans Mono Nerd Font Complete and adjust the size if your want too. Also check the box for ```Use a different font for non-ASCII``` text and select the font again. It should be displaying the new font and icons in the prompt.

## Customise your prompt

Now navigate to ```$ ~/.zshrc``` and copy-paste the configuration which I already made (inside ```.zshrc```) from the repository.

## Customise Welcome-Screen

Open ```$ /etc/motd.sh``` and copy this line of code:
```
#!/bin/bash
artii "Welcome" | lolcat
neofetch
```

Now go to ```$ ~/.zlogin``` and copy-paste this line of code: (If this file doesn't exist already create it immediately!)
```
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

/etc/motd.sh
```
