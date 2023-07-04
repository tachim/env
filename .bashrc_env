VISUAL=vim
export ANS_DEFAULT_INSTANCE=dwc
export EDITOR=vim
alias grep="grep --color"
alias git='TZ=America/Los_Angeles git'
if [ "$(uname)" == "Darwin" ]; then
    alias ls='ls -G'
else
    alias ls='ls --color'
fi

function color_my_prompt {
    local __user_and_host="\[\033[01;32m\]\u@\h"
    local __cur_location="\[\033[01;34m\]\w"
    local __git_branch_color="\[\033[31m\]"
    local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
    local __prompt_tail="\[\033[35m\]$"
    local __last_color="\[\033[00m\]"
    export PS1="$__user_and_host $__cur_location $__git_branch_color$__git_branch$__prompt_tail$__last_color "
}
color_my_prompt

export HISTCONTROL=ignorespace

if [ -z "$SSH_AUTH_SOCK" ]; then
   # Check for a currently running instance of the agent
   RUNNING_AGENT="`ps -ax | grep 'ssh-agent -s' | grep -v grep | wc -l | tr -d '[:space:]'`"
   if [ "$RUNNING_AGENT" = "0" ]; then
         # Launch a new instance of the agent
        ssh-agent -s &> $HOME/.ssh/ssh-agent
   fi
   eval $(cat $HOME/.ssh/ssh-agent) > /dev/null
fi

export PATH=~/w/google-cloud-sdk/bin:$PATH
export PATH=~/w/homebrew/bin:$PATH
