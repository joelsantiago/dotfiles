#========================================
#   .zshrc
#========================================

# Source the common settings shared between zsh and bash
if [[ ! -f ~/.shellrc ]]; then
    echo "$HOME/.shellrc doesn't exist."
else
    source ~/.shellrc
fi

# Source oh-my-zsh directory and files
ZSH=$HOME/.oh-my-zsh

# Load zsh theme
ZSH_THEME="custom"

# Load zsh plugins
plugins=(git zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Set VIM as the default editor
export EDITOR=vim

# Set tmuxifier layout paths for layout files
export TMUXIFIER_LAYOUT_PATH="$HOME/.tmux/layouts/"

# Initialize rbenv
if which rbenv > /dev/null; then
    eval "$(rbenv init -)";
fi

# Initialize pyenv
if which pyenv > /dev/null; then
    eval "$(pyenv init -)";
fi

# Initialize tmuxinator
if which tmuxinator > /dev/null; then
    source ~/.tmux/tmuxinator.zsh
fi

# Source aliasrc
[[ -f ~/.aliasrc ]] && source ~/.aliasrc

# Source zshrc.local
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# Run colorize and set color of iTerm based on time of day
colorize
