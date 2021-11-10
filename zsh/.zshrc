export ZSH="/home/robbyk/.oh-my-zsh"
ZSH_THEME="robbyrussell"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

zstyle ':omz:update' mode auto      # update automatically without asking

setopt appendhistory
setopt INC_APPEND_HISTORY        
setopt nobeep

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export HISTFILESIZE=
export HISTFILE=~/.zsh_history
export HISTSIZE=1000000
export SAVEHIST=1000000
export VISUAL="/usr/local/bin/nvim"
export EDITOR="/usr/local/bin/nvim"
export SUDO_EDITOR="/usr/local/bin/nvim"
#export MYVIMRC=$HOME/.config/nvim/init.lua
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk
export JRE_HOME=/usr/lib/jvm/jre-11-openjdk
export GIT_HOME=/usr/bin/git
#export MVN_HOME=/usr/local/apache-maven-3.6.3
#export STEWARD_DIR=$HOME/dev/scala-steward/
export GH_HOST=github.ibm.com
export GH_EDITOR=/usr/local/bin/nvim
export IBMCLOUD_TRACE=false
export IBMCLOUD_HOME=/usr/local/IBM_Cloud_CLI
export IBMCLOUD_COLOR=true
export GO_HOME=$HOME/go

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

DOTFILES="$HOME/.dotfiles"

zle_highlight+=(paste:none)
zstyle :prompt:pure:git:stash show yes

export ZSH_PLUGINS_ALIAS_TIPS_FORCE=1

plugins=(
  minikube
  docker
  git 
  zsh-autosuggestions 
  zsh-syntax-highlighting 
  dnf 
  bgnotify 
  fzf-tab 
  vscode 
  zsh-256color 
  fzf 
  fzf-zsh-plugin
  jfrog 
  kubectl
  alias-tips
  tmux
)

source $ZSH/oh-my-zsh.sh

