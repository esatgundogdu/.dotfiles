# Vi style key bindings
bindkey -v
typeset -g -A key

# key bindings
bindkey '^[[1;5C' emacs-forward-word
bindkey '^[[1;5D' emacs-backward-word
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line

bindkey "^D" exit

# search from history with up and down keys
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

