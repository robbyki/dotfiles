#--------------------------------------------------------------------#
#                         github gh commands                         #
#--------------------------------------------------------------------#

function ghlogin-personal() {
  gh auth login -h github.com --with-token <<< "$GHPERSONAL"
  export GH_HOST=github.com
}

function ghlogin-ibm() {
  gh auth login -h github.ibm.com --with-token <<< "$GHIBM"
  export GH_HOST=github.ibm.com
}

function ghlogin() {
  if [[ $(pwd) =~ ~/dev/personal ]]; then
    gh auth login -h github.com --with-token <<< "$GHPERSONAL"
    export GH_HOST=github.com
  else
    gh auth login -h github.ibm.com --with-token <<< "$GHIBM"
    export GH_HOST=github.ibm.com
  fi
}

# fbr - checkout git branch
# fbr() {
#   local branches branch
#   branches=$(git branch -vv) \
#     && branch=$(echo "$branches" | fzf +m) \
#     && git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
# }

# fbr - checkout git branch (including remote branches)
fbr() {
  local branches branch
  branches=$(git branch --all | grep -v HEAD) \
    && branch=$(echo "$branches" \
      | fzf-tmux -d $((2 + $(wc -l <<< "$branches"))) +m) \
    && git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}

function ge() {
  # Quoting switches between single and double quotes to leverage and avoid
  # string interpolation as necessary. There is probably a better way to do
  # this.
  gh gist edit $(
    gh gist list --limit 100 \
      | fzf --preview 'gh gist view $(echo {}'" | awk '{ print \$1 }')" \
      | awk '{ print $1 }'
  )
}

# Use FZF to preview Github issues and PRs with FZF and open them in the browser.
#   Requires:
#     - https://github.com/cli/cli,
#     - https://github.com/junegunn/fzf
#     - https://github.com/sharkdp/bat
function ghissues() {
  # Quoting switches between single and double quotes to leverage and avoid
  # string interpolation as necessary. There is probably a better way to do
  # this.
  gh issue view $(
    gh issue list --limit 100 \
      | fzf --preview 'gh issue view $(echo {}'" | awk '{ print \$1 }') | bat --color=always -l md" \
      | awk '{ print $1 }'
  )
}

function ghprs() {
  # Quoting switches between single and double quotes to leverage and avoid
  # string interpolation as necessary. There is probably a better way to do
  # this.
  gh pr view $(
    gh pr list --limit 100 \
      | fzf --preview 'gh pr view $(echo {}'" | awk '{ print \$1 }') | bat --color=always -l md" \
      | awk '{ print $1 }'
  )
}

function gccd() {
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

#--------------------------------------------------------------------#
#                          System functions                          #
#--------------------------------------------------------------------#
# moves my prompt to middle of screen. Helpful during video presentations.

fzf_then_open_in_editor() {
  file="$(__fsel)"
  file_no_whitespace="$(echo -e "${file}" | tr -d '[:space:]')"
  if [ -n "$file_no_whitespace" ]; then
    ${EDITOR:-nvim} "${file_no_whitespace}"
  fi
  zle accept-line
}

fzf-open-file-current-dir() {
  local cmd="fd -tf -HL --no-ignore --exclude={'ScalaResources,.metals,.bloop,.git,.dropbox,.gem,.npm,.jfrog,target,.local,.vscode,node_modules'} -i ."
  local out=$(eval "$cmd" | $(__fzfcmd) -m "$@")
  # local out=$(eval "$cmd" | FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} --reverse --bind=ctrl-z:ignore $FZF_DEFAULT_OPTS $FZF_CTRL_T_OPTS" $(__fzfcmd) -m "$@")
  if [ -f "$out" ]; then
    $EDITOR "$out" < /dev/tty
  elif [ -d "$out" ]; then
    cd "$out"
  fi
  zle reset-prompt
}

# I think I do this around 2 million times a day.
fancyctrlz() {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}

function prompt-middle() {
  tput cup $((LINES / 2)) 0
  zle reset-prompt
  zle redisplay
}

function fzf_alias() {
  FZF_TMUX_OPTS="-p 90%,30%"
  local selection
  if selection=$(alias | fzf-tmux ${FZF_TMUX_OPTS:--d${FZF_TMUX_HEIGHT:-40%}} \
    --preview-window=:hidden \
    --query="$BUFFER" | sed -re 's/=.+$/ /'); then
    BUFFER=$selection
  fi
  zle redisplay
}

# this function causes my lsp to stop autoformatting for some reason
# function fzf_functions() {
#     FZF_TMUX_OPTS="-p 90%,30%"
#     local selection
#     if selection=$(print -rl -- ${(k)functions} | fzf-tmux ${FZF_TMUX_OPTS:--d${FZF_TMUX_HEIGHT:-40%}} \
#             --preview-window=:hidden \
#             --query="$BUFFER" | sed -re 's/=.+$/ /'); then
#         BUFFER=$selection
#     fi
#     zle redisplay
# }

# Usage: Ex <File>
ex() {
  if [ -f $1 ]; then
    case $1 in
      *.tar.bz2) tar xjf $1 ;;
      *.tar.gz) tar xzf $1 ;;
      *.bz2) bunzip2 $1 ;;
      *.rar) unar $1 ;;
      *.gz) gunzip $1 ;;
      *.tar) tar xf $1 ;;
      *.tbz2) tar xjvf $1 ;;
      *.tbz) tar xjvf $1 ;;
      *.tgz) tar xzf $1 ;;
      *.zip) unzip $1 ;;
      *.Z) uncompress $1 ;;
      *.7z) 7z x $1 ;;
      *.deb) ar x $1 ;;
      *.tar.xz) tar xf $1 ;;
      *.tar.zst) unzstd $1 ;;
      *) echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

