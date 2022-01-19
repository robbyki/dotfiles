
#--------------------------------------------------------------------#
#                         github gh commands                         #
#--------------------------------------------------------------------#

function gistedit() {
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
  gh pr view -w $(
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
lg()
{
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
	nohup `grep '^Exec' "/usr/share/applications/$selected" | tail -1 | sed 's/^Exec=//' | sed 's/%.//'` >/dev/null 2>&1&
}

# cd into dir after creating it.
mkcdir()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
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

bindkey "^[l" clear-screen

# run `ll` after running cd into dir.
cdl() { cd "$@" && ll; }

# this equals is my '9' key on my dvorak keyboard.
bindkey -s "^[=" 'k9s^M'

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

agh() { 
	ag $1 . 
}

find-alias() { 
 	alias | grep ${1} 
}

# a bunch of really ugly functions that could use a lot of improvements

# delete any target directory recursively in a jvm project. helpful for debugging.
delete-target() {
 	find . -type d -name target -prune -exec rm -r {} +
}

# find files with extension in location given
fde(){ 
	fd . -e ${1} ${2} 
}

#mcddpls(){
#mc ls cosddp/dev-ai-staging/${1}
#}

go-to-local-bin() { 
 	sudo mv $1 /usr/local/bin/$1
}

gO-to-completions() { 
 	sudo mv $1 /home/robbyk/.oh-my-zsh/completions/$1
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
#                             Openshift                              #
#--------------------------------------------------------------------#
ocdel() { 
 	ic oc cluster rm -f --force-delete-storage -c $1
}

# get cluster info printout along with master url
occonf() {
 	ic oc cluster get -c $1
}

# download cluster config and add it to kubeconfig
ocgetconfig() {
 	ic oc cluster config -c $1 --admin
}

# need to run `ssibm` before this to export ibm api key to login without temp passcode
oclogin() {
 	oc login -u apikey -p $IBMCLOUD_API_KEY_RK --server=$1
}

# colorize oc commands
ocy() { 
	oc --output yaml $@ | yq eval --colors
}

occ() { 
	oc $@ | yq eval --colors -P
}

ocgetmaster() {
  ibmcloud oc cluster get --cluster test-cluster-rk | grep "Master URL" | awk '{ print $3 }'
}


# if you want to use passcode url: https://identity-3.us-south.iam.cloud.ibm.com/ui/showpasscode.jsp
# must get master url info first by running occonf and does not require exporting api key
oclogin-pass() {
  oc login -u passcode -p $1 --server=$2
}
