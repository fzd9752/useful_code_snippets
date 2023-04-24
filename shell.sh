# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/elsaw/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/elsaw/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/elsaw/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/elsaw/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# ROS initialize
alias init-ros1="source /opt/ros/noetic/setup.sh"

# ROS2 initialize
alias init-ros2="source /opt/ros/galactic/setup.sh"

# Set Proxy
alias setss="export ALL_PROXY=socks5://127.0.0.1:6060"
alias unsetss="unset ALL_PROXY"
alias getip="curl http://cip.cc"

### Git and GitHub

# Enable tab completion
source ~/git-completion.bash

# colors!
green="\[\033[0;32m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"
yellow="\[\033[1;33m\]"
reset="\[\033[0m\]"
lightred="\[\033[1;31m\]"
lightbgreen="\[\033[1;32m\]"
lightblue="\[\033[1;34m\]"
lightpurple="\[\033[1;35m\]"
lightcyan="\[\033[0;36m\]"

# Change command prompt
source ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$lightpurple\u$green\$(__git_ps1) $lightcyan\W $yellow$ $reset"

## ulias

alias gl='git log --oneline --graph --all'


