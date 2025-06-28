# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# theme
ZSH_THEME="spiderverse"

# disable auto updates
zstyle ':omz:update' mode disabled

# plugins
plugins=(git)

# flutter
export PATH="$PATH:$HOME/dev/flutter/bin"

source $ZSH/oh-my-zsh.sh