lg() {
  export LAZYGIT_NEW_DIR_FILE=~/.lazygit/newdir

  lazygit "$@"

  if [ -f $LAZYGIT_NEW_DIR_FILE ]; then
    cd "$(cat $LAZYGIT_NEW_DIR_FILE)"
    rm -f $LAZYGIT_NEW_DIR_FILE > /dev/null
  fi
}

# fuzzy search all of the gnome desktop files
fapp() {
  selected="$(/bin/ls /usr/share/applications | fzf -e)"
  nohup $(grep '^Exec' "/usr/share/applications/$selected" | tail -1 | sed 's/^Exec=//' | sed 's/%.//') > /dev/null 2>&1 &
}

# can just use `take` with zsh
# mkcdir()
# {
#     mkdir -p -- "$1" &&
#       cd -P -- "$1"
# }

#lfcd
LFCD="$HOME/.config/lf/lfcd.sh"
if [ -f "$LFCD" ]; then
  source "$LFCD"
fi

lfcd() {
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
  ll # list files after exiting lf
}

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

# I'm a little amazed how useful this is turning out to be.
agh() {
  ag $1 .
}

findalias() {
  alias | grep ${1}
}

stdead() {
  st --container-state terminated ${1} --tail 20 | grep -i "${2}"
}

strun() {
  st --container-state running ${1} --tail 20 | grep -i "${2}"
}

stwait() {
  st --container-state waiting ${1} --tail 20 | grep -i "${2}"
}

# a bunch of really ugly functions that could use a lot of improvements

# delete any target directory recursively in a jvm project. helpful for debugging.
deletetarget() {
  find . -type d -name target -prune -exec rm -r {} +
}

# find files with extension in location given
fde() {
  fd . -e ${1} ${2}
}

gotolocalbin() {
  sudo mv $1 /usr/local/bin/$1
}

gotocompletions() {
  sudo mv $1 /home/robbyk/.oh-my-zsh/completions/$1
}

# usage: newdir/newfile.txt
mktch() {
  mkdir -p $(dirname $1) && touch $1
}

#--------------------------------------------------------------------#
#                             Openshift (Active Development)         #
#--------------------------------------------------------------------#
ocgetmaster() {
  ibmcloud oc cluster get --cluster test-cluster-rk --output=json | jq -r '.serverURL'
}

ocgetid() {
  ibmcloud oc cluster get --cluster test-cluster-rk --output=json | jq -r '.id'
}

ocviewconf() {
  ibmcloud oc cluster get -c $(ocgetid)
}
ocgetconf() {
  ibmcloud oc cluster config -c $(ocgetid) --admin
}
ocprune() {
  oc adm prune images --registry-url=$OCREGISTRY --confirm
}

