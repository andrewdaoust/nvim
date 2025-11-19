git clone https://github.com/andrewdaoust/dotfiles.git ~/Code/dotfiles

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# zsh autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# tmux setup
brew install tmux
mkdir -p "$HOME/.config/tmux"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s "$HOME/Code/dotfiles/tmux.conf" "$HOME/.config/tmux/tmux.conf"

# Neovim setup
brew install neovim
ln -s "$HOME/Code/dotfiles/nvim" "$HOME/.config/nvim"

# Starship setup
brew install starship
ln -s "$HOME/Code/dotfiles/starship.toml"" "$HOME/.config/starship.toml"
