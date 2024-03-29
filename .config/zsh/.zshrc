autoload -U colors && colors 

PS1="%F{white}%n@%M:%f%F{cyan}%~%f%F{white}$%f " 
# PS1="[%n@%M %~]$ " 

# PS1="%F{green}%n@%M:%f%F{blue}%~%f%F{green}$%f " 
# PS1="%F{cyan}%n@%M:%f%F{white}%~%f%F{cyan}$%f " 

stty stop undef # disable ctrl-s to freeze terminal

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"

# Load aliases if existent:
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION
_comp_options+=(globdots) # include hidden files

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Mute on boot
# amixer sset Master 0 ; amixer sset Master off
