# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

#
# Keychain
#
# Add my keys
#/usr/bin/keychain -q $HOME/.ssh/id_rsa_wrs
#/usr/bin/keychain -q $HOME/.ssh/id_rsa
source $HOME/.keychain/$HOSTNAME-sh

export EDITOR=/usr/bin/vim
export PAGER=/usr/bin/vim

# Nice blue colors
PS1="\[\e[34m\]\u@\h\[\e[0m\]\[\e[1;34m\] \W \$ \[\e[0m\]"

# google-drive-ocamlfuse on Linux
PATH=$PATH:$HOME/.opam/system/bin
export PATH

# Run suspend and hibernate as root
alias pm-suspend="sudo pm-suspend"
alias pm-hibernate="sudo pm-hibernate"

# Maven
M2_HOME=/home/agherzan/Software/apache-maven-3.1.1
M2=$M2_HOME/bin
PATH=$M2:$PATH
export M2_HOME
export M2
export PATH
