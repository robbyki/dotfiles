#!/usr/bin/env bash

sudo dnf install -y \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf upgrade --refresh -y

sudo dnf install -y \
    alacritty \
    autoconf \
    automake \
    bat \
    clang \
    cmake \
    curl \
    exa \
    fd-find \
    fontawesome5-fonts-all \
    fontconfig-devel \
    freetype-devel \
    g++ \
    gcc \
    gcc-c++ \
    gettext \
    gh \
    gimp \
    keepassxc \
    kmod-v4l2loopback \
    libstdc++-static \
    libtool \
    libxcb-devel \
    libxkbcommon-devel \
    make \
    ncurses-devel \
    neofetch \
    ninja-build \
    okular \
    patch \
    pkgconfig \
    ruby \
    ruby-devel \
    rust \
    slack \
    the_silver_searcher \
    trash-cli \
    unzip \
    vlc \
    webex \
    wget \
    wmctrl \
    xclip \
    xdotool \
    zoxide

sudo dnf groupinstall "Development Tools" "Development Libraries"

# install discord

# install gh config from mc into XDG Config path
# download from mc and move to ~/.config/
# install ui stuff icons,font,themes

# build neovim
gh repo clone neovim/neovim
cd neovim
make CMAKE_BUILD_TYPE=Release
sudo make install

# colorful directory listing
gem install colorls

# stylua lua binary
wget https://github.com/JohnnyMorganz/StyLua/releases/download/v0.13.0/stylua-linux.zip
sudo chmod +x stylua
mv ./stylua /usr/local/bin

# register all fonts
sudo fc-cache -v
gh repo clone ryanoasis/nerd-fonts
cd nerd-fonts
sh ./install.sh

# better cd
gh repo clone b4b4r07/enhancd ~/dev/enhancd

# flatpak for obs mostly
fp remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
fp install flathub com.obsproject.Studio

# install npm and node
curl -fsSL https://fnm.vercel.app/install | bash
fnm install latest
fnm install --lts

# shfmt
curl -sS https://webinstall.dev/shfmt | bash

# tmux tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install ohmyzsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

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

ln -s -f ~/.dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
ln -s -f ~/.dotfiles/bat/config ~/.config/bat/config
ln -s -f ~/.dotfiles/broot/conf.hjson ~/.config/broot/conf.hjson
ln -s -f ~/.dotfiles/fzf/key-bindings.zsh ~/.fzf/shell/key-bindings.zsh
ln -s -f ~/.dotfiles/gh/config.yml ~/.config/gh/config.yml
ln -s -f ~/.dotfiles/lf ~/.config/lf
ln -s -f ~/.dotfiles/rofi ~/.config/rofi
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

# begin golang install and subsequent software using go install
go install golang.org/x/tools/...@latest

mkdir -p ~/.local/share/{icons,themes,fonts}
eval "$(ssh-agent -s)"
chmod 400~/.ssh/robbmk_id_ed25519
chmod 400 ~/.ssh/robbmk_id_ed25519
chmod 400 ~/.ssh/ibm_id_ed25519
ssh-add ~/.ssh/robbmk_id_ed25519
ssh -T git@github.com

wget https://go.dev/dl/go1.18.linux-amd64.tar.gz

install lfrc

dconf load /org/gnome/desktop/wm/keybindings/ < ~/.dotfiles/gnome/keybindings
dconf load /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/ < ~/.dotfiles/gnome/custom-keybindings

