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
