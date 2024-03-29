# shellcheck disable=2148
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  # shellcheck disable=1090
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# shellcheck disable=2034
ZSH_THEME="powerlevel10k/powerlevel10k"
# shellcheck disable=1090
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export ZSH="$HOME/.oh-my-zsh"

# {{{ plugins
plugins=(
    alias-tips
    autoupdate
    dnf
    fzf-alias
    colored-man-pages
    sudo
    fzf-tab
    git
    golang
    jfrog
    notify
    tmux
    npm
    vi-mode
    vscode
    zsh-256color
    zsh-autosuggestions
    zsh-better-npm-completion
    zsh-secrets
    zsh-syntax-highlighting
)
# }}}

# {{{ completions
autoload -U compinit && compinit
source <(kubectl completion zsh)
source <(minikube completion zsh)
source <(oc completion zsh | sed -e 's/compdef _kubectl kubectl/compdef _oc oc/' )
complete -C '/bin/aws_completer' aws
source /usr/local/ibmcloud/autocomplete/zsh_autocomplete
# source <(tkn completion zsh)
# source $ZSH/completions/_helm
# }}}

source $ZSH/oh-my-zsh.sh

source $HOME/dev/enhancd/init.sh
export ENHANCD_DOT_SHOW_FULLPATH=1
export ENHANCD_FILTER=fzy:fzf
export ENHANCD_HOOK_AFTER_CD="ll"

export ZSH_PLUGINS_ALIAS_TIPS_FORCE=1

# {{{ history settings
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.zsh_history
HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear";
HISTCONTROL='ignoreboth';
setopt bang_hist              # Treat the '!' character specially during expansion
setopt inc_append_history     # Write to the history file immediately, not when the shell exits
setopt share_history          # Share history between all sessions
setopt hist_expire_dups_first # Expire a duplicate event first when trimming history
setopt hist_ignore_dups       # Do not record an event that was just recorded again
setopt hist_ignore_all_dups   # Delete an old recorded event if a new event is a duplicate
setopt hist_save_no_dups      # Do not write a duplicate event to the history file
setopt hist_ignore_space      # Do not record an event starting with a space
setopt hist_reduce_blanks     # Remove superfluous blanks from commands added to history
setopt hist_verify            # Do not execute immediately upon history expansion
setopt extended_history       # Show timestamp in history
# zshaddhistory() { whence ${${(z)1}[1]} >| /dev/null || return 1 } # Do not store failed commands to history
# }}}

