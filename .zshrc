# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/peter/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
bindkey "^[[3~" delete-char
PROMPT="%n@%m%~$ "
