#
# ~/.bashrc
#

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

source $HOME/.config/bashrc
#
#export PATH="$HOME/.local/bin:$PATH"
#export PATH="$HOME/.local/bin/statusbar:$PATH"
#export LC_CTYPE=en_US.UTF-8
#export XDG_SCREENSHOTS_DIR="$HOME/pictures/screenshots/"
#
##shopt -s checkwinsize
#
#alias ls='ls --color=auto'
#alias diff='diff --color=auto'
#alias todo='nvim ~/.local/share/todo'
#alias vim='nvim'
#
#c0='\[\e[01;30m\]'
#c1='\[\e[01;31m\]'
#c2='\[\e[01;32m\]'
#c3='\[\e[01;33m\]'
#c4='\[\e[01;34m\]'
#c5='\[\e[01;35m\]'
#c6='\[\e[01;36m\]'
#c7='\[\e[01;37m\]'
#cfg="\[\e[1;00m\]"
##cfg="\[\033[30m\]"
#
##PS1="$c1[$c2\u$c3@$c4\h $c5\W$c1]$c1\$\[\033[00m\] "
#function git_prompt() {
#	if [ -e ".git" ]; then
#		STATUS=$(git status 2> /dev/null)
#		BRANCH=$(echo -e "$STATUS"| grep "On branch" | awk '{print $3}')
#		echo -n " $c6($c5 $BRANCH$c6)"
#	fi
#}
#
#function prompt() {
#	PS1="$c1[$c2\u$c3@$c4\h $c5\W$c1]$(git_prompt)\$$cfg "
#}
#PROMPT_COMMAND=prompt
#
#TERMINAL=alacritty
#TERM=xterm-256color
#BROWSER=chromium
#
#extract () {
#   	if [ -f $1 ] ; then
#    case $1 in
#         *.tar.bz2)  tar xjf $1     ;;
#         *.tar.gz)   tar xzf $1     ;;
#         *.bz2)      bunzip2 $1     ;;
#         *.rar)      rar x $1       ;;
#         *.gz)       gunzip $1      ;;
#         *.rar)      unrar e $1     ;;
#         *.tar)      tar xf $1      ;;
#         *.tbz2)     tar xjf $1     ;;
#         *.tgz)      tar xzf $1     ;;
#         *.zip)      unzip $1       ;;
#         *.Z)        uncompress $1  ;;
#         *)         echo "'$1' cannot be extracted via extract()" ;;
#    esac
#   	else
#      	echo "'$1' is not a valid file"
#   	fi
#} 
#
#export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
#export PATH="~/.npm-global/bin:$PATH"
