function ff
	fzf --style full \
    --preview 'fzf-preview.sh {}' --bind 'focus:transform-header:file --brief {}'
end
