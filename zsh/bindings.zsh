# Vi style key bindings
bindkey -v
typeset -g -A key

# key bindings
bindkey '^[[1;5C' emacs-forward-word
bindkey '^[[1;5D' emacs-backward-word
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
