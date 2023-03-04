# symlink x11 files to $HOME
stow -t $HOME/ x11

# zsh dir changed in x11/.xprofile, no need to stow zsh dir
