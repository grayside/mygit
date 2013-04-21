#!/bin/bash

# Aliases
## Pretty one-line display of all commits.
git config --global alias.hist "log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short"
## Log entry for the most recent commit.
git config --global alias.last "log --max-count=1"
## More limited one-liner explaining the last commit.
git config --global alias.whatis "show -s --pretty='tformat:%h (%s, %ad)' --date=short"
## Show all branches merged into origin/master.
git config --global alias.merged "branch --merged origin/master -a"
## Create a diff with all files relative to the current directory.
git config --global alias.dd "diff --relative"
## Show a list of all files affected by the last commit.
git config --global alias.files "show --pretty=\"format:\" --name-only"
## Provide a commit message search string, get a link to github to view the commit."
git config --global alias.review-commit "log --pretty=format:\"https://github.com/GoingOn/noc/commit/%H\" --grep"
## Get a list of all local branches sorted by latest update.
git config --global alias.branches "for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short), last updated %(committerdate:relative) by %(authorname)'"
## Makes sure patch application with apply is completely complete.
git config --global alias.a "apply --index"


# URL Shortcuts
## git clone drupal://views -branch 7.x-3.x
git config --global "url.ssh://git@git.drupal.org/project/.insteadOf" "drupal:"
git config --global "url.ssh://git@git.drupal.org/sandbox/.insteadOf" "sandbox:"

# Behavior changes.
## Auto-correct end-of-file and generally use Unix line-endings.
git config --global core.autocrlf "true"
git config --global core.safecrlf "false"
##  Append universally to all .gitignore directives.
git config --global core.excludesfile "~/.gitignore"
## Throw warnings for various whitespace problems.
git config --global core.whitespace "blank-at-eol,blank-at-eof,trailing-space,tab-in-indent"
## When working with remote tracking branches, configure git pull to rebase from the remote. (And otherwise merge.)
git config --global branch.autosetuprebase "remote"
##  Git v1.8.2 use Patience algorithm by default. http://blog.apiaxle.com/post/handy-git-tips-to-stop-you-getting-fired/#comparing_large_chunks_of_text
git config --global diff.algorithm patience
## Treat renames as copies and list them, rather than presenting each line of the removed and added file as part of patches.
git config --global diff.renames "copies"


# Colors!
git config --global color.ui "true"
git config --global color.branch "always"
git config --global color.branch.current "green bold"
git config --global color.branch.remote "red bold"
git config --global color.diff "always"
git config --global grep.lineNumber "true"
