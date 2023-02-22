# alias
alias ls="li"
alias la="lai"
alias ll="lli"
alias cat="bat"

alias ga="git add"
alias gp="git push"
alias gs="git status"
alias gc="gitmoji -c"

if test -n $(grep -i WSL2 /proc/version)
    alias open='explorer.exe'
else if test -n $(grep -i Ubuntu /proc/version)
    alias open='xdg-open'
end

# starship
starship init fish | source

# asdf
source ~/.asdf/asdf.fish

# cargo
fish_add_path ~/.cargo/bin

# yarn
fish_add_path ~/.yarn/bin
