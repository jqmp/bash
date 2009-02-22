source ~/.profile

# command prompt
export PS1='$LOGNAME:\w> '

# this is some magic that makes the terminal title reflect the cur. dir.
update_title() { echo -n -e "\033]0;$PWD\007";}
cd_update() { cd $*; update_title;}
alias cd='cd_update'
update_title

# safety aliases
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
