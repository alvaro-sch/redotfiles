# oh-my-zsh
export ZSH="/home/alvaro/.oh-my-zsh"

ZSH_THEME="custom-rr"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# user configuration
alias gitdot="git --git-dir=.dotconfig --work-tree=. "

# force cursor to be Beam (|)
function precmd {
    print -Pn "\e[ q"
}

