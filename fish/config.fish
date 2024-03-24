set fish_greeting (date)

set -x GOPATH /home/sazary/code/go
set -x PATH /usr/local/go/bin $PATH
set -x PATH /home/sazary/code/go/bin $PATH
set -x PATH /snap/bin $PATH

set -x BAT_THEME Nord


export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# alias ssh="kitty +kitten ssh"

__fish_complete_django django-admin.py
__fish_complete_django manage.py

set -g async_prompt_functions _pure_prompt_git

set -U pisces_only_insert_at_eol 1
