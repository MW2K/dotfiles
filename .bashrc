#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias bin='cd ~/.bin'
alias ls='lsd -al'
alias vi='nvim'
alias vim='nvim'
alias cf='cd ~/.config'
alias goth='cd ~/Documents/Gothic'
alias doct='asciidoctor -a linkcss'
PS1='[ \W]\$ '
export RANGER_LOAD_DEFAULT_RC='FALSE'
export VISUAL='nvim'
export EDITOR='nvim'
