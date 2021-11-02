#figlet "do not go gentle into that good night"
#motivate
#neofetch

[[ $TMUX = "" ]] && export TERM="xterm-256color"

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

#COMPLETION_WAITING_DOTS="true"
#
# INITIALIZING FZF {{{
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Dotfiles location
DOTFILES="$HOME/.dotfiles"

export FZF_TMUX_OPTS="-p 85%,65%"
export FZF_BASE="$HOME/.fzf"
export FZF_DEFAULT_COMMAND="fd -tf -HL --exclude={'.git,.dropbox,.gem,.npm,.jfrog,target,.local,.vscode,node_modules'} -i . $HOME"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview '(bat --style=numbers --color=always {} || cat {} || tree -NC {}) 2> /dev/null | head -200'"
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview' --exact"
export FZF_ALT_C_COMMAND='fd -t d -H -L -E target -E .git -E ".local" -E "*.jar" -E "node_modules" -i . $HOME'
export FZF_ALT_C_OPTS="--preview 'tree -NC {} | head -200'"
export VISUAL="/usr/local/bin/nvim"
export EDITOR="/usr/local/bin/nvim"
export SUDO_EDITOR="/usr/local/bin/nvim"
export HISTFILESIZE=
export HISTFILE=~/.zsh_history
export HISTSIZE=20000
export SAVEHIST=20000
export MYVIMRC=$HOME/.config/nvim/init.lua
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk
export JRE_HOME=/usr/lib/jvm/jre-11-openjdk
export GIT_HOME=/usr/bin/git
export MVN_HOME=/usr/local/apache-maven-3.6.3
export STEWARD_DIR=$HOME/dev/scala-steward/
export GH_HOST=github.ibm.com
export GH_EDITOR=/usr/local/bin/nvim
export IBMCLOUD_TRACE=false
export IBMCLOUD_HOME=/usr/local/IBM_Cloud_CLI
export IBMCLOUD_COLOR=true
export GO_HOME=$HOME/go
export ZSH_PLUGINS_ALIAS_TIPS_FORCE=1
#export ZSH_PLUGINS_ALIAS_TIPS_REVEAL=1

setopt appendhistory

# source "${HOME}/.cargo/env"

# My path customisations
PATH=$PATH:/opt
PATH=$PATH:/opt/bin
PATH=$PATH:/usr/bin/local
PATH=$PATH:${HOME}/.local/bin
PATH=$PATH:${HOME}/.local/share/coursier/bin
PATH=$PATH:${JAVA_HOME}/bin
PATH=$PATH:${MVN_HOME}/bin
PATH=$PATH:${GIT_HOME}/bin
PATH=$PATH:${GO_HOME}/bin
PATH=$PATH:${IBMCLOUD_HOME}
PATH=$PATH:${HOME}/tools/lua-language-server/bin/Linux
PATH=$PATH:${HOME}/.yarn/bin
PATH=$PATH:${HOME}/.config/yarn/global/node_modules/.bin
PATH=$PATH:${HOME}/.config/rofi/bin
PATH=$PATH:${HOME}/node_modules/.bin
export PATH

export GOPATH=${HOME}/go

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias h='`history | sed "s/^ *[^ ]* *//" | sort | uniq | fzf`'

zle_highlight+=(paste:none)
zstyle :prompt:pure:git:stash show yes

source $(dirname $(gem which colorls))/tab_complete.sh

