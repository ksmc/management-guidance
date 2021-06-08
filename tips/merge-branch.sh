## Merge branch and resolve conflicts manually
git pull origin
git checkout master
git merge <your_branch>

## Merge branch to force master sync with branch branches
## This will overwrite master with content from your branch
git pull origin
git checkout master
git merge -X theirs <your_branch>
