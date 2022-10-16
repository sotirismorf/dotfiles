#!/bin/sh

# Enable colors and change prompt:
autoload -U colors && colors	# Load colors
zle_highlight=('paste:none')
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt autocd		# Automatically cd into typed directory.
setopt PROMPT_SUBST
setopt interactive_comments
setopt appendhistory
setopt SHARE_HISTORY

# History in cache directory:
HISTSIZE=1000000
SAVEHIST=1000000
export HISTFILE="$HOME/.cache/.zsh_history"
export KEYTIMEOUT=20


# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%b'
 
NAME_COLOR=yellow
BOX_COLOR=magenta
DOLLAR_COLOR=yellow
DIR_COLOR=magenta
GIT_COLOR=red

PROMPT=" %{$fg[$BOX_COLOR]%}┏╸"
PROMPT+="%{$fg[$NAME_COLOR]%}%n "
PROMPT+="%{$fg[$DIR_COLOR]%}%~ "
PROMPT+="%{$fg[$GIT_COLOR]%}\${vcs_info_msg_0_}"
PROMPT+=$'\n'
PROMPT+=" %{$fg[$BOX_COLOR]%}┗╸"
PROMPT+="%{$fg[$DOLLAR_COLOR]%}$ "
PROMPT+="%{$reset_color%}"

# Load aliases and shortcuts if existent.
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/zshnameddirrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/zshnameddirrc"

# Basic auto/tab complete:
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.
#zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format "$fg[yellow]%B--- %d%b"
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format "$fg[red]No matches for:$reset_color %d"
zstyle ':completion:*:corrections' format '%B%d (errors: %e)%b'
zstyle ':completion:*' group-name ''

# vi mode

source "$ZDOTDIR/scripts/vi-mode.zsh"

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

bindkey -M main '^J' vi-down-line-or-history
bindkey -M main '^K' vi-up-line-or-history

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
