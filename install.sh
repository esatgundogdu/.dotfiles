# check if stow installed
if ! command -v stow &> /dev/null; then
  echo "Stow package could not be found! Please install stow package before executing this script."
  echo "For Arch-based distros: pacman -S stow"
  exit
fi

# -v for verbose (log outputs), -R for restow (to delete removed files)

# symlink x11 files to $HOME
stow -v -R -t $HOME/ x11

# zsh dir changed in x11/.xprofile, no need to stow zsh dir

# nvim
mkdir $HOME/.config/nvim 2>/dev/null
stow -v -R -t $HOME/.config/nvim nvim

# alacritty
mkdir $HOME/.config/alacritty 2>/dev/null
stow -v -R -t $HOME/.config/alacritty alacritty
