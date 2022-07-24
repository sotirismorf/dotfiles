#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin/statusbar:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="~/.npm-global/bin:$PATH"

export LC_CTYPE=en_US.UTF-8
export XDG_SCREENSHOTS_DIR="$HOME/pictures/screenshots/"
export PROMPT_COMMAND=prompt

export EDITOR=nvim
export TERMINAL=alacritty
export TERM=xterm-256color
export BROWSER=chromium

#export GIT_DIR="$HOME/.config/git"

#shopt -s checkwinsize

alias ls='ls --color=auto'
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias diff='diff --color=auto'
alias todo='nvim ~/.local/share/todo'
alias vim='nvim'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'
alias paccache-last2='paccache -rk2'

# Prints n.o. items inside the current working directory
lc () {
	echo $(ls -al $(pwd) | wc -l) items inside this directory...
}

source /usr/share/bash-completion/completions/git
source /usr/share/bash-completion/completions/pacman
source /usr/share/bash-completion/completions/nmcli
source /usr/share/bash-completion/completions/systemctl
source /usr/share/bash-completion/completions/sway
source /usr/share/bash-completion/completions/chown

source /usr/share/bash-complete-alias/complete_alias

complete -F _complete_alias config

c0='\[\e[01;30m\]'
c1='\[\e[01;31m\]'
c2='\[\e[01;32m\]'
c3='\[\e[01;33m\]'
c4='\[\e[01;34m\]'
c5='\[\e[01;35m\]'
c6='\[\e[01;36m\]'
c7='\[\e[01;37m\]'
cfg="\[\e[1;00m\]"
#cfg="\[\033[30m\]"

#PS1="$c1[$c2\u$c3@$c4\h $c5\W$c1]$c1\$\[\033[00m\] "
function git_prompt() {
	if [ -e ".git" ]; then
		STATUS=$(git status 2> /dev/null)
		BRANCH=$(echo -e "$STATUS"| grep "On branch" | awk '{print $3}')
		echo -n " $c6($c5 $BRANCH$c6)"
	fi
}

function prompt() {
	PS1="$c1[$c2\u$c3@$c4\h $c5\W$c1]$(git_prompt)\$$cfg "
}

extract () {
   	if [ -f $1 ] ; then
    case $1 in
         *.tar.bz2)  tar xjf $1     ;;
         *.tar.gz)   tar xzf $1     ;;
         *.bz2)      bunzip2 $1     ;;
         *.rar)      rar x $1       ;;
         *.gz)       gunzip $1      ;;
         *.rar)      unrar e $1     ;;
         *.tar)      tar xf $1      ;;
         *.tbz2)     tar xjf $1     ;;
         *.tgz)      tar xzf $1     ;;
         *.zip)      unzip $1       ;;
         *.Z)        uncompress $1  ;;
         *)         echo "'$1' cannot be extracted via extract()" ;;
    esac
   	else
      	echo "'$1' is not a valid file"
   	fi
} 
