function tz
    set session $(tmux list-sessions | cut -d ':' -f 1 | fzf)
    if test -n "$session"
        tmux attach-session -t $session
    else
        echo "No session selected"
    end
end
