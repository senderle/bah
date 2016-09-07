# ~/.bash_aliases: sourced by .bashrc

## Start bah config ##

# Most of these are lies right now.

# If there are any lines above this that are not comments,
# the file will be ignored. (Future versions may move the
# bah config section to the top of the file.) If you need
# to execute arbitrary bash code before setting any aliases
# or exports, use an empty top-level file and insert the 
# code in the first module.
#
# Double hashes will be interpreted as bah directives. 
# Currently, there are only begin section directives
# (two hashes with a space and a name) and end section
# directives (two hashes followed only by whitespace).
# If the file contains unrecognized directives, it
# will be ignored.
# 
# You may edit this section by hand, but any out of place 
# item -- an `alias` in the `Exports` section, for example
# -- will cause the file to be ignored. Comments inside
# secions will also cause the file to be ignored. (Future
# versions may allow comments inside sections, and will
# instead disable the offending item with a hash.)

## Exports
export PS1="\[\e[00;32m\]\u@\h:\[\e[00;36m\]\w $\[\e[00m\] "
export NODE_PATH=/usr/local/lib/node_modules
export CVS_RSH=ssh
export WINEDEBUG=-all
export GPGKEY=C52ED577
export PYTHONSTARTUP=~/.pythonstartup
export NLTK_DATA=~/.nltk_data
##

## Aliases
alias pd=pushd
alias po=popd
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias la='ls -al'
alias sl='ls'
alias xterm='xterm -bg black'
alias vi=vim
alias src='cd ~/Dropbox/Documents/src'
##

## Modules
modules=()
modules+=("osx.sh")
modules+=("centos.sh")
modules+=("root.sh")
modules+=("rbenvinit.sh")
modules+=("brewbashcomplete.sh")
##

for p in "${modules[@]}"
do
    if [ -f ~/.bah/modules/"$p" ]
    then
        source ~/.bah/modules/"$p"
    fi
done

## External Modules
modules=()
modules+=("/usr/local/bin/virtualenvwrapper.sh")
modules+=("/usr/bin/virtualenvwrapper.sh")
##

for p in "${modules[@]}"
do
    if [ -f "$p" ]
    then
        source "$p"
    fi
done

unset modules
unset p

## End bah config ##

# Tony Vo's crazy PS1 prompt -- what does it mean???
# '\[\e]0;\u@\h:\l\a\]\[\e[33m\]\# \A \[\e[32m\][\[\e[36m\]\h\[\e[32m\]]\[\e[1;31m\]$(__git_ps1 "(%s)")\[\e[0;33m\]\w\[\e[32m\]\$ \[\e[0m\]'

