set fish_greeting (date)

set -x PATH /usr/local/opt/python@2/bin $PATH
set -x PATH /Applications/Postgres.app/Contents/Versions/9.6/bin/ $PATH

set -x GOPATH /Users/sazary/code/go/
set -x PATH /Users/sazary/code/go/bin $PATH

eval (python -m virtualfish)

__fish_complete_django django-admin.py
__fish_complete_django manage.py

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
