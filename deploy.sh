#!/usr/bin/zsh
rm -rf ./public && mkdir public && hub worktree prune && rm -rf .git/worktrees/public && hub worktree add -B gh-pages public origin/gh-pages && rm -rf ./public/* && hugo && cd public && hub add -A && hub commit -m "publishing to gh-pages" && hub push
