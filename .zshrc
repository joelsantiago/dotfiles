ZSH=$HOME/.oh-my-zsh
ZSH_THEME="custom"
plugins=(git zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Aliases
alias tnew="tmux new -s"
alias tma="tmux attach -t"
alias tswitch="tmux switch -t"
alias tkill="tmux kill-session -t"
alias tml="tmux ls"

alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.vimrc"
alias tmuxconfig="vim ~/.tmux.conf"

alias sshdreamhost="ssh joesan16@joelsantiago.co"
alias sshwhatbox="ssh rotorhead94@burger.whatbox.ca"

alias getpath='echo -n $PWD|pbcopy|echo "current path copied to clipboard"'

alias showlibrary="chflags nohidden ~/Library/"
alias showusers="sudo chflags nohidden /Users"

# Alias to run the swift REPL
alias swift="xcrun swift"

# Paths
LOCAL_BIN=/usr/local/bin
USR_BIN=/usr/bin
BIN=/bin
USER_BIN=$HOME/bin
HEROKU=/usr/local/heroku/bin
USER_SBIN=/usr/sbin
SBIN=/sbin
X11=/opt/x11/bin

export PATH=$LOCAL_BIN:$USR_BIN:$BIN:$USER_BIN:$HEROKU:$USER_SBIN:$SBIN:$X11

# Initialize rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_TITLE="true"

# 'hub' alias to integrate it with git
eval "$(hub alias -s)"
