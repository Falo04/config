function upgrade_git
    set back (pwd)
    for d in (find . -type d -name .git)
        cd "$d/.."
        pwd
	echo "git pull in $(d)"
        git pull
        cd $back
    end
end
