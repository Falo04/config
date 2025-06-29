abbr --add up python3 tools.py up -d
abbr --add build python3 tools.py up -d --build
abbr --add down python3 tools.py down
abbr --add logs python3 tools.py logs -tf

zoxide init fish | source

set -gx GPG_TTY (tty)
