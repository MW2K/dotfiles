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
# Most of these are from CachyOS's default install but I've added a few and removed a few. Edit, moved to pure Arch, removed references to CachyOS

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
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
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
alias co='cd /home/peter/.config'
alias lo='cd /home/peter/.local'
alias srv='cd /srv/http/defaults/public'
alias ff='fastfetch && fortune quotes'
alias code='cd /home/peter/Nextcloud/code'
alias httpd='sudo systemctl restart php-fpm.service && sudo systemctl restart nginx.service'

# Cleanup orphaned packages
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'

# Get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# Recent installed packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"

# Environment variables
export VISUAL='nvim'
export EDITOR='nvim'

# PATH addenda
export PATH=/home/peter/.local/bin:/home/peter/.nimble/bin:/home/peter/.config/composer/vendor/bin:$PATH

# PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"
# starship preset gruvbox-rainbow -o ~/.config/starship.toml
