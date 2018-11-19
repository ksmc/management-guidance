## Merge A to B
# Clone both repos
git clone repo-A
git clone repo-B

# Pack A then push to a temporary branch called pack-to-move
cd repo-A
git checkout -b pack-to-move
mkdir pack_A 
git mv -K !(pack_A) pack_A
git add -all
git commit -m "pack to move"
git push origin pack-to-move

# Merge A from repo-A/pack-to-move to repo-B/reorganize
cd repo-B
git checkout -b reorganize
git remote add repo-A https://www.github.com/ksmc/repo-A.git
git remote update
git merge -S --allow-unrelated-histories repo-A/pack-to-move
git push origin reorganize

# On Github webpage, Review and create pull request from reorganize and discuss with your reviewers
