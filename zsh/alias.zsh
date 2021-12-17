# don't know why I need to have this here.
export EDITOR="/usr/local/bin/nvim"
export DOTFILES="$HOME/.dotfiles"

# Quick files
alias zshconfig="$EDITOR $DOTFILES/zsh/.zshrc"
alias aliasconfig="$EDITOR $DOTFILES/zsh/alias.zsh"
alias fzftabconfig="$EDITOR $DOTFILES/zsh/fzf-tab.zsh"
alias nvimconfig="$EDITOR $DOTFILES/nvim/init.lua"
alias codeconfig="$EDITOR $DOTFILES/vscode/settings.json"
alias alacrittyconfig="$EDITOR $DOTFILES/alacritty/alacritty.yml"
alias tmuxconfig="$EDITOR $DOTFILES/tmux/.tmux.conf"
alias lfrc="$EDITOR $DOTFILES/lf/lfrc"
alias rkeeweb='copy ~/Documents/notes/webex-rkee.txt'
alias util='cdl $HOME/dev/ibm-projects/aide-utilities'
alias temp='cdl $HOME/dev/ibm-projects/aide-template/'
alias nv='cdl $HOME/.dotfiles/nvim'
alias dev='cdl $HOME/dev/'
alias dots="cdl $DOTFILES"
alias downloads="cdl ~/Downloads"
alias docs="cdl ~/Documents"
alias vids="cdl ~/Videos"
alias blog="cdl ~/dev/blog"
#alias roficonfig="$EDITOR $DOTFILES/rofi/config"
#alias rtconfig="$EDITOR $DOTFILES/rofi/themes/custom-nord.rasi"

# gpg secrets with zsh secrets to have some sort of protection on a per-shell basis
alias sd='secrets decrypt'
alias se='secrets encrypt'
alias ssrc='secrets source'
alias ssibm='secrets source ibm-secrets'
alias sdibm='secrets decrypt ibm-secrets'

# system
alias tarx='tar xvzf'
alias t='tmux'
alias am='alsamixer'
#alias beaver='GTK_THEME=Adwaita:light dbeaver-ce'
#alias btop='bpytop'
alias cat='bat'
alias cb='clipboard'
alias cls='clear'
alias copy='xclip -sel c <'
alias fp='flatpak'
alias hg='history | grep'
alias h='`history | sed "s/^ *[^ ]* *//" | sort | uniq | fzf`'
alias envg='env | grep'
alias mkdir='mkdir -pv'
alias mv='mv -iv'
alias mytemp='curl wttr.in'
alias update='dnfu'
alias vi='/usr/local/bin/nvim'
alias vim='/usr/local/bin/nvim'
alias wi='which'
alias x=exit
alias zz='source ~/.zshrc'
alias sus="systemctl suspend"
alias hib="systemctl hibernate"
alias off="systemctl poweroff"
alias reb="systemctl reboot"
#alias dr="rofi -show drun"
#alias r="rofi -theme Arc-Dark -show window"

# argo
alias acc='argo cron create'
alias acd='argo cron delete'
alias acg='argo cron get'
alias acli='argo cron list'
alias aclint='argo cron lint'
alias ad='argo delete'
alias ada='argo delete --all'
alias adc='argo delete --completed'
alias ali='argo list'
alias alint='argo lint'
alias alo='argo logs'
alias as='argo submit'
alias asw='argo submit --watch'
alias aw='argo watch'

# bloop
alias bl='bloop'
alias blc='bloop compile'
alias blcr='bloop compile root --verbose'
alias blcv='bloop compile --verbose'
alias bld='buildah'
alias blp='bloop projects'
alias blrd='bloop run root -m com.ibm.cio.DemoCos'
alias blrm='bloop run root -m'
alias blrr='bloop run root'
alias blrv='bloop run --verbose'

# scala
alias fix="scalafix"
alias fmt="scalafmt"
alias sbi='sbt -Dbloop.export-jar-classifiers=sources bloopInstall'
alias bb="$EDITOR build.sbt"
alias bd="$EDITOR project/Dependencies.scala"
alias bp="$EDITOR project/plugins.sbt"
alias refconf="$EDITOR src/main/resources/reference.conf"
alias appconf="$EDITOR src/main/resources/application.conf"

# finders
alias fa='find-alias'
alias fdf='fd --no-ignore --list-details --hidden'

# git related
alias lg='lazygit'
alias ghibm='gh fzrepo'
alias ghdig='gh repo-fzf Digital-Business-Mgmt-Platform'
alias gistcl='gh gist clone'
alias gistcr='gh gist create'
alias gistdel='gh gist delete'
alias giste='gh gist edit'
alias gistl='gh gist list -L 10'
alias gistv='gh gist view'
alias grepo='gh grepo'
alias gtemp='gh gct'
alias rvwt='gh rvwt 2>/dev/null'
alias rvwu='gh rvwu 2>/dev/null'

alias glow='glow -p'

# cloud
alias ic='ibmcloud'
alias iccr-rm='ic cr image-rm'

# artifactory
alias jf=jfrog
alias jfdls="jfrog rt search \"txo-aide-team-cio-docker-local/*\" | jq '.[]|.path + .props[\"version\"]' -r"
alias jfmls="jfrog rt search \"txo-aide-team-cio-maven-local/*\" | jq '.[]|.path + .props[\"version\"]' -r"
alias jfsls="jfrog rt search \"txo-aide-team-cio-sbt-local/*\" | jq '.[]|.path + .props[\"version\"]' -r"

