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

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## Useful aliases
# Replace ls with eza
alias ls='eza -al --color=always --group-directories-first --icons' # preferred listing
alias la='eza -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='eza -la --color=always --group-directories-first --icons'  # long format
alias lt='eza -aT --color=always --group-directories-first --icons' # tree listing
alias l.="eza -a | grep -e '^\.'"                                     # show only dotfiles

# Common use
alias grubup="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias tarnow='tar -acf '
alias untar='tar -zxvf '
alias wget='wget -c '
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias hw='hwinfo --short'                                   # Hardware Info
alias big="expac -H M '%m\t%n' | sort -h | nl"              # Sort installed packages according to size in MB
alias gitpkg='pacman -Q | grep -i "\-git" | wc -l'          # List amount of -git packages
alias update='sudo pacman -Syu'

# Get fastest mirrors
alias mirror="sudo cachyos-rate-mirrors"

# Help people new to Arch
alias apt='man pacman'
alias apt-get='man pacman'
alias please='sudo'
alias tb='nc termbin.com 9999'

# Cleanup orphaned packages
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'

# Get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# Recent installed packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
export VISUAL='nvim'
export EDITOR='nvim'


# PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"
starship preset gruvbox-rainbow -o ~/.config/starship.toml
