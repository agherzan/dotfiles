# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
PATH=$PATH:$HOME/.local/bin:$HOME/bin

# OPAM configuration
. /home/agherzan/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# Pebble tools
PATH=~/work/personal/pebble-dev/SDK:$PATH

export PATH
