#!/usr/bin/env bash

# work in progress automation for everytime I have to re-install my workstation tools
# update sudoers before anything `sudo visudo`

sudo dnf upgrade --refresh -y

# install rpmfusion for nvidia and vlc
# install akmod-nvidia drivers with this
sudo dnf install -y \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

#check video driver in use:
lspci -nnk | egrep -i --color 'vga|3d|2d' -A3 | grep 'in use'

# important base packages I need
sudo dnf install -y \
  alacritty \
  autoconf \
  automake \
  bat \
  buildah \
  clang \
  cmake \
  curl \
  discord \
  exa \
  fd-find \
  fontawesome5-fonts-all \
  fontconfig-devel \
  freetype-devel \
  g++ \
  gcc \
  gcc-c++ \
  gettext \
  gimp \
  git-delta \
  gnome-tweaks \
  gstreamer1-plugins-ugly \
  helm \
  htop \
  java-devel \
  kdenlive \
  keepassxc \
  kmod-v4l2loopback \
  libgnome \
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
  peek \
  pkgconfig \
  plantuml \
  plazma-breeze \
  qutebrowser \
  ruby \
  ruby-devel \
  screenkey \
  shutter \
  skopeo \
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
  zoxidel

sudo dnf -y groupinstall "Development Tools" "Development Libraries"

# gnome customization directories
# just push these to object storage and retrieve with `mc cp <blah> .`
mkdir -p ~/.local/share/{icons,themes,fonts}

# register all fonts
sudo fc-cache -v
gh repo clone ryanoasis/nerd-fonts
cd nerd-fonts
sh ./install.sh

# setup ssh keys. folder from object storage is easiest for now
# `mc cp <ssh-folder> ~/`
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/robbmk_id_ed25519
chmod 400 ~/.ssh/robbmk_id_ed25519
ssh -T git@github.com

# install gh config into XDG Config path
sudo dnf install -y 'dnf-command(config-manager)'
sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
sudo dnf install -y gh

# gh extensions
gh extension install kavinvalli/gh-repo-fzf
gh extension install mislav/gh-branch

# rust / cargo etc
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# broot
gh repo clone Canop/broot
cargo install --path .
broot --install

# build neovim
gh repo clone neovim/neovim
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

# prettier directory listing
gem install colorls

# stylua lua binary
wget https://github.com/JohnnyMorganz/StyLua/releases/download/v0.13.0/stylua-linux.zip
unzip stylua
sudo chmod +x stylua
sudo mv ./stylua /usr/local/bin

# better cd
gh repo clone b4b4r07/enhancd ~/dev/enhancd

# flatpak for obs mostly
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.obsproject.Studio

# install fnm, npm and node, gem
curl -fsSL https://fnm.vercel.app/install | bash
fnm install --lts

# shfmt bash formatting
curl -sS https://webinstall.dev/shfmt | bash

# tmux tpm for plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# install plugins from cli
sh ~/.tmux/plugins/tpm/scripts/install_plugins.sh

# lsp servers from npm
npm install -g prettier
npm install -g neovim
npm install -g yaml-language-server
npm install -g bash-language-server
npm install -g pyright
npm install -g gatsby-cli
npm install -g typescript-language-server
npm install -g tree-sitter

pip install openapi2jsonschema

# k9s
gh repo clone derailed/k9s
cd k9s
make build
sudo mv execs/k9s /usr/local/bin

