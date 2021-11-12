#figlet "do not go gentle into that good night"
#motivate
#neofetch

##[[ $TMUX = "" ]] && export TERM="xterm-256color"

##if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
##  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
##fi

## To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
##[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

zstyle ':omz:update' mode auto      # update automatically without asking

setopt appendhistory
setopt INC_APPEND_HISTORY        
setopt nobeep

source $HOME/dev/git-projects/enhancd/init.sh
export ENHANCD_FILTER=fzf

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
  oc
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
  alias-tips
  tmux
)

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

# I had to do this to fix weird timeouts I was having with my tmux client auto terminating
export TMOUT=0

export BAT_THEME="OneHalfDark"

# FZF Configuration
export FZF_TMUX_OPTS="-p 85%,65%"
export FZF_BASE="$HOME/.fzf"
export FZF_DEFAULT_COMMAND="fd -HL --no-ignore --exclude={'.git,.dropbox,.gem,.npm,.jfrog,target,.local,.vscode,node_modules'} -i . $HOME"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview '(bat --style=numbers --color=always {} || cat {} || tree -NC {}) 2> /dev/null | head -200'"
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview' --exact"
export FZF_ALT_C_COMMAND="fd -HL --no-ignore --exclude={'.git,.dropbox,.gem,.npm,.jfrog,target,.local,.vscode,node_modules'} -i . $HOME"
export FZF_ALT_C_OPTS="--preview 'tree -NC {} | head -200'"

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

fzf-open-file-current-dir() {
  local cmd="fd -tf -HL --exclude={'.git,.dropbox,.gem,.npm,.jfrog,target,.local,.vscode,node_modules'} -i ."
  local out=$(eval "$cmd" | FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} --reverse --bind=ctrl-z:ignore $FZF_DEFAULT_OPTS $FZF_CTRL_T_OPTS" $(__fzfcmd) -m "$@")
  if [ -f "$out" ]; then
    $EDITOR "$out" < /dev/tty
  elif [ -d "$out" ]; then
    cd "$out"
    zle reset-prompt
  fi
}
zle     -N   fzf-open-file-current-dir
bindkey '^P' fzf-open-file-current-dir

export ZSH="/home/robbyk/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
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
  alias-tips
  tmux
)

source $ZSH/oh-my-zsh.sh
autoload -U compinit && compinit
source <(oc completion zsh)
source <(kubectl completion zsh)
source <(tkn completion zsh)

enable-fzf-tab

z() { $EDITOR $DOTFILES/zsh/.zshrc; source $DOTFILES/zsh/.zshrc; }

bindkey -s "^[o" 'lfcd\n'
bindkey '^ ' autosuggest-accept
bindkey -a '^ ' autosuggest-accept