function options() {
    PLUGIN_PATH="$HOME/.oh-my-zsh/plugins/"
    for plugin in $plugins; do
        echo "\n\nPlugin: $plugin"; grep -r "^function \w*" $PLUGIN_PATH$plugin | awk '{print $2}' | sed 's/()//'| tr '\n' ', '; grep -r "^alias" $PLUGIN_PATH$plugin | awk '{print $2}' | sed 's/=.*//' |  tr '\n' ', '
    done
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

# I like listing things after I cd
cdl() { cd "$@" && ll; }

autoload -U compinit && compinit

#autoload compinit
#compinit -i

# I had to do this to fix weird timeouts I was having with my tmux client auto terminating
export TMOUT=0

export BAT_THEME="OneHalfDark"

# alt-o to open lfrc and enter to dir
bindkey -s "^[o" 'lfcd\n'

bindkey '^ ' autosuggest-accept
bindkey -a '^ ' autosuggest-accept

# ctrl-O to open a file with fzf into nvim
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

fzf-open-file-or-dir() {
  local cmd="fd -tf -HL --exclude={'.git,.dropbox,.gem,.npm,.jfrog,target,.local,.vscode,node_modules'} -i ."
  local out=$(eval "$cmd" | FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} --reverse --bind=ctrl-z:ignore $FZF_DEFAULT_OPTS $FZF_CTRL_T_OPTS" $(__fzfcmd) -m "$@")
  if [ -f "$out" ]; then
    $EDITOR "$out" < /dev/tty
  elif [ -d "$out" ]; then
    cd "$out"
    zle reset-prompt
  fi
}
zle     -N   fzf-open-file-or-dir
bindkey '^P' fzf-open-file-or-dir

fpath=($HOME/.local/share/zsh/completions $fpath)

# autocompletions
source $(dirname $(gem which colorls))/tab_complete.sh
source ~/.fzf/shell/completion.zsh
source $HOME/.config/broot/launcher/bash/br
#source <(oc completion zsh)
#source <(kubectl completion zsh)
#source /usr/local/IBM_Cloud_CLI/autocomplete/zsh_autocomplete
#source <(yq shell-completion zsh)
#source <(tkn completion zsh)
#source <(minikube completion zsh)
#complete -o nospace -C /usr/local/bin/odo odo
# make completion work with kubecolor
#compdef kubecolor=kubectl

# FZF Configuration
export FZF_TMUX_OPTS="-p 85%,65%"
export FZF_BASE="$HOME/.fzf"
export FZF_DEFAULT_COMMAND="fd -HL --no-ignore --exclude={'.git,.dropbox,.gem,.npm,.jfrog,target,.local,.vscode,node_modules'} -i . $HOME"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview '(bat --style=numbers --color=always {} || cat {} || tree -NC {}) 2> /dev/null | head -200'"
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview' --exact"
#export FZF_ALT_C_COMMAND='fd -t d -H -L -E target -E .git -E ".local" -E "*.jar" -E "node_modules" -i . $HOME'
export FZF_ALT_C_COMMAND="fd -HL --no-ignore --exclude={'.git,.dropbox,.gem,.npm,.jfrog,target,.local,.vscode,node_modules'} -i . $HOME"
export FZF_ALT_C_OPTS="--preview 'tree -NC {} | head -200'"

enable-fzf-tab

# I still don't understand this mess for fzf tab
#zstyle ':fzf-tab:complete:(kill|ps):argument-rest' fzf-flags '--preview-window=down:3:wrap'
#zstyle ':fzf-tab:complete:(kill|ps):argument-rest' fzf-preview '[[ $group == "[process ID]" ]] && ps -p $word -o comm="" -w -w'
#zstyle ':fzf-tab:complete:kill:*' popup-pad 0 3
#zstyle ':fzf-tab:complete:nvim:*' fzf-preview 'r=$realpath; ([[ -f $r ]] && bat --style=numbers --color=always $r) || ([[ -d $r ]] && tree -C $r | less) || (echo $r 2> /dev/null | head -200)'
#zstyle ':fzf-tab:complete:nvim:argument-rest' fzf-flags '--preview-window=nohidden,right:50%:wrap'
#zstyle ':fzf-tab:complete:updatelocal:argument-rest' fzf-preview "git --git-dir=$UPDATELOCAL_GITDIR/\${word}/.git log --color --date=short --pretty=format:'%Cgreen%cd %h %Creset%s %Cred%d%Creset ||%b' ..FETCH_HEAD 2>/dev/null"
#zstyle ':fzf-tab:complete:updatelocal:argument-rest' fzf-flags '--preview-window=down:5:wrap'
##zstyle ':fzf-tab:complete:(exa|cd):*' popup-pad 30 0
#zstyle ':fzf-tab:*' popup-pad 60 0
#zstyle ':fzf-tab:complete:(exa|cd|cd_):*' fzf-flags '--preview-window=nohidden,right:60%:wrap'
#zstyle ':fzf-tab:complete:(exa|cd|cd_):*' fzf-preview '[[ -d $realpath ]] && exa -T --color=always $(readlink -f $realpath)'
#zstyle ':fzf-tab:complete:(cp|rm|mv|bat):argument-rest' fzf-preview 'r=$(readlink -f $realpath); bat --color=always -- $r || exa --color=always -- $r'
#zstyle ':fzf-tab:*' fzf-bindings 'enter:accept,backward-eof:abort'   # enter as accept, abort deleting empty
#zstyle ':fzf-tab:*' print-query ctrl-c        # use input as result when ctrl-c
#zstyle ':fzf-tab:*' accept-line space         # accept selected entry on space
#zstyle ':fzf-tab:*' prefix ''                 # no dot prefix
#zstyle ':fzf-tab:*' switch-group ',' '.'      # switch between header groups
#zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup
## zstyle ':fzf-tab:*' single-group color header # single header is shown
#zstyle ':fzf-tab:*' fzf-pad 4                 # increased because of fzf border
## zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
#zstyle ':completion:*' use-cache true
#zstyle ':completion:*' verbose yes
#zstyle ':completion:*' accept-exact '*(N)'
#zstyle ':completion:*' completer _complete _match _list _ignored _correct _approximate
#zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
#zstyle ':completion:*' ignore-parents parent pwd
#zstyle ':completion:*:functions' ignored-patterns '(_*|pre(cmd|exec))'
#zstyle ':completion:*:match:*' original only
#zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
#zstyle ':completion:*:default' list-prompt '%S%M matches%s'
#zstyle ':completion:*:git-checkout:*' sort false
#zstyle ':completion:*:descriptions' format '[%d]'
#zstyle ':completion:*:exa' file-sort modification
#zstyle ':completion:*:exa' sort false
#zstyle ':completion:*:manuals' separate-sections true
#zstyle -e ':completion:*:approximate:*' max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3>7?7:($#PREFIX+$#SUFFIX)/3))numeric)'
#zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

z() { $EDITOR $DOTFILES/zsh/.zshrc; source $DOTFILES/zsh/.zshrc; }

### ARCHIVE ###
##figlet "do not go gentle into that good night"
##motivate
##neofetch
#
##[[ $TMUX = "" ]] && export TERM="xterm-256color"
#
##if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
##  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
##fi
#
#export ZSH="$HOME/.oh-my-zsh"
#ZSH_THEME="robbyrussell"
#
##ZSH_CUSTOM="$HOME/.config/zsh"
##source "$ZSH_CUSTOM/alias.zsh"
##ZSH_THEME="powerlevel10k/powerlevel10k"
##ZSH_CONFIG=$HOME/.config/zsh
##source $ZSH_CONFIG/zsh-aliases
#
#setopt appendhistory
#setopt INC_APPEND_HISTORY        
#setopt nobeep
#
#export ZSH_PLUGINS_ALIAS_TIPS_FORCE=1
#
## Uncomment one of the following lines to change the auto-update behavior
## zstyle ':omz:update' mode disabled  # disable automatic updates
## zstyle ':omz:update' mode auto      # update automatically without asking
## zstyle ':omz:update' mode reminder  # just remind me to update when it's time
#
## DISABLE_UNTRACKED_FILES_DIRTY="true"
#
##COMPLETION_WAITING_DOTS="true"
#
#export HISTFILESIZE=
#export HISTFILE=~/.zsh_history
#export HISTSIZE=1000000
#export SAVEHIST=1000000
#
## application paths
#export VISUAL="/usr/local/bin/nvim"
#export EDITOR="/usr/local/bin/nvim"
#export SUDO_EDITOR="/usr/local/bin/nvim"
#export MYVIMRC=$HOME/.config/nvim/init.lua
#export JAVA_HOME=/usr/lib/jvm/java-11-openjdk
#export JRE_HOME=/usr/lib/jvm/jre-11-openjdk
#export GIT_HOME=/usr/bin/git
##export MVN_HOME=/usr/local/apache-maven-3.6.3
##export STEWARD_DIR=$HOME/dev/scala-steward/
#export GH_HOST=github.ibm.com
#export GH_EDITOR=/usr/local/bin/nvim
#export IBMCLOUD_TRACE=false
#export IBMCLOUD_HOME=/usr/local/IBM_Cloud_CLI
#export IBMCLOUD_COLOR=true
#export GO_HOME=$HOME/go
#
#PATH=$PATH:/opt
#PATH=$PATH:/opt/bin
#PATH=$PATH:/usr/bin/local
#PATH=$PATH:${HOME}/.local/bin
#PATH=$PATH:${HOME}/.local/share/coursier/bin
#PATH=$PATH:${JAVA_HOME}/bin
#PATH=$PATH:${MVN_HOME}/bin
#PATH=$PATH:${GIT_HOME}/bin
#PATH=$PATH:${GO_HOME}/bin
#PATH=$PATH:${IBMCLOUD_HOME}
#PATH=$PATH:${HOME}/tools/lua-language-server/bin/Linux
#PATH=$PATH:${HOME}/.yarn/bin
#PATH=$PATH:${HOME}/.config/yarn/global/node_modules/.bin
#PATH=$PATH:${HOME}/.config/rofi/bin
#PATH=$PATH:${HOME}/node_modules/.bin
#export PATH
#
#export GOPATH=${HOME}/go
#
##DOTFILES="$HOME/.dotfiles"
#
#zle_highlight+=(paste:none)
#zstyle :prompt:pure:git:stash show yes
#
#plugins=(
#  minikube
#  docker
##  docker-compose
#  git 
#  zsh-autosuggestions 
#  zsh-syntax-highlighting 
##  colored-man-pages 
#  dnf 
#  bgnotify 
#  fzf-tab 
#  vscode 
#  zsh-256color 
#  fzf 
#  fzf-zsh-plugin
#  jfrog 
#  kubectl
#  alias-tips
#  tmux
##  fast-syntax-highlighting
#)
#
#source $ZSH/oh-my-zsh.sh
#
#pasteinit() {
#  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
#  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
#}
#
#pastefinish() {
#  zle -N self-insert $OLD_SELF_INSERT
#}
#zstyle :bracketed-paste-magic paste-init pasteinit
#zstyle :bracketed-paste-magic paste-finish pastefinish
#
## autocompletions
#source $(dirname $(gem which colorls))/tab_complete.sh
#source ~/.fzf/shell/completion.zsh
##source $HOME/.config/broot/launcher/bash/br
##source <(oc completion zsh)
##source <(kubectl completion zsh)
##source /usr/local/IBM_Cloud_CLI/autocomplete/zsh_autocomplete
##source <(yq shell-completion zsh)
##source <(tkn completion zsh)
##source <(minikube completion zsh)
##complete -o nospace -C /usr/local/bin/odo odo
## make completion work with kubecolor
##compdef kubecolor=kubectl
#
#function options() {
#    PLUGIN_PATH="$HOME/.oh-my-zsh/plugins/"
#    for plugin in $plugins; do
#        echo "\n\nPlugin: $plugin"; grep -r "^function \w*" $PLUGIN_PATH$plugin | awk '{print $2}' | sed 's/()//'| tr '\n' ', '; grep -r "^alias" $PLUGIN_PATH$plugin | awk '{print $2}' | sed 's/=.*//' |  tr '\n' ', '
#    done
#}
#
##export BAT_THEME="OneHalfDark"
#
## Keybindings
##bindkey -s "^[o" 'lfcd\n'
#
#bindkey '^ ' autosuggest-accept
#bindkey -a '^ ' autosuggest-accept
#
#fzf_then_open_in_editor() {
#    file="$(__fsel)"
#    file_no_whitespace="$(echo -e "${file}" | tr -d '[:space:]')"
#    if [ -n "$file_no_whitespace" ]; then
#      ${EDITOR:-nvim} "${file_no_whitespace}"
#    fi;
#    zle accept-line
#}
#zle -N fzf_then_open_in_editor
#bindkey "^O" fzf_then_open_in_editor
#
## open a file for editing by choosing with fzf
#fzf-open-file-or-dir() {
#	local cmd="command find -L . \
#	\\( -path '*/\\.*' -o -fstype 'dev' -o -fstype 'proc' \\) -prune \
#	-o -type f -print \
#	-o -type d -print \
#	-o -type l -print 2> /dev/null | sed 1d | cut -b3-"
#	local out=$(eval $cmd | fzf --exit-0)
#	if [ -f "$out" ]; then
#		vi "$out" < /dev/tty
#	elif [ -d "$out" ]; then
#		cd "$out"
#		zle reset-prompt
#	fi
#}
#zle -N fzf-open-file-or-dir
#bindkey '^P' fzf-open-file-or-dir
#
#cdl() { cd "$@" && ll; }
#
##bindkey -s "^[l" 'lf2\n'
## bindkey -s '^b' 'bc -lq\n'
#
## Tekton cli
##if [ ! -f "${fpath[1]}/_tkn" ]; then
##	command -v tkn >/dev/null 2>&1 && tkn completion zsh > "${fpath[1]}/_tkn"
##fi
#
#fpath=($HOME/.local/share/zsh/completions $fpath)
#
#autoload -U compinit && compinit
#
##autoload compinit
##compinit -i
#
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#
#export FZF_TMUX_OPTS="-p 85%,65%"
#export FZF_BASE="$HOME/.fzf"
#export FZF_DEFAULT_COMMAND="fd -tf -HL --exclude={'.git,.dropbox,.gem,.npm,.jfrog,target,.local,.vscode,node_modules'} -i . $HOME"
#export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
#export FZF_CTRL_T_OPTS="--preview '(bat --style=numbers --color=always {} || cat {} || tree -NC {}) 2> /dev/null | head -200'"
#export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview' --exact"
#export FZF_ALT_C_COMMAND='fd -t d -H -L -E target -E .git -E ".local" -E "*.jar" -E "node_modules" -i . $HOME'
#export FZF_ALT_C_OPTS="--preview 'tree -NC {} | head -200'"
#
## === completion === {{{
#enable-fzf-tab
#zstyle ':fzf-tab:complete:(kill|ps):argument-rest' fzf-flags '--preview-window=down:3:wrap'
#zstyle ':fzf-tab:complete:(kill|ps):argument-rest' fzf-preview '[[ $group == "[process ID]" ]] && ps -p $word -o comm="" -w -w'
#zstyle ':fzf-tab:complete:kill:*' popup-pad 0 3
#zstyle ':fzf-tab:complete:nvim:*' fzf-preview 'r=$realpath; ([[ -f $r ]] && bat --style=numbers --color=always $r) || ([[ -d $r ]] && tree -C $r | less) || (echo $r 2> /dev/null | head -200)'
#zstyle ':fzf-tab:complete:nvim:argument-rest' fzf-flags '--preview-window=nohidden,right:50%:wrap'
#zstyle ':fzf-tab:complete:updatelocal:argument-rest' fzf-preview "git --git-dir=$UPDATELOCAL_GITDIR/\${word}/.git log --color --date=short --pretty=format:'%Cgreen%cd %h %Creset%s %Cred%d%Creset ||%b' ..FETCH_HEAD 2>/dev/null"
#zstyle ':fzf-tab:complete:updatelocal:argument-rest' fzf-flags '--preview-window=down:5:wrap'
##zstyle ':fzf-tab:complete:(exa|cd):*' popup-pad 30 0
#zstyle ':fzf-tab:*' popup-pad 60 0
#zstyle ':fzf-tab:complete:(exa|cd|cd_):*' fzf-flags '--preview-window=nohidden,right:60%:wrap'
#zstyle ':fzf-tab:complete:(exa|cd|cd_):*' fzf-preview '[[ -d $realpath ]] && exa -T --color=always $(readlink -f $realpath)'
#zstyle ':fzf-tab:complete:(cp|rm|mv|bat):argument-rest' fzf-preview 'r=$(readlink -f $realpath); bat --color=always -- $r || exa --color=always -- $r'
#zstyle ':fzf-tab:*' fzf-bindings 'enter:accept,backward-eof:abort'   # enter as accept, abort deleting empty
#zstyle ':fzf-tab:*' print-query ctrl-c        # use input as result when ctrl-c
#zstyle ':fzf-tab:*' accept-line space         # accept selected entry on space
#zstyle ':fzf-tab:*' prefix ''                 # no dot prefix
#zstyle ':fzf-tab:*' switch-group ',' '.'      # switch between header groups
#zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup
## zstyle ':fzf-tab:*' single-group color header # single header is shown
#zstyle ':fzf-tab:*' fzf-pad 4                 # increased because of fzf border
## zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
#zstyle ':completion:*' use-cache true
#zstyle ':completion:*' verbose yes
#zstyle ':completion:*' accept-exact '*(N)'
#zstyle ':completion:*' completer _complete _match _list _ignored _correct _approximate
#zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
#zstyle ':completion:*' ignore-parents parent pwd
#zstyle ':completion:*:functions' ignored-patterns '(_*|pre(cmd|exec))'
#zstyle ':completion:*:match:*' original only
#zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
#zstyle ':completion:*:default' list-prompt '%S%M matches%s'
#zstyle ':completion:*:git-checkout:*' sort false
#zstyle ':completion:*:descriptions' format '[%d]'
#zstyle ':completion:*:exa' file-sort modification
#zstyle ':completion:*:exa' sort false
#zstyle ':completion:*:manuals' separate-sections true
#zstyle -e ':completion:*:approximate:*' max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3>7?7:($#PREFIX+$#SUFFIX)/3))numeric)'
#zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'
#
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#
#export TMOUT=0
#
#
##zvm_after_init_commands+=('[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh')
#
## To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
##[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#

