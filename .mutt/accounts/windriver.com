# windriver.com

# IMAP
set from = "andrei.gherzan@windriver.com"
set hostname = "windriver.com"
set realname = "Andrei Gherzan"
set imap_user = "agherzan"

# Folders
set folder = "imaps://prod-webmail.windriver.com:993"
set spoolfile = "+Inbox"
set postponed ="+Drafts"
set record = "+Sent Items"

# SMTP
set smtp_url = "smtp://prod-webmail.windriver.com:25/"

# Key bindings
macro pager d "<save-message>=Deleted Items<enter><enter><refresh>" "Trash"
macro index d "<tag-prefix-cond><save-message>=Deleted Items<enter><enter><refresh>" "Trash"
macro index gi "<change-folder>=INBOX<enter>" "Go to inbox"
macro index ga "<change-folder>=[Gmail]/All Mail<enter>" "Go to all mail"
macro index gs "<change-folder>=[Gmail]/Starred<enter>" "Go to starred messages"
macro index gd "<change-folder>=[Gmail]/Drafts<enter>" "Go to drafts"
macro index gt "<change-folder>=Deleted Items<enter>" "Go to trash"

# Signature
set signature="~/.mutt/accounts/.mutt-signature-windriver"