# {{{ applications
export PYSPARK_PYTHON=python3.10
export PYSPARK_DRIVER_PYTHON=python3.10
export SPARK_HOME=/usr/local/spark-3.2.1-bin-hadoop3.2
export PYTHONPATH=$(ZIPS=("$SPARK_HOME"/python/lib/*.zip); IFS=:; echo "${ZIPS[*]}"):$PYTHONPATH
export EDITOR=/usr/local/bin/nvim
export IBMCLOUD_TRACE=false
export IBMCLOUD_COLOR=true
export IBMCLOUD_VERSION_CHECK=true
export VISUAL=$EDITOR
export SUDO_EDITOR=$EDITOR
export GH_EDITOR=$EDITOR
export MYVIMRC=$XDG_CONFIG_HOME/nvim/init.lua
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk
export JRE_HOME=/usr/lib/jvm/jre-11-openjdk
export GIT_HOME=/usr/bin/git
export STEWARD_DIR=$HOME/dev/scala-steward/
export CARGO=$HOME/.cargo
export NPM=${HOME}/.npm
export FNM=${HOME}/.fnm
export SCRIPTS=${HOME}/bin
export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export KUBECONFIG=$HOME/.kube/config
# export LUASERVER=$HOME/tools/lua-language-server
# export KUBECONFIG=$KUBECONFIG:my-super-config

export PATH=${GOROOT}/bin:${GOPATH}/bin:${FNM}:${HOME}/.local/bin:${NPM}/bin:${HOME}/.local/share/coursier/bin:${JAVA_HOME}/bin:${MVN_HOME}/bin:${GIT_HOME}/bin:${HOME}/tools/lua-language-server/bin/Linux:${HOME}/.yarn/bin:${HOME}/.config/yarn/global/node_modules/.bin:${HOME}/node_modules/.bin:${CARGO}/bin:${SCRIPTS}:$PATH:/opt:$PATH:/usr/local/bin:$SPARK_HOME/bin:$PATH
# }}}

# {{{ easier pasting
zle_highlight+=(paste:none)
zstyle :prompt:pure:git:stash show yes
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}

zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish
# }}}

# I had to do this to fix weird timeouts I was having with my tmux client auto terminating
# export TMOUT=0

# color scheme for bat viewer
export BAT_THEME="OneHalfDark"

# {{{ keybindings
zle -N kpfzf
bindkey '^q' kpfzf

zle -N fancyctrlz
zle -N fzf_then_open_in_editor
zle -N fzf-open-file-current-dir
zle -N prompt-middle
zle -N fzf_functions
zle -N fzf_alias
bindkey '^ ' autosuggest-accept
bindkey -a '^ ' autosuggest-accept
bindkey '^Z' fancyctrlz
bindkey -s "^[o" 'lfcd\n'
bindkey '^O' fzf_then_open_in_editor
bindkey '^P' fzf-open-file-current-dir
bindkey '^[m' prompt-middle
bindkey -M emacs '\ea' fzf_alias
bindkey -M vicmd '\ea' fzf_alias
bindkey -M viins '\ea' fzf_alias
bindkey -M emacs '\ef' fzf_functions
bindkey -M vicmd '\ef' fzf_functions
bindkey -M viins '\ef' fzf_functions
bindkey "^[l" clear-screen
bindkey -s "^[=" 'k9s^M'
# }}}

# {{{ FZF Settings
[ -f ${HOME}/.fzf.zsh ] && source "${HOME}/.fzf.zsh"
export FZF_BASE="$HOME/.fzf"
export FZF_DEFAULT_COMMAND="fd --type file -HL --no-ignore --exclude={'ScalaResources,.metals,.bloop,.git,.dropbox,.gem,.npm,.jfrog,target,.local,.vscode,node_modules'} -i . $HOME"
export FZF_DEFAULT_OPTS="-i --no-mouse --ansi --layout=default --preview-window 'right:60%' --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="$FZF_DEFAULT_OPTS"
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
export FZF_ALT_C_COMMAND="fd -HL --no-ignore --exclude={'.git,.dropbox,.gem,.npm,.jfrog,target,.vscode,node_modules'} -i . $HOME"
export FZF_ALT_C_OPTS="--height 80% --preview 'tree -NC {} | head -200'"
export FZF_TMUX_OPTS="-p 90%,55%"
export _ZO_FZF_OPTS="--height=40% --reverse --preview 'tree -C {2} | head -200'"
# }}}

# better cd
eval "$(zoxide init zsh)"

# node manager
eval "$(fnm env)"
eval "$(fnm env --use-on-cd)"

# scala
export SBT_CREDENTIALS=$HOME/.sbt/.credentials

# helper file for storing ocp cluster info
export UPDATE_ZSH_DAYS=10

export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# openshift
export OCREGISTRY=image-registry.openshift-image-registry.svc:5000
export OCPSCHEMA=${HOME}/dev/openshift-json-schema

export ZSH_PLUGINS_ALIAS_TIPS_TEXT="Robby, stop over-typing: "
export ZSH_PLUGINS_ALIAS_TIPS_REVEAL=0

# #fpath=( ~/.zshfunctions "${fpath[@]}" )
# #autoload -Uz $fpath[1]/*(.:t)

# used for gpg zsh secrets plugin
export GPGKEY=D306CF52B506165F
export GPG_TTY=$(tty)

# deduplicate env paths for now
typeset -U PATH

# {{{ Containers
export BUILDAH_FORMAT=docker
# export REGISTRY_AUTH_FILE=$HOME/.podmanauth
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/podman/podman.sock
# }}}

# shortcut for using vi at command line
bindkey -v
export KEYTIMEOUT=1
autoload edit-command-line; zle -N edit-command-line
bindkey '^v' edit-command-line

# notifications
zstyle ':notify:*' error-icon "https://media3.giphy.com/media/10ECejNtM1GyRy/200_s.gif"
zstyle ':notify:*' error-title "wow such #fail"
zstyle ':notify:*' success-icon "https://s-media-cache-ak0.pinimg.com/564x/b5/5a/18/b55a1805f5650495a74202279036ecd2.jpg"
zstyle ':notify:*' success-title "very #success. wow"

export VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true

export GOOS=linux

# LF Icons
LF_ICONS=$(sed ~/.config/lf/icons \
            -e '/^[ \t]*#/d'      \
            -e '/^[ \t]*$/d'      \
            -e 's/[ \t]\+/=/g'    \
            -e 's/$/ /')
LF_ICONS=${LF_ICONS//$'\n'/:}
LF_ICONS=$(echo $LF_ICONS | tr -d '[:space:]')
export LF_ICONS

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

export MINIKUBE_IN_STYLE=true

# I probably should just use zsh startup script locations instead of this
source ${HOME}/bin/icutils

source ${HOME}/.config/broot/launcher/bash/br

# ssx

export PATH="${HOME}/dev/projects/git-fuzzy/bin:$PATH"
