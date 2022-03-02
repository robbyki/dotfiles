export EDITOR="/usr/local/bin/nvim"
export DOTFILES="$HOME/.dotfiles"

# Quick files and directories
alias dots="cd $DOTFILES"
alias zshcfg="$EDITOR $DOTFILES/zsh/.zshrc"
alias al="$EDITOR $DOTFILES/zsh/alias.zsh"
alias fzftabcfg="$EDITOR $DOTFILES/zsh/fzf-tab.zsh"
alias nvimcfg="$EDITOR $DOTFILES/nvim/init.lua"
alias codecfg="$EDITOR $DOTFILES/vscode/settings.json"
alias alacrittycfg="$EDITOR $DOTFILES/alacritty/alacritty.yml"
alias tmuxcfg="$EDITOR $DOTFILES/tmux/.tmux.conf"
alias kbcfg="$EDITOR ~/.kube/config"
alias lfrc="$EDITOR $DOTFILES/lf/lfrc"
alias funcs="$EDITOR $DOTFILES/zsh/functions.zsh"

# "I didn't say they'll take you places you'd want to go"
alias rkeeweb="copy ~/Documents/notes/webex-rkee.txt"
alias util="cd $HOME/dev/ibm-projects/aide-utilities"
alias temp="cd $HOME/dev/ibm-projects/aide-template/"
alias nv="cd $HOME/.dotfiles/nvim"
alias dev="cd $HOME/dev/"
alias downloads="cd ~/Downloads"
alias docs="cd ~/Documents"
alias vids="cd ~/Videos"
alias blog="cd ~/dev/blog"
alias snip="cd ~/.dotfiles/nvim/.vsnip"
alias snipf="cd $HOME/.local/share/nvim/site/pack/packer/opt/friendly-snippets/snippets/"
alias pics="cd ~/Pictures"
#alias roficonfig="$EDITOR $DOTFILES/rofi/config"
#alias rtconfig="$EDITOR $DOTFILES/rofi/themes/custom-nord.rasi"
alias chx="chmod +x"

# gpg secrets on a per shell basis
alias gpgexp='gpg --output robbmk.pgp --armor --export robbmk@gmail.com'
alias sd="secrets decrypt"
alias se="secrets encrypt"
alias ssrc="secrets source"
alias ssibm="secrets source ibm-secrets"

# system helpers
alias exp='export'
alias tch='touch'
alias ff='functions'
alias tarx='tar xvzf'
alias tarc='tar cvzf'
alias t='tmux'
alias am='alsamixer'
#alias beaver='GTK_THEME=Adwaita:light dbeaver-ce'
alias c='cat'
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
alias vi=$EDITOR
alias vim=$EDITOR
alias wi='which'
alias x=exit
alias zz='omz reload'
alias sus="systemctl suspend"
alias hib="systemctl hibernate"
alias off="systemctl poweroff"
alias reb="systemctl reboot"
alias peek="GDK_BACKEND=x11 peek"
alias ccc="xclip -sel clip"
alias jqi="jid -q | ccc"

#alias dr="rofi -show drun"
#alias r="rofi -theme Arc-Dark -show window"

#gatsby js blog builder
alias gat='gatsby'
alias gatdev="gatsby develop"

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

# bloop Scala
alias bl='bloop'
alias blc='bloop compile'
alias blcr='bloop compile root --verbose'
alias blcv='bloop compile --verbose'
alias blp='bloop projects'
alias blrm='bloop run root -m'
alias blr='bloop run'
alias blrr='bloop run root'
alias blrv='bloop run --verbose'

# Buildah
alias bu='buildah'
alias bub='buildah build' # same as buildah build
alias buinsp='buildah inspect'
alias burun='buildah run'
alias buf='buildah from'
alias bucfg='buildah config'
alias buc='buildah commit'
alias bucls='buildah containers --all'
alias bui='buildah images --all'
alias bucopy='buildah copy'
alias bumnt='buildah mount'
alias buumnt='buildah unmount'
alias buu='buildah unshare'
alias burmall='buildah rm --all'
alias bupush='buildah push'
alias burm='buildah rm'

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
alias fa='findalias'
alias fdf='fd --no-ignore --list-details --hidden'

# git
alias ghrepo='gh repo-fzf'
alias ghibm='gh fzrepo'
alias ghdig='gh repo-fzf Digital-Business-Mgmt-Platform'
alias ghaide='gh repo-fzf AIDE'
alias gistcl='gh gist clone'
alias gistcr='gh gist create -p -w'
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
alias iclogin='ssrc ibm-secrets;IBMCLOUD_API_KEY=$IBMCLOUD_API_KEY_RK ic login -q &>/dev/null'
alias iccr-rm='ic cr image-rm'

# artifactory
alias jf=jfrog
alias jfdls="jfrog rt search \"txo-aide-team-cio-docker-local/*\" | jq '.[]|.path + .props[\"version\"]' -r"
alias jfmls="jfrog rt search \"txo-aide-team-cio-maven-local/*\" | jq '.[]|.path + .props[\"version\"]' -r"
alias jfsls="jfrog rt search \"txo-aide-team-cio-sbt-local/*\" | jq '.[]|.path + .props[\"version\"]' -r"
alias jfdel="jfrog rt delete"

