HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history



alias steven='ssh steven-desktop.aka.corp.amazon.com'
alias ll='exa --header --group --long --all --icons --group-directories-first'
alias dcv='py dcv-cdd.py connect steven-desktop.aka.corp.amazon.com'
alias sz="source ~/.zshrc"
alias clr="clear"
alias m="mwinit -o"

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(starship init zsh)"

tmux

