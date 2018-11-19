# Fork from other people's github
# On the original authors' repo, click fork. github will create a local copy to our organization

# Build upstream links to receive upgrades from original author
git clone https://www.github.com/ksmc/[forked-repo.git]
git remote add upstream https://www.github.com/[original author]/[forked-repo.git]
git remote update
git pull upstream master # always pull from master branch
# if the fork you created is no longer the most recent one, the repo you just clone to your laptop will be upgraded with all changes made by original author in their master branch

# Do your own improvements and changes

# Push all these changes, commits from original author and from yourself, to the KSMC fork
git checkout -b [your branch name]
git add --all
git commit -m "XXXXXXX"
git push origin [your branch name]

# On Github webpage, Review and create pull request from [your branch name] and discuss with your reviewers
# Keep doing this everytime you want to use this repo
