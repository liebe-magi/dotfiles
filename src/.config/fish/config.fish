# alias
alias ls="li"
alias la="lai"
alias ll="lli"
alias cat="bat"

alias ga="git add"
alias gp="git push"
alias gs="git status"
alias gc="gitmoji -c"

# starship
starship init fish | source

# asdf
source ~/.asdf/asdf.fish

# cargo
fish_add_path ~/.cargo/bin

# yarn
fish_add_path ~/.yarn/bin
