#!/bin/fish

echo "Installing nvim in ~/.local"
cd ~
wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
tar xvf nvim-linux-x86_64.tar.gz
rm nvim-linux-x86_64.tar.gz
rm -vrf .local/bin/nvim .local/lib/nvim .local/share/nvim
mkdir -p .local/bin .local/lib
mv -v nvim-linux-x86_64/bin/nvim .local/bin/nvim
mv -v nvim-linux-x86_64/lib/nvim .local/lib/nvim
mv -v nvim-linux-x86_64/share/nvim .local/share/nvim
rm -vrf nvim-linux-x86_64

mkdir -p ~/.config/nvim/lua/plugins
