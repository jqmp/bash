# command prompt
export PS1='$LOGNAME:\w> '

# this is some magic that makes the terminal title reflect the cur. dir.
update_title() { echo -n -e "\033]0;$PWD\007";}
update_title

# the current directory should be in our path
export PATH=$PATH:.

# we have to alias every directory-changing command to use update_title()
cd_update() { cd $*; update_title;}
alias cd='cd_update'

pushd_update() { pushd $*; update_title;}
alias pushd='pushd_update'

popd_update() { popd $*; update_title;}
alias popd='popd_update'

# safety aliases
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

# utility aliases
alias ll="ls -l"
alias la="ls -A"
alias l="ls -CF"
