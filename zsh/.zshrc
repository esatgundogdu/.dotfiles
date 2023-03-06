#!/bin/sh

# some useful options (man zshoptions)
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
stty stop undef		# Disable ctrl-s to freeze terminal.
zle_highlight=('paste:none')

# beeping is annoying
unsetopt BEEP

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# Colors
autoload -Uz colors && colors

# Useful functions
source "$ZDOTDIR/functions.zsh"

# Normal files to source
for i in $(ls $ZDOTDIR/*.zsh);
do
  source $i;
done

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
#zsh_add_plugin "bilelmoussaoui/flatpak-zsh-completion"
# zsh_add_completion "esc/conda-zsh-completion" false
# For more plugins: https://github.com/unixorn/awesome-zsh-plugins
# More completions https://github.com/zsh-users/zsh-completions

# Key-bindings


# FZF
#[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
#[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
#[ -f $ZDOTDIR/completion/_fnm ] && fpath+="$ZDOTDIR/completion/"
#compinit

# Edit line in vim with ctrl-e:
#autoload edit-command-line; zle -N edit-command-line
