#--------------------------------------------------------------------#
#                         github gh commands                         #
#--------------------------------------------------------------------#
function ghlogin-personal() {
  gh auth login -h github.com --with-token <<<"$GHPERSONAL"
  export GH_HOST=github.com
}

function ghlogin-ibm() {
  gh auth login -h github.ibm.com --with-token <<<"$GHIBM"
  export GH_HOST=github.ibm.com
}

function ghlogin() {
  if [[ $(pwd) =~ ~/dev/personal ]]; then
    gh auth login -h github.com --with-token <<<"$GHPERSONAL"
    export GH_HOST=github.com
  else
    gh auth login -h github.ibm.com --with-token <<<"$GHIBM"
    export GH_HOST=github.ibm.com
  fi
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
  gh issue view -w $(
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

function fzf_functions() {
  FZF_TMUX_OPTS="-p 90%,30%"
  local selection
  if selection=$(alias | fzf-tmux ${FZF_TMUX_OPTS:--d${FZF_TMUX_HEIGHT:-40%}} \
    --preview-window=:hidden \
    --query="$BUFFER" | sed -re 's/=.+$/ /'); then
    BUFFER=$selection
  fi
  zle redisplay
}

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
    rm -f $LAZYGIT_NEW_DIR_FILE >/dev/null
  fi
}

# fuzzy search all of the gnome desktop files
fapp() {
  selected="$(/bin/ls /usr/share/applications | fzf -e)"
  nohup $(grep '^Exec' "/usr/share/applications/$selected" | tail -1 | sed 's/^Exec=//' | sed 's/%.//') >/dev/null 2>&1 &
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
  stern --tail 20 --container-state terminated | grep -i ${1}
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
#                      minio mc object storage                       #
#--------------------------------------------------------------------#
# use mc to list all files in cos dm location
mcdmls() {
  mc ls dm/${1}
}

# use mc to list files in dm location. seriously needs to pamaterized.
mcdmfiles() {
  mc $1 dm/datamaze-dev-analytics-sp-files/${2}
}

mcdmjars() {
  mc $1 dm/datamaze-dev-analytics-sp-jars/${2}
}

mcdmlogs() {
  mc $1 dm/datamaze-dev-analytics-sp-logs/${2}
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
  ic oc cluster get -c $(ocgetid)
}
ocgetconf() {
  ic oc cluster config -c $(ocgetid) --admin
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
ocy() {
  oc --output yaml $@ | yq eval --colors
}
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

pdpush() {
  podman push --tls-verify=false $1
}

ocgetroutes() {
  oc get routes --all-namespaces --output=custom-columns=NAME:.metadata.name
}

iclogin() {
  secrets source ibm-secrets 2>/dev/null
  IBMCLOUD_API_KEY=$IBMCLOUD_API_KEY_RK ic login --quiet >/dev/null 2>&1
}

decryptibm() {
  secrets decrypt ibm-secrets >ibm-secrets
}

encryptibm() {
  secrets encrypt ibm-secrets
}

ssibm() {
  secrets source ibm-secrets 2>/dev/null
}

ocpatchroute() {
  oc patch configs.imageregistry.operator.openshift.io/cluster --type merge -p '{"spec":{"defaultRoute":true}}'
}

ocgetimages() {
  oc get images | grep $(oc get route default-route -n openshift-image-registry -o jsonpath='{ .spec.host }{"\n"}')
}