# schema integration for lsp yaml
gh repo clone robbyki/schemas
mkdir -p ~/dev/openshift-json-schema/master-standalone/
ln -s -f ~/dev/schemas/openshift/* ~/dev/openshift-json-schema/master-standalone

# install go
wget https://go.dev/dl/go1.18.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.18.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin

# go tools
go install golang.org/x/tools/...@latest

# gopls language server for neovim
go install golang.org/x/tools/gopls@latest

# kubeclean
go get github.com/edsoncelio/kubeclean

# lf
env CGO_ENABLED=0 go install -ldflags="-s -w" github.com/gokcehan/lf@latest

# slides
go install github.com/maaslalani/slides@latest

#install lazygit
go install github.com/jesseduffield/lazygit@latest

# install yq yaml processor
go install github.com/mikefarah/yq/v4@latest

# gore repl
go install github.com/x-motemen/gore/cmd/gore@latest
go install github.com/mdempsky/gocode@latest

git clone https://github.com/jfrog/jfrog-cli
cd jfrog-cli
CGO_ENABLED=0 go build -o jf -ldflags '-w -extldflags "-static"' main.go
sudo mv ./jf /usr/local/bin/

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
sh ~/.fzf/install

# install fzy
git clone git@github.com:jhawthorn/fzy.git
cd fzy
make
sudo make install

# dropbox for keepassxc integration
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd

# gnupg config and secrets folder
mc download >~/

# install keybase
sudo yum install https://prerelease.keybase.io/keybase_amd64.rpm

# install sbt
sudo rm -f /etc/yum.repos.d/bintray-rpm.repo
curl -L https://www.scala-sbt.org/sbt-rpm.repo >sbt-rpm.repo
sudo mv sbt-rpm.repo /etc/yum.repos.d/
sudo dnf install -y sbt

# setup up kube and containers and drop kube config in here as needed
# mc drop configs here
mkdir ~/.kube
mkdir ~/.config/containers

# glow markdown rendering
git clone https://github.com/charmbracelet/glow.git
cd glow
go build

# kubectl
cat <<EOF | sudo tee /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF
sudo dnf install -y kubectl

# kube tools
sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens

# kubectl convert
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl-convert"

# ibmcloud and oc
wget https://download.clis.cloud.ibm.com/ibm-cloud-cli/2.6.0/binaries/IBM_Cloud_CLI_2.6.0_linux_amd64.tgz
sudo tar -xvzf -C /usr/local/ IBM_Cloud_CLI_2.6.0_linux_amd64.tgz
sudo ln -s -f /usr/local/IBM_Cloud_CLI/ibmcloud /usr/local/bin/ibmcloud

# ohmyzsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# ohmyzsh theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# ohmyzsh custom plugins
git clone git@github.com:djui/alias-tips.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/alias-tips
git clone git@github.com:TamCore/autoupdate-oh-my-zsh-plugins.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/autoupdate
git clone git@github.com:thirteen37/fzf-alias.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-alias
git clone git@github.com:Aloxaf/fzf-tab.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab
git clone git@github.com:marzocchi/zsh-notify.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/notify
git clone git@github.com:zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone git@github.com:lukechilds/zsh-better-npm-completion.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-better-npm-completion
git clone git@github.com:chuwy/zsh-secrets.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-secrets
git clone git@github.com:zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone git@github.com:jeffreytse/zsh-vi-mode.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vi-mode
git clone git@github.com:chrissicool/zsh-256color.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-256color

# setup symlinks to configs. obviously there are tools that do this better. maybe one day soon
ln -s -f ~/.dotfiles/alacritty ~/.config/alacritty
ln -s -f ~/.dotfiles/bat ~/.config/bat
ln -s -f ~/.dotfiles/broot ~/.config/broot
ln -s -f ~/.dotfiles/fzf/key-bindings.zsh ~/.fzf/shell/key-bindings.zsh
ln -s -f ~/.dotfiles/gh/config.yml ~/.config/gh/config.yml
ln -s -f ~/.dotfiles/lf ~/.config/lf
ln -s -f ~/.dotfiles/rofi ~/.config/rofi
ln -s -f ~/.dotfiles/zsh/alias.zsh ~/.oh-my-zsh/custom/alias.zsh
ln -s -f ~/.dotfiles/zsh/.p10k.zsh ~/.p10k.zsh
ln -s -f ~/.dotfiles/zsh/functions.zsh ~/.oh-my-zsh/custom/functions.zsh
ln -s -f ~/.dotfiles/zsh/fzf-tab.zsh ~/.oh-my-zsh/custom/fzf-tab.zsh
ln -s -f ~/.dotfiles/zsh/completions ~/.oh-my-zsh/completions
ln -s -f ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -s -f ~/.dotfiles/qutebrowser/config.py ~/.config/qutebrowser/config.py
ln -s -f ~/.dotfiles/nvim ~/.config/nvim
ln -s -f ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s -f ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf

#vscode
# need to start using built-in vscode sync
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update
sudo dnf install code -y
cp -R User/* ~/.config/Code/User/

mkdir ~/.config/colorls/
cp $(dirname $(gem which colorls))/yaml/files.yaml ~/.config/colorls/files.yaml

# coursier
curl -fL https://github.com/coursier/launchers/raw/master/cs-x86_64-pc-linux.gz | gzip -d >cs
chmod +x cs
./cs setup

# install bloop
cs install bloop --only-prebuilt=true
