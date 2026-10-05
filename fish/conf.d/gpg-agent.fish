# ~/.config/fish/conf.d/gpg-agent.fish

if status is-interactive
    set -gx GPG_TTY (tty)
end

set -e SSH_AGENT_PID
set -gx SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)

gpgconf --launch gpg-agent
