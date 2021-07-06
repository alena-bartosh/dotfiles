# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load
ZSH_THEME="agnoster"

# agnoster https://github.com/agnoster/agnoster-zsh-theme/blob/master/README.md

# Additional manual step: set colors with terminal setting
# solarized theme + #AD7FA8 for pink (instead of yellow) + #775685 for violet (instead of blue)

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/

plugins=(git fast-syntax-highlighting history-search-multi-word zsh-autosuggestions)

# fast-syntax-highlighting https://github.com/zdharma/fast-syntax-highlighting/blob/master/README.md
# history-search-multi-word https://github.com/zdharma/history-search-multi-word/blob/master/README.md
# zsh-autosuggestions https://github.com/zsh-users/zsh-autosuggestions/blob/master/README.md

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR="nano"
 else
   export EDITOR="subl"
 fi

# Personal aliases
alias conf-zsh="$EDITOR ~/.zshrc"
alias grfb="git checkout master && git pull --rebase && git checkout - && git rebase master"

# Copied from https://github.com/mathiasbynens/dotfiles/blob/main/.aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~"

colorflag="--color"
export LS_COLORS='no=00:fi=00:di=01;31:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
alias l="ls -lF ${colorflag}"
alias la="ls -lAF ${colorflag}"
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"
alias ls="command ls ${colorflag}"
