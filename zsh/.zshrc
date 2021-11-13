export ZSH="/home/robbyk/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
plugins=(git zsh-autosuggestions zsh-syntax-highlighting dnf vscode jfrog tmux alias-tips zsh-256color oc fzf-tab)
autoload -U compinit && compinit
source <(kubectl completion zsh)
source <(tkn completion zsh)
source $ZSH/oh-my-zsh.sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
source $HOME/dev/git-projects/enhancd/init.sh
export DOTFILES="$HOME/.dotfiles"
export ENHANCD_FILTER=fzf
export ZSH_PLUGINS_ALIAS_TIPS_FORCE=1
setopt appendhistory
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
z() { $EDITOR $DOTFILES/zsh/.zshrc; source $DOTFILES/zsh/.zshrc; }
# I had to do this to fix weird timeouts I was having with my tmux client auto terminating
export TMOUT=0
export BAT_THEME="OneHalfDark"
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
zle -N fzf-open-file-current-dir
bindkey -s "^[o" 'lfcd\n'
bindkey '^ ' autosuggest-accept
bindkey -a '^ ' autosuggest-accept
bindkey "^O" fzf_then_open_in_editor
bindkey '^P' fzf-open-file-current-dir
# FZF Configuration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_TMUX_OPTS="-p 85%,65%"
export FZF_BASE="$HOME/.fzf"
export FZF_DEFAULT_COMMAND="fd -HL --no-ignore --exclude={'.git,.dropbox,.gem,.npm,.jfrog,target,.local,.vscode,node_modules'} -i . $HOME"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS='--preview "bat --style=numbers --color=always --line-range :500 {}" --ansi --height 60% --layout=reverse --border'
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'  --preview-window=up:40%"
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
export FZF_ALT_C_COMMAND="fd -HL --no-ignore --exclude={'.git,.dropbox,.gem,.npm,.jfrog,target,.local,.vscode,node_modules'} -i . $HOME"
export FZF_ALT_C_OPTS="--preview 'tree -NC {} | head -200'"

export DOTFILES="$HOME/.dotfiles"

