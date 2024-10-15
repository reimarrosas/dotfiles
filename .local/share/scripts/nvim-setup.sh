mkdir -p ~/.local/bin

curl -Lo ~/.local/bin/nvim $(curl -s https://api.github.com/repos/neovim/neovim/releases/latest | grep 'appimage"$' | awk '{ print $NF }' | tr -d '"')

chmod +x ~/.local/bin/nvim
