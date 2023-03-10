#!/bin/bash
# check if stow installed
if ! command -v stow &> /dev/null; then
  if [ $(which pacman 2>/dev/null) ]; then
    echo "Stow package could not be found, installing..."
    sudo pacman -S stow
  else
    echo "Stow package could not be found! Please install stow package before executing this script."
    exit
  fi
fi

while getopts ":sh" o; do
  case "${o}" in
    s)
      FROM_SCRATCH=true
      ;;
    *)
      echo "Parameters: "
      echo "  -s : install from scratch (installs all packages like zsh, nvim etc.)"
      echo "  -h : help (shows this message)"
      exit
      ;;
  esac
done

if [ $FROM_SCRATCH ]; then
  REQUIRED_PACKAGES="ttf-jetbrains-mono-nerd ttf-hack-nerd neovim alacritty zsh ripgrep"
  if [ ! -z $(which pacman 2>/dev/null) ]; then
    echo "Pacman found, necessary packages will be automatically installed."
    sudo pacman -S $REQUIRED_PACKAGES
  else
    echo "Could not find Pacman, you can install required packages according to your own package manager"
    echo "Here is the list of required packages: $REQUIRED_PACKAGES"
  fi
fi

# -v for verbose (log outputs), -R for restow (to delete removed files), -t for specifying target directory
# stow -v -R -t $TARGET_DIR $PACKAGE

# symlink x11 files to $HOME
stow -v -R -t $HOME/ x11

# zsh dir changed in x11/.xprofile, no need to stow zsh dir

# nvim
mkdir $HOME/.config/nvim 2>/dev/null
stow -v -R -t $HOME/.config/nvim nvim

# alacritty
mkdir $HOME/.config/alacritty 2>/dev/null
stow -v -R -t $HOME/.config/alacritty alacritty