plugins=(
  minikube
  docker
  docker-compose
  git 
  zsh-autosuggestions 
  zsh-syntax-highlighting 
  colored-man-pages 
  dnf 
  bgnotify 
  fzf-tab 
  vscode 
  zsh-256color 
  fzf 
  jfrog 
  kubectl
  alias-tips
  tmux
  fast-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

find-alias(){ alias | grep ${1} }

delete-target() { 
find . -type d -name target -prune -exec rm -r {} + 
}

# find files with extension in location given
fde(){ fd . -e ${1} ${2} }

#mcddpls(){
#mc ls cosddp/dev-ai-staging/${1}
#}

mcdmls(){
mc ls dm/${1}
}

mcdmfiles(){
mc $1 dm/datamaze-dev-analytics-sp-files/${2}
}

mcdmjars(){
mc $1 dm/datamaze-dev-analytics-sp-jars/${2}
}

mcdmlogs(){
mc $1 dm/datamaze-dev-analytics-sp-logs/${2}
}

mkcdir ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

function gclonecd {
  local dir
  if [[ $# -eq 2 ]]; then
    git clone -- $1 $2 || return
    dir=$2
  else
    git clone -- $1 || return
    dir=${1:t}
  fi
  dir2=${1##*/}
  basefolder="${dir2%.git}"
  builtin cd $basefolder
  ls -l
}

pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish

# autocompletions
source $HOME/.config/broot/launcher/bash/br
source <(oc completion zsh)
source <(kubectl completion zsh)
source /usr/local/IBM_Cloud_CLI/autocomplete/zsh_autocomplete
source <(yq shell-completion zsh)
source <(tkn completion zsh)
source <(minikube completion zsh)

complete -o nospace -C /usr/local/bin/odo odo

function options() {
    PLUGIN_PATH="$HOME/.oh-my-zsh/plugins/"
    for plugin in $plugins; do
        echo "\n\nPlugin: $plugin"; grep -r "^function \w*" $PLUGIN_PATH$plugin | awk '{print $2}' | sed 's/()//'| tr '\n' ', '; grep -r "^alias" $PLUGIN_PATH$plugin | awk '{print $2}' | sed 's/=.*//' |  tr '\n' ', '
    done
}

bindkey '^ ' autosuggest-accept
bindkey -a '^ ' autosuggest-accept

#bindkey "^[\`" autosuggest-accept
#bindkey -a "^[\`" autosuggest-accept

# export BAT_THEME="1337"
export BAT_THEME="OneHalfDark"

# Quick configs
alias zshconfig="$EDITOR $DOTFILES/zsh/.zshrc"
alias nvimconfig="$EDITOR $DOTFILES/nvim/init.lua"
alias codeconfig="$EDITOR $DOTFILES/vscode/settings.json"
alias alacrittyconfig="$EDITOR $DOTFILES/alacritty/alacritty.yml"
alias lfrc="$EDITOR $DOTFILES/lf/lfrc"
# alias roficonfig="$EDITOR $DOTFILES/rofi/config"
# alias rtconfig="$EDITOR $DOTFILES/rofi/themes/custom-nord.rasi"
# alias i3config="$EDITOR $DOTFILES/i3/.config/i3/config"

alias kval='kubeval'
alias update='dnfu'
alias mk='minikube'
alias gtemp='gh gct'
alias docker='/usr/bin/docker'
alias l=lf
alias x=exit
alias lk='lookatme'
alias bld='buildah'
alias drmif='docker rmi --force $(docker images -q)'
alias drmi='docker images -q | xargs docker rmi'
alias prmi='podman images -q | xargs podman rmi'
alias di='docker images'
alias grepo='gh grepo'
alias tlint=tekton-lint
alias hg='history | grep'
alias cb='clipboard'
alias klint='kube-linter lint'
alias ylint='yamllint'
# alias vpu="$EDITOR +'PackerUpdate --sync' +qa"
alias am='alsamixer'
alias beaver='GTK_THEME=Adwaita:light dbeaver-ce'
alias s='scala3-repl'
alias wi='which'
#alias -s {md,markdown}='glow' # I have no idea what this does
alias glow='glow -p'
alias appconf="$EDITOR src/main/resources/application.conf"
alias arcc='argo cron create'
alias arcd='argo cron delete'
alias arcg='argo cron get'
alias arcli='argo cron list'
alias arclint='argo cron lint'
alias ard='argo delete'
alias arda='argo delete --all'
alias ardc='argo delete --completed'
alias arli='argo list'
alias arlint='argo lint'
alias arlo='argo logs'
alias ars='argo submit'
alias arsw='argo submit --watch'
alias arw='argo watch'
alias bb="$EDITOR build.sbt"
alias bd="$EDITOR project/Dependencies.scala"
alias bl='bloop'
alias blc='bloop compile'
alias blcr='bloop compile root --verbose'
alias blcv='bloop compile --verbose'
alias blp='bloop projects'
alias blrd='bloop run root -m com.ibm.cio.DemoCos'
alias blrm='bloop run root -m'
alias blrr='bloop run root'
alias blrv='bloop run --verbose'
alias bp="$EDITOR project/plugins.sbt"
alias btop='bpytop'
alias cat='bat'
alias cls='clear'
alias copy='xclip -sel c <'
#alias docker=podman
alias fa='find-alias'
alias fdf='fd --no-ignore --list-details --hidden'
alias fix="scalafix"
alias fmt="scalafmt"
alias fp='flatpak'
alias gccd='gclonecd'
alias gcl='gh gist clone'
alias ic='ibmcloud'
alias iccr-rm='ic cr image-rm'
alias jfdls="jfrog rt search \"txo-aide-team-cio-docker-local/*\" | jq '.[]|.path + .props[\"version\"]' -r"
alias jfmls="jfrog rt search \"txo-aide-team-cio-maven-local/*\" | jq '.[]|.path + .props[\"version\"]' -r"
alias jfsls="jfrog rt search \"txo-aide-team-cio-sbt-local/*\" | jq '.[]|.path + .props[\"version\"]' -r"
alias kb='kubecolor'
alias kbaf='kb apply -f'
alias kbaf='kb get notes'
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
alias kns='kubens'
alias kpass='/usr/local/bin/keepassxc-cli'
alias kpasso='keepassxc-cli open ~/Dropbox/donut-bartenders/donut-bartenders.kdbx'
alias kx='kubectx'
alias la="colorls -lA"          # list w/ info
alias lad="la --sort-dirs"
alias lag="la --git-status"
alias ll="la -tr"
alias less='less -FSRXc'
alias lg='lazygit'
alias linters='mc cp --recursive cosp/robbyk/configs/linters/ .'
#alias ll="colorls -1A"          # list, 1 per line
alias lld="ll --sort-dirs"
alias llg="ll --git-status"
alias llt="ll -tr"
alias ls="colorls -A"           # short, multi-line
alias lsd="ls --sort-dirs"
alias lsg="ls --git-status"
alias lst="ls -tr"
alias lzd='lazydocker'
alias mc='/usr/local/bin/mc'
alias mkdir='mkdir -pv'
alias mv='mv -iv'
alias mytemp='curl wttr.in'
alias ocaf='oc apply -f'
alias occf='oc create -f'
alias ocd='oc describe'
alias ocgd='oc get deployments'
alias ocgn='oc get nodes'
alias ocgp='oc get pods'
alias occs='oc create secret'
alias ocgs='oc get secrets'
alias ocl='oc logs'
alias oclf='oc logs --follow'
alias ocrf='oc replace --force -f'
alias ols="ls"
alias pcls='podman container ls'
alias pd=podman
alias pi='podman images'
alias pip='/usr/bin/pip3'
alias pprune='podman system prune --all --force'
alias ppull='podman pull'
alias prc='podman rm $(podman ps -aq)'
alias psc='podman stop $(docker ps -aq)'
alias refconf="$EDITOR src/main/resources/reference.conf"
alias rkeeweb='copy ~/Documents/notes/webex-rkee.txt'
alias rt='rm -rf ./target'
alias rvwt='gh rvwt 2>/dev/null'
alias rvwu='gh rvwu 2>/dev/null'
alias sbi='sbt -Dbloop.export-jar-classifiers=sources bloopInstall'
alias t='tmux'
alias tknhs='tkn hub search'
alias tknit='tkn hub install task'
alias tknpl='tkn pipeline list'
alias tknplf='tkn pipelinerun logs --last -f'
alias tknps='tkn pipeline start'
alias tkntd='tkn task describe'
alias tkntlf='tkn taskrun logs --last -f'
alias tknts='tkn task start'
alias util='cdl $HOME/dev/git-projects/aide-utilities'
alias vi='/usr/local/bin/nvim'
alias vim='/usr/local/bin/nvim'
alias zz='source ~/.zshrc'
# alias y='yq eval -C'

# uses alias vl='vi -u ~/.config/nvim/init.lua'
#fzf_then_open_in_editor_lua() {
#    file="$(__fsel)"
#    file_no_whitespace="$(echo -e "${file}" | tr -d '[:space:]')"
#    if [ -n "$file_no_whitespace" ]; then
#      vl "${file_no_whitespace}"
#    fi;
#    zle accept-line
#}
#zle -N fzf_then_open_in_editor_lua
#bindkey "^O" fzf_then_open_in_editor_lua

fzf_then_open_in_editor() {
    file="$(__fsel)"
    file_no_whitespace="$(echo -e "${file}" | tr -d '[:space:]')"
    if [ -n "$file_no_whitespace" ]; then
      ${EDITOR:-nvim} "${file_no_whitespace}"
    fi;
    zle accept-line
}
zle -N fzf_then_open_in_editor
bindkey "^O" fzf_then_open_in_editor

# make completion work with kubecolor
compdef kubecolor=kubectl

cdl() { cd "$@" && ll; }

unalias grv

type yq > /dev/null && alias yq='yq -C'
alias -g @yml='| yq eval -P'
alias -g @yaml='| yq eval -P'
alias -g @json='| jq'

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

bindkey -s "^[o" 'lfcd\n'

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

#bindkey -s "^[l" 'lf2\n'
bindkey -s '^b' 'bc -lq\n'

# Tekton cli
if [ ! -f "${fpath[1]}/_tkn" ]; then
	command -v tkn >/dev/null 2>&1 && tkn completion zsh > "${fpath[1]}/_tkn"
fi

# open a file for editing by choosing with fzf
fzf-open-file-or-dir() {
	local cmd="command find -L . \
	\\( -path '*/\\.*' -o -fstype 'dev' -o -fstype 'proc' \\) -prune \
	-o -type f -print \
	-o -type d -print \
	-o -type l -print 2> /dev/null | sed 1d | cut -b3-"
	local out=$(eval $cmd | fzf --exit-0)
	if [ -f "$out" ]; then
		vi "$out" < /dev/tty
	elif [ -d "$out" ]; then
		cd "$out"
		zle reset-prompt
	fi
}
zle -N fzf-open-file-or-dir
bindkey '^P' fzf-open-file-or-dir

fpath=($HOME/.local/share/zsh/completions $fpath)

autoload compinit

compinit -i

alias luamake=$HOME/tools/lua-language-server/3rd/luamake/luamake

source ~/.fzf/shell/completion.zsh

# === completion === {{{
enable-fzf-tab
zstyle ':fzf-tab:complete:(kill|ps):argument-rest' fzf-flags '--preview-window=down:3:wrap'
zstyle ':fzf-tab:complete:(kill|ps):argument-rest' fzf-preview '[[ $group == "[process ID]" ]] && ps -p $word -o comm="" -w -w'
zstyle ':fzf-tab:complete:kill:*' popup-pad 0 3
zstyle ':fzf-tab:complete:nvim:*' fzf-preview 'r=$realpath; ([[ -f $r ]] && bat --style=numbers --color=always $r) || ([[ -d $r ]] && tree -C $r | less) || (echo $r 2> /dev/null | head -200)'
zstyle ':fzf-tab:complete:nvim:argument-rest' fzf-flags '--preview-window=nohidden,right:50%:wrap'
zstyle ':fzf-tab:complete:updatelocal:argument-rest' fzf-preview "git --git-dir=$UPDATELOCAL_GITDIR/\${word}/.git log --color --date=short --pretty=format:'%Cgreen%cd %h %Creset%s %Cred%d%Creset ||%b' ..FETCH_HEAD 2>/dev/null"
zstyle ':fzf-tab:complete:updatelocal:argument-rest' fzf-flags '--preview-window=down:5:wrap'
#zstyle ':fzf-tab:complete:(exa|cd):*' popup-pad 30 0
zstyle ':fzf-tab:*' popup-pad 60 0
zstyle ':fzf-tab:complete:(exa|cd|cd_):*' fzf-flags '--preview-window=nohidden,right:60%:wrap'
zstyle ':fzf-tab:complete:(exa|cd|cd_):*' fzf-preview '[[ -d $realpath ]] && exa -T --color=always $(readlink -f $realpath)'
zstyle ':fzf-tab:complete:(cp|rm|mv|bat):argument-rest' fzf-preview 'r=$(readlink -f $realpath); bat --color=always -- $r || exa --color=always -- $r'
zstyle ':fzf-tab:*' fzf-bindings 'enter:accept,backward-eof:abort'   # enter as accept, abort deleting empty
zstyle ':fzf-tab:*' print-query ctrl-c        # use input as result when ctrl-c
zstyle ':fzf-tab:*' accept-line space         # accept selected entry on space
zstyle ':fzf-tab:*' prefix ''                 # no dot prefix
zstyle ':fzf-tab:*' switch-group ',' '.'      # switch between header groups
zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup
# zstyle ':fzf-tab:*' single-group color header # single header is shown
zstyle ':fzf-tab:*' fzf-pad 4                 # increased because of fzf border
# zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' use-cache true
zstyle ':completion:*' verbose yes
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' completer _complete _match _list _ignored _correct _approximate
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' ignore-parents parent pwd
zstyle ':completion:*:functions' ignored-patterns '(_*|pre(cmd|exec))'
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
zstyle ':completion:*:default' list-prompt '%S%M matches%s'
zstyle ':completion:*:git-checkout:*' sort false
zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':completion:*:exa' file-sort modification
zstyle ':completion:*:exa' sort false
zstyle ':completion:*:manuals' separate-sections true
zstyle -e ':completion:*:approximate:*' max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3>7?7:($#PREFIX+$#SUFFIX)/3))numeric)'
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'
# }}}

z() { $EDITOR $DOTFILES/zsh/.zshrc; source $DOTFILES/zsh/.zshrc; }

#zvm_after_init_commands+=('[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh')

ZSH_CONFIG=$HOME/.config/zsh
#source $ZSH_CONFIG/zsh-aliases

# Docker clean state
alias docker-reset='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'

alias sus="systemctl suspend"
alias hib="systemctl hibernate"
alias off="systemctl poweroff"
alias reb="systemctl reboot"

alias temp='cdl $HOME/dev/git-projects/aide-template/'
alias nv='cdl /home/robbyk/.dotfiles/nvim'
alias dev='cdl $HOME/dev/'
alias dots="cdl $DOTFILES"
alias downloads="cdl ~/Downloads"

alias dr="rofi -show drun"
alias r="rofi -theme Arc-Dark -show window"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
