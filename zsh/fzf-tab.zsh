enable-fzf-tab
setopt glob_dots
zstyle ':completion:*' special-dirs true
bat_preview="([[ -f {} ]] && (bat --style=plain --color=always --line-range :100 {} || cat {})) || ([[ -d {} ]] && (colorls --tree --color=always {} | less)) || echo {} 2> /dev/null | head -200"
exa_preview="exa -1 --color=always $realpath"
local extract="
  # trim input(what you select)
  local in=\${\${\"\$(<{f})\"%\$'\0'*}#*\$'\0'}
"
bat_preview_simple='bat --style=numbers --color=always --line-range :500 {}'
zstyle ':fzf-tab:*' show-group brief
zstyle ':fzf-tab:*' continuous-trigger '/'
zstyle ':fzf-tab:*' fzf-flags --preview-window=right:hidden:wrap
zstyle ':fzf-tab:*' print-query ctrl-c         # Use input as result when ctrl-c
zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup # fzf, ftb-tmux-popup # this is where you can switch to tmux popup
zstyle ':fzf-tab:*' prefix ''                  # No dot prefix
zstyle ':fzf-tab:*' single-group color header  # Show header for single groups
FZF_TAB_GROUP_COLORS=(
  $'\033[94m' $'\033[32m' $'\033[33m' $'\033[35m' $'\033[31m' $'\033[38;5;27m' $'\033[36m'
  $'\033[38;5;100m' $'\033[38;5;98m' $'\033[91m' $'\033[38;5;80m' $'\033[92m'
  $'\033[38;5;214m' $'\033[38;5;165m' $'\033[38;5;124m' $'\033[38;5;120m'
)
zstyle ':fzf-tab:*' group-colors $FZF_TAB_GROUP_COLORS

# zstyle ':fzf-tab:complete:cd:*' popup-pad 100 5
zstyle ':fzf-tab:complete:cd:*' fzf-flags --preview-window=right:50%
zstyle ':fzf-tab:complete:(cd|ls|lsd):*' fzf-preview 'exa -1 --color=always -- $realpath'
# env variables
zstyle ':fzf-tab:complete:(-command-|-parameter-|-brace-parameter-|export|unset|expand):*' fzf-preview 'echo ${(P)word}'

zstyle ':fzf-tab:complete:(cp|rm|mv|bat):argument-rest' fzf-preview 'r=$(readlink -f $realpath); bat --color=always -- $r || exa --color=always -- $r'
zstyle ':fzf-tab:complete:micro:argument-rest' fzf-flags --preview-window=right:65%
zstyle ':fzf-tab:complete:updatelocal:argument-rest' fzf-preview "git --git-dir=$UPDATELOCAL_GITDIR/\${word}/.git log --color --date=short --pretty=format:'%Cgreen%cd %h %Creset%s %Cred%d%Creset ||%b' ..FETCH_HEAD 2>/dev/null"
zstyle ':fzf-tab:complete:updatelocal:argument-rest' fzf-flags --preview-window=down:5:wrap

# processes
zstyle ':completion:*:*:*:*:processes' command "ps -u $USER -o pid,user,comm -w -w"
zstyle ':fzf-tab:complete:(kill|ps):argument-rest' fzf-preview \
  '[[ $group == "[process ID]" ]] && ps --pid=$word -o cmd --no-headers -w -w'
zstyle ':fzf-tab:complete:(kill|ps):argument-rest' fzf-flags --preview-window=down:3:wrap
zstyle ':fzf-tab:complete:*:argument-rest' fzf-preview \
  '[[ $(file --mime-type $realpath) == *"text/"* ]] && bat -- $realpath'
zstyle ':fzf-tab:complete:*:argument-rest' fzf-preview 'echo $realpath'

# systemctl
zstyle ':fzf-tab:complete:systemctl-*:*' fzf-preview 'SYSTEMD_COLORS=1 systemctl status $word'

# man
zstyle ':fzf-tab:complete:(\\|)run-help:*' fzf-preview 'run-help $word'
zstyle ':fzf-tab:complete:(\\|*/|)man:*' fzf-preview 'man $word'
zstyle ':fzf-tab:complete:(\\|*/|)man:*' fzf-flags --preview-window=right:65%

# git
zstyle ':fzf-tab:complete:git-(add|diff|restore):*' fzf-preview 'git diff $word | delta'
zstyle ':fzf-tab:complete:git-log:*' fzf-preview 'git log --color=always $word'
zstyle ':fzf-tab:complete:git-help:*' fzf-preview 'git help $word | bat -plman --color=always'
zstyle ':fzf-tab:complete:git-show:*' fzf-preview \
  'case "$group" in
  "commit tag") git show --color=always $word ;;
  *) git show --color=always $word | delta ;;
  esac'
zstyle ':fzf-tab:complete:git-checkout:*' fzf-preview \
  'case "$group" in
  "modified file") git diff $word | delta ;;
  "recent commit object name") git show --color=always $word | delta ;;
  *) git log --color=always $word ;;
  esac'
