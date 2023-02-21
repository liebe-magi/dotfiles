#!/bin/sh

# install Rust
if ! type cargo > /dev/null 2>&1; then
    if [ "$(grep -i microsoft /proc/version)" ]; then
        # WSL
        curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    elif [ "$(grep -i ubuntu /proc/version)" ]; then
        # Ubuntu
        echo ubuntu
    else
        # other
        echo "Your platform is not supported."
        exit 1
    fi
else
    echo "You have already installed: Rust"
fi

# install just
if ! type just > /dev/null 2>&1; then
    ~/.cargo/bin/cargo install just
else
    echo "You have already installed: just"
fi