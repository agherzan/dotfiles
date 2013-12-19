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
set trash = "+Deleted Items"
set record = "+Sent Items"

# SMTP
set smtp_url = "smtp://prod-webmail.windriver.com:25/"

# Key bindings
macro index gi "<change-folder>=Inbox<enter>" "Go to Inbox"
macro index gs "<change-folder>=Sent<enter>" "Go to Sent Mail"
macro index gd "<change-folder>=Drafts<enter>" "Go to Drafts"

# Signature
set signature="~/.mutt/accounts/.mutt-signature-windriver"

mailboxes   =Inbox \
            =[Project]PFI \
            =[Project]VISTEON \
            =gerrit \
            =Travel \
            =Accounts-Settings \
            =PDP-ICP-Training \
            ='Sent Items'
