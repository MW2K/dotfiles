# .----------------.  .----------------.  .----------------.  .----------------.  .----------------.  .----------------.  .----------------.
#| .--------------. || .--------------. || .--------------. || .--------------. || .--------------. || .--------------. || .--------------. |
#| |              | || |   ______     | || |      __      | || |    _______   | || |  ____  ____  | || |  _______     | || |     ______   | |
#| |              | || |  |_   _ \    | || |     /  \     | || |   /  ___  |  | || | |_   ||   _| | || | |_   __ \    | || |   .' ___  |  | |
#| |              | || |    | |_) |   | || |    / /\ \    | || |  |  (__ \_|  | || |   | |__| |   | || |   | |__) |   | || |  / .'   \_|  | |
#| |              | || |    |  __'.   | || |   / ____ \   | || |   '.___`-.   | || |   |  __  |   | || |   |  __ /    | || |  | |         | |
#| |      _       | || |   _| |__) |  | || | _/ /    \ \_ | || |  |`\____) |  | || |  _| |  | |_  | || |  _| |  \ \_  | || |  \ `.___.'\  | |
#| |     (_)      | || |  |_______/   | || ||____|  |____|| || |  |_______.'  | || | |____||____| | || | |____| |___| | || |   `._____.'  | |
#| |              | || |              | || |              | || |              | || |              | || |              | || |              | |
#| '--------------' || '--------------' || '--------------' || '--------------' || '--------------' || '--------------' || '--------------' |
# '----------------'  '----------------'  '----------------'  '----------------'  '----------------'  '----------------'  '----------------'
# ~/.bashrc
#
# Some of these are from CachyOS's default install but I've added a few and removed a few.

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## Useful aliases
# Replace ls with eza

alias ls='eza -al --color=always --group-directories-first --icons' # preferred listing
alias la='eza -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='eza -la --color=always --group-directories-first --icons'  # long format
alias lt='eza -aT --color=always --group-directories-first --icons' # tree listing
alias l.="eza -a | grep -e '^\.'"   # show only dotfiles
alias grep='grep --color=auto'
alias co='cd /home/peter/.config'
alias lo='cd /home/peter/.local'
alias srv='cd /home/peter/dev/myapp/public/'
alias jctl="journalctl -p 3 -xb"
alias doc="asciidoctor -a linkcss -a copycss"

# Environment variables
export VISUAL='nvim'
export EDITOR='nvim'
export SYSTEMD_LESS=FRXMK # journalctl entries wrap properly in the terminal
export PATH=/home/peter/.local/bin:/home/peter/.nimble/bin:$PATH
export WINETRICKS_LATEST_VERSION_CHECK=enabled


# PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"