# kubernetes
alias kbclean='kbcleanup --raw > ~/.kube/config.swap;kbswap'
alias kbver='kubectl version --short --client=true'
alias kbc='kubecolor'
alias kb='kubectl'
alias kbaf='kbc apply -f'
alias kbcf='kbc create -f'
alias kbd='kb describe'
alias kbdp='kbc describe pod'
alias kbgd='kbc get deployments'
alias kbgp='kbc get pods'
alias kbgpi='kbc get pipelines'
alias kbgs='kbc get secrets'
alias kbl='kbc logs'
alias kblf='kbc logs --follow'
alias kbrf='kbc replace --force -f'
alias klint='kube-linter lint'
alias kns='kubens'
alias kval='kubeval --schema-location=file://$OCPSCHEMA'
alias kx='kubectx'
alias mk='minikube'
alias st='stern'
alias stt='stern --tail 10'
alias kbksd='kubectl-ksd' # secrets decoder

# containers
alias docker='podman'
# alias pdauth="$EDITOR ${XDG_RUNTIME_DIR}/containers/auth.json"
alias pdpush='podman push --tls-verify=false'
alias pdcls='podman container list --all'
alias pde='podman exec'
alias pd='podman'
alias pdl='podman login'
alias pdb='podman build'
alias pdi='podman images'
alias pdprune='podman system prune --all --force'
alias pdt='podman tag'
alias pdr='podman run'
alias pdpull='podman pull'
alias pdrc='podman rm $(podman ps -aq)'
alias pdrmi='podman images -q | xargs podman rmi'
alias pdps='podman ps --all --storage'
alias pdstop='podman stop -a'
alias pdrmcls='podman rm -fa'
alias pdnuke='podman rmi -fa'
alias pdsc='podman stop $(docker ps -aq)'
alias pds='podman search'
alias pdif="pdi --format '{{.Repository}} -> {{.ID}}'"
# alias di='docker images'
# alias drmi='docker images -q | xargs docker rmi'
# alias drmif='docker rmi --force $(docker images -q)'
# alias docker-reset='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'
alias lzd='lazydocker'

# keepassxc
alias kpass='/usr/bin/keepassxc-cli'
alias kpasso='keepassxc-cli open ~/Dropbox/donut-bartenders/donut-bartenders.kdbx'

alias l=lf

# directory listings
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

# openshift oc
alias ocroutes='oc get routes --all-namespaces --output=custom-columns=NAME:.metadata.name'
alias ocvars='source ~/bin/ocvars'
alias ocg='oc get'
alias ocaf='oc apply -f'
alias occd='oc create deployment'
alias occf='oc create -f'
alias occs='oc create secret'
alias ocd='oc describe'
alias ocdebug='oc debug nodes' # use as ocdebug/`ocnip`
alias oce='oc expose'
alias oced='oc expose deployment --port=8080'
alias ocgd='oc get deployments'
alias ocgn='oc get nodes'
alias ocgp='oc get pods'
alias ocgpw='oc get pods --watch'
alias ocgs='oc get secrets'
alias ocgserv='oc get svc'
alias ocl='oc logs'
alias oclf='oc logs --follow'
alias ocls='ic oc cluster ls'
alias ocnp='oc new-project'
alias ocrf='oc replace --force -f'
alias octkn='oc whoami -t'
alias ocwho='oc whoami'

# tekton
alias tkb='tekton bundle'
alias tkclt='tekton clustertask'
alias tkcltrb='tekton clustertriggerbinding'
alias tkc='tekton condition'
alias tke='tekton eventlistener'
alias tkh='tekton hub'
alias tkp='tekton pipeline'
alias tkpr='tekton pipelinerun'
alias tkr='tekton resource'
alias tkt='tekton task'
alias tktr='tekton taskrun'
alias tktrb='tekton triggerbinding'
alias tktrt='tekton triggertemplate'
alias tlint='tekton-lint'

# yamls
alias ylint='yamllint'
# alias y='yq eval -C'
type yq > /dev/null && alias yq='yq -C'
alias -g @yml='| yq eval -P'
alias -g @yaml='| yq eval -P'
alias -g @json='| jq'

alias ec="$EDITOR $DOTFILES/zsh/.zshrc"
zrc() { $EDITOR $DOTFILES/zsh/.zshrc; source $DOTFILES/zsh/.zshrc; }

# audio
alias hp="pactl set-default-sink alsa_output.usb-Focusrite_Scarlett_4i4_USB_D86VPBY158CC91-00.pro-output-0"
alias sp="pactl set-default-sink alsa_output.usb-Audioengine_Audioengine_2_-00.iec958-stereo"
alias mutemic="pactl set-source-mute alsa_input.usb-Focusrite_Scarlett_4i4_USB_D86VPBY158CC91-00.pro-input-0 true"
alias unmutemic="pactl set-source-mute alsa_input.usb-Focusrite_Scarlett_4i4_USB_D86VPBY158CC91-00.pro-input-0 false"

#alias luamake=$HOME/tools/lua-language-server/3rd/luamake/luamake

# I don't really need these since I can just use `magic-enter` but I like them anyway
alias ptop='tput cup $((LINES/4)) 0'  # Clear quarter
# alias pmid='tput cup $((LINES/2)) 0'  # Clear half
alias pdown='tput cup $((3*LINES/4)) 0' # Clear 3/4th
