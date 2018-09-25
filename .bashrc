. .profile
d=.dir_colors
test -r $d && eval "$(dircolors $d)"

alias ls='ls --color'
alias vi='vim -p'
#alias ctags='ctags -R'
#alias cscope='cscope -R -c -b -q -P`pwd`'
alias cscope='cscope -c -b -P`pwd`'
alias rgrep='rgrep -I -n --exclude-dir=os --exclude-dir=b --exclude-dir=target --exclude=tags --exclude=cscope.out --exclude-dir=oe-workdir --exclude-dir=checktests --exclude-dir=oe-logs --exclude=*.o --exclude=*.a'
alias ngrep='grep -I -n'
alias less='less -+e -+E'
#alias valgrind='valgrind --leak-check=yes --suppressions=/home/andreasm/default.supp'
alias valgrind='valgrind --leak-check=yes'
#alias find='find -L'
alias clear="echo -ne '\033c'"

# Use bash-completion, if available
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

stty -ixon

HISTFILE=$HOME/.bash_history
HISTSIZE=50000
HISTFILESIZE=50000
# Ignore duplicate lines
export HISTCONTROL=ignoredups:erasedups
# When the shell exits, append to the history file 
#  instead of overwriting it
shopt -s histappend

# After each command, append to the history file 
#  and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a"
