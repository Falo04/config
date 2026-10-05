abbr --add up python3 tools.py up -d
abbr --add build python3 tools.py up -d --build
abbr --add down python3 tools.py down
abbr --add logs python3 tools.py logs -tf

abbr --add k kubectl

zoxide init fish | source

[ -f $HOMEBREW_PREFIX/share/forgit/forgit.plugin.fish ]; and source $HOMEBREW_PREFIX/share/forgit/forgit.plugin.fish

source /Users/felix/.config/op/plugins.sh