# k8s
#alias kubectl=kubecolor
#alias kb='kubecolor'
alias kb='kubectl'
alias kbaf='kb apply -f'
alias kbcf='kb create -f'
alias kbd='kb describe'
alias kbdp='kb describe pod'
alias kbgd='kb get deployments'
alias kbgp='kb get pods'
alias kbgpi='kb get pipelines'
alias kbgs='kb get secrets'
alias kbl='kb logs'
alias kblf='kb logs --follow'
alias kbrf='kb replace --force -f'
alias klint='kube-linter lint'
alias kns='kubens'
alias kval='kubeval'
alias kx='kubectx'
alias mk='minikube'

# containers
alias docker=podman
alias pcls='podman container ls'
alias pd=podman
alias pi='podman images'
alias pprune='podman system prune --all --force'
alias ppull='podman pull'
alias prc='podman rm $(podman ps -aq)'
alias prmi='podman images -q | xargs podman rmi'
#alias psc='podman stop $(docker ps -aq)'
alias di='docker images'
alias drmi='docker images -q | xargs docker rmi'
alias drmif='docker rmi --force $(docker images -q)'
alias docker-reset='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'
alias lzd='lazydocker'

# keepassxc
alias kpass='/usr/bin/keepassxc-cli'
alias kpasso='keepassxc-cli open ~/Dropbox/donut-bartenders/donut-bartenders.kdbx'

# directory listings
alias l=lf
alias la="colorls -lA"
alias lad="la --sort-dirs"
alias lag="la --git-status"
alias less='less -FSRXc'
alias ll="la -tr --git-status"
alias lld="ll --sort-dirs"
alias llg="ll --git-status"
alias llt="ll -tr"
alias ls="colorls -A"
alias lsd="ls --sort-dirs"
alias lsg="ls --git-status"
alias lst="ls -tr"
#alias ll="colorls -1A"

#alias linters='mc cp --recursive cosp/robbyk/configs/linters/ .'
#alias lk='lookatme'

# openshift oc
alias ocaf='oc apply -f'
alias occf='oc create -f'
alias occs='oc create secret'
alias ocd='oc describe'
alias ocgd='oc get deployments'
alias ocgn='oc get nodes'
alias ocgp='oc get pods'
alias ocgs='oc get secrets'
alias ocl='oc logs'
alias oclf='oc logs --follow'
alias ocrf='oc replace --force -f'

# tekton
alias tknhs='tkn hub search'
alias tknit='tkn hub install task'
alias tknpl='tkn pipeline list'
alias tknplf='tkn pipelinerun logs --last -f'
alias tknps='tkn pipeline start'
alias tkntd='tkn task describe'
alias tkntlf='tkn taskrun logs --last -f'
alias tknts='tkn task start'
alias tlint=tekton-lint

# yamls
alias ylint='yamllint'
# alias y='yq eval -C'
type yq > /dev/null && alias yq='yq -C'
alias -g @yml='| yq eval -P'
alias -g @yaml='| yq eval -P'
alias -g @json='| jq'

#alias luamake=$HOME/tools/lua-language-server/3rd/luamake/luamake

#unalias grv

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

find-alias(){ alias | grep ${1} }

# a bunch of really ugly functions that could use a lot of improvements

# delete any target directory recursively in a jvm project. helpful for debugging.
delete-target() {
find . -type d -name target -prune -exec rm -r {} +
}

# find files with extension in location given
fde(){ fd . -e ${1} ${2} }

#mcddpls(){
#mc ls cosddp/dev-ai-staging/${1}
#}

go-to-local-bin(){
sudo mv $1 /usr/local/bin/$1
}

go-to-completions(){
sudo mv $1 /home/robbyk/.oh-my-zsh/completions/$1
}

# use mc to list all files in cos dm location
mcdmls(){
mc ls dm/${1}
}

# use mc to list files in dm location. seriously needs to pamaterized.
mcdmfiles(){
mc $1 dm/datamaze-dev-analytics-sp-files/${2}
}

mcdmjars(){
mc $1 dm/datamaze-dev-analytics-sp-jars/${2}
}

mcdmlogs(){
mc $1 dm/datamaze-dev-analytics-sp-logs/${2}
}

# cd into dir after creating it.
mkcdir()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

# colorize oc commands
ocy() {
  oc --output yaml $@ | yq eval --colors
}

occ() {
  oc $@ | yq eval --colors -P
}

#lfcd
LFCD="$HOME/.config/lf/lfcd.sh"
if [ -f "$LFCD" ]; then
    source "$LFCD"
fi

lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        if [ -d "$dir" ]; then
            if [ "$dir" != "$(pwd)" ]; then
                cd "$dir"
            fi
        fi
    fi
}

fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

# run `ll` after running cd into dir.
cdl() { cd "$@" && ll; }

# easier way to edit and reload zshrc file after opening
# open ~/.zshrc in using the default editor specified in $EDITOR
alias ec="$EDITOR $DOTFILES/zsh/.zshrc"

# source ~/.zshrc
alias sc="source $DOTFILES/zsh/.zshrc"
# zrc() { $EDITOR $DOTFILES/zsh/.zshrc; source $DOTFILES/zsh/.zshrc; }

alias headp="pactl set-default-sink alsa_output.usb-Focusrite_Scarlett_4i4_USB_D86VPBY158CC91-00.pro-output-0"
alias speakers="pactl set-default-sink alsa_output.usb-Audioengine_Audioengine_2_-00.iec958-stereo"
alias mutemic="pactl set-source-mute alsa_input.usb-Focusrite_Scarlett_4i4_USB_D86VPBY158CC91-00.pro-input-0 true"
alias unmutemic="pactl set-source-mute alsa_input.usb-Focusrite_Scarlett_4i4_USB_D86VPBY158CC91-00.pro-input-0 false"