# need to run `ssibm` before this to export ibm api key to login without temp passcode
oclogin() {
  oc login -u apikey -p $IBMCLOUD_API_KEY_RK --server=$(ocgetmaster) --insecure-skip-tls-verify=true
}

ocgethost() {
  echo "$(ocg route/default-route -n openshift-image-registry -o=jsonpath='{.spec.host}')"

}
# colorize oc commands
# ocy() {
#   oc --output yaml $@ | yq eval --colors
# }
# ocnodeip() {
#     oc get nodes -o=jsonpath='{ .items[0].metadata.name }'
# }
# occlusterip() {
#     echo "$(oc get svc -o=jsonpath='{ .items[0].spec.clusterIP }'):`ocport`"
# }
# ocport() {
#     oc get svc -o=jsonpath='{ .items[0].spec.ports[0].port }'
# }
# usage for clipboard and then node debug: ocgetextroute | ccc
# ocextroute() {
#     oc get route -o=jsonpath='{.items..spec.host}'
# }
# ocdefaultroute() {
#     # oc get route -n openshift-image-registry -o=json | jq '.items[].spec.host'
#     oc get route/default-route -n openshift-image-registry -o=jsonpath='{.spec.host}'
# }
# occ() {
# 	oc $@ | yq eval --colors -P
# }

pdloginpr() {
  podman login $MYPRIVATE_REGISTRY -u $ARTIFACTORY_USER -p $ARTIFACTORY_API_KEY
}

pdloginoc() {
  podman login -u kubeadmin -p $(octkn) \
    $(oc get route/default-route -n openshift-image-registry -o=jsonpath='{.spec.host}') \
    --tls-verify=false
}

pdloginrcrh() {
  podman login registry.connect.redhat.com -u $RCRHUSER -p $RCRHTKN
}

testfunc() {
  echo "testing"
}

pdmkregistry() {
  podman run -d -p 5000:5000 --restart=always --name registry registry:2
  podman start registry
}

ocgetroutes() {
  oc get routes --all-namespaces --output=custom-columns=NAME:.metadata.name
}

decryptibm() {
  secrets decrypt ibm-secrets > ibm-secrets
}

encryptibm() {
  secrets encrypt ibm-secrets
}
#
# ssibm() {
#   secrets source ibm-secrets 2>/dev/null
# }

ocpatchroute() {
  oc patch configs.imageregistry.operator.openshift.io/cluster --type merge -p '{"spec":{"defaultRoute":true}}'
}

ocgetimages() {
  oc get images | grep $(oc get route default-route -n openshift-image-registry -o jsonpath='{ .spec.host }{"\n"}')
}

encrypt-secrets() {
  gpg --batch --yes --output ~/.secrets/ibm-secrets.gpg --encrypt --recipient $RECIPIENT ibm-secrets
}

# KeepassXC functions
kp() {
  echo $KEEPASSXC | keepassxc-cli clip $KEEPASSDB $1 20
}

kpuser() {
  echo $KEEPASSXC | keepassxc-cli show -q -a Username $KEEPASSDB $1
}

kpshow() {
  echo $KEEPASSXC | keepassxc-cli show -q $KEEPASSDB $1
}

kpsearch() {
  echo $KEEPASSXC | keepassxc-cli search -q $KEEPASSDB $1
}

kpaddgen() {
  echo $KEEPASSXC | keepassxc-cli add --username $1 --url $2 --generate --lower --upper --numeric --special --length 20 $KEEPASSDB $3
}

kpfzf() {
  echo $KEEPASSXC | keepassxc-cli ls -q -R -f $KEEPASSDB | fzf | xclip -sel clip
}

kpgen() {
  keepassxc-cli generate --lower --upper --numeric --special --length 20 | xclip -sel clip
}

kpls() {
  echo $KEEPASSXC | keepassxc-cli ls -q -R $KEEPASSDB
}

kpshowpass() {
  echo $KEEPASSXC | keepassxc-cli show -q -a Password $KEEPASSDB $1
}

kpshow() {
  echo $KEEPASSXC | keepassxc-cli show -q $KEEPASSDB $1
}

kpadd() {
  echo $KEEPASSXC | keepassxc-cli add --username $1 --url $2 -p $KEEPASSDB $3
}
