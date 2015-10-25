#
# resin.io
#

# Password
set my_tmpsecret = `gpg2 -o ~/.sec/.tmp -d ~/.sec/mutt-passes.gpg > /dev/null 2>&1`
set my_pass      = `awk '/resin.io/ {print $2}' ~/.sec/.tmp`
set my_del       = `rm -f ~/.sec/.tmp`

# IMAP
set from = "Andrei Gherzan <andrei@resin.io>"
set realname = "Andrei Gherzan"
set imap_user = "andrei@resin.io"
set imap_pass = "$my_pass"

# Folders
set folder      = "imaps://andrei@resin.io@imap.gmail.com:993"
set spoolfile   = "+INBOX"
set postponed   = "+[Gmail]/Drafts"
unset record

# SMTP
set smtp_url = "smtp://andrei@resin.io@smtp.gmail.com:587"
set smtp_pass = "$my_pass"

# Key bindings
macro pager d "<save-message>=[Gmail]/Trash<enter><enter><refresh>" "Trash"
macro index d "<tag-prefix-cond><save-message>=[Gmail]/Trash<enter><enter><refresh>" "Trash"
macro index gi "<change-folder>=INBOX<enter>" "Go to inbox"
macro index ga "<change-folder>=[Gmail]/All Mail<enter>" "Go to all mail"
macro index gs "<change-folder>=[Gmail]/Starred<enter>" "Go to starred messages"
macro index gd "<change-folder>=[Gmail]/Drafts<enter>" "Go to drafts"
macro index gt "<change-folder>=[Gmail]/Trash<enter>" "Go to trash"

# Signature
set signature="~/.mutt/accounts/.mutt-signature-resin"
