# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
PATH=$HOME/.local/bin:$HOME/bin:$HOME/.gem/ruby/2.3.0/bin:$PATH

export PATH

# Start X
[[ $(tty) = "/dev/tty1" ]] && exec startx

# GPG key ID
export GPGKEY=AD0E9640
