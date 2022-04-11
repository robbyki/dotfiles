#!/usr/bin/env bash

sudo dnf install -y \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf install -y cmake freetype-devel fontconfig-devel libxcb-devel libxkbcommon-devel g+ alacritty bat fd-find exa webex slack xclip trash-cli rust fontawesome5-fonts-all zoxide wmctrl xdotool kmod-v4l2loopback libstdc++-static gh keepassxc okular ncurses-devel neofetch vlc gimp the_silver_searcher ruby ruby-devel

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
git clone https://github.com/djui/alias-tips.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/alias-tips
git clone https://github.com/TamCore/autoupdate-oh-my-zsh-plugins $ZSH_CUSTOM/plugins/autoupdate
git clone git@github.com:thirteen37/fzf-alias.git $ZSH_CUSTOM/plugins/fzf-alias
git clone git clone https://github.com/Aloxaf/fzf-tab $ZSH_CUSTOM/plugins/fzf-tab
git clone git@github.com:marzocchi/zsh-notify.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/notify
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/lukechilds/zsh-better-npm-completion ~/.oh-my-zsh/custom/plugins/zsh-better-npm-completion
git clone https://github.com/chuwy/zsh-secrets.git $ZSH_CUSTOM/plugins/zsh-secrets
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

gh repo clone b4b4r07/enhancd ~/dev/enhancd
fp remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
fp install flathub com.obsproject.Studio

ln -s -f ~/.dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
ln -s -f ~/.dotfiles/bat/config ~/.config/bat/config
ln -s -f ~/.dotfiles/broot/conf.hjson ~/.config/broot/conf.hjson
ln -s -f ~/.dotfiles/fzf/key-bindings.zsh ~/.fzf/shell/key-bindings.zsh
ln -s -f ~/.dotfiles/gh/config.yml ~/.config/gh/config.yml
ln -s -f ~/.dotfiles/lf ~/.config/lf
ln -s -f ~/.dotfiles/zsh/alias.zsh ~/.oh-my-zsh/custom/alias.zsh
ln -s -f ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s -f ~/.dotfiles/zsh/.p10k.zsh ~/.p10k.zsh
ln -s -f ~/.dotfiles/zsh/functions.zsh ~/.oh-my-zsh/custom/functions.zsh
ln -s -f ~/.dotfiles/zsh/fzf-tab.zsh ~/.oh-my-zsh/custom/fzf-tab.zsh
ln -s -f ~/.dotfiles/zsh/completions ~/.oh-my-zsh/completions
ln -s -f ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -s -f ~/.dotfiles/nvim ~/.config/nvim

npm install -g prettier
npm install -g neovim
npm install -g yaml-language-server
npm install -g bash-language-server
npm install -g pyright

go install golang.org/x/tools/...@latest

# install discord
mkdir -p ~/.local/share/{icons,themes}
eval "$(ssh-agent -s)"
chmod 400~/.ssh/robbmk_id_ed25519
chmod 400 ~/.ssh/robbmk_id_ed25519
chmod 400 ~/.ssh/ibm_id_ed25519
ssh-add ~/.ssh/robbmk_id_ed25519
ssh -T git@github.com

wget https://go.dev/dl/go1.18.linux-amd64.tar.gz
