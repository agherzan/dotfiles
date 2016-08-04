#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Nice blue colors
PS1="\[\e[34m\]\u@\h\[\e[0m\]\[\e[1;34m\] \W \$ \[\e[0m\]"

# GPG
export GPG_TTY=$(tty)
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
    export SSH_AUTH_SOCK="/run/user/1000/gnupg/S.gpg-agent.ssh"
fi
gpg-connect-agent updatestartuptty /bye >/dev/null # Refresh gpg-agent tty in case user switches into an X session

# Fix strange font rendering in eclipse
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

# Google Calendar CLI
alias gcalcli="gcalcli --configFolder ~/.gcalcli/resin" # default
alias calresin="gcalcli --configFolder ~/.gcalcli/resin"
alias calgherzan="gcalcli --configFolder ~/.gcalcli/gherzan"

alias automount="udiskie -t &"
