
hub status &> /dev/null || {echo "directory is dirty." && exit 1}

rm -rf ./public && mkdir public && hub worktree prune && rm -rf .git/worktrees/public && hub worktree add -B gh-pages public origin/gh-pages && rm -rf ./public/* && hugo && cd public && hac "publishing to gh-pages" && hps
