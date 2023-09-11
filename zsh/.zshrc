#!/bin/sh

conda=false
# source scripts dir
path+=~/.dotfiles/scripts/src/ 

# some useful options (man zshoptions)
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
stty stop undef		# Disable ctrl-s to freeze terminal.
zle_highlight=('paste:none')

# beeping is annoying
unsetopt BEEP

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
zsh_add_completion "esc/conda-zsh-completion" $conda
# For more plugins: https://github.com/unixorn/awesome-zsh-plugins
# More completions https://github.com/zsh-users/zsh-completions

# FZF
#[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
#[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
#[ -f $ZDOTDIR/completion/_fnm ] && fpath+="$ZDOTDIR/completion/"
#compinit

# Edit line in vim with ctrl-e:
#autoload edit-command-line; zle -N edit-command-line

eval "$(zoxide init zsh)"

if $conda ; then
    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    __conda_setup="$('/usr/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "/usr/etc/profile.d/conda.sh" ]; then
# . "/usr/etc/profile.d/conda.sh"  # commented out by conda initialize
        else
            export PATH="/usr/bin:$PATH"
        fi
    fi
    unset __conda_setup
    # <<< conda initialize <<<
fi
