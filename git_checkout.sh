#/bin/bash

# the first changes
vim git_checkout.txt
git add git_checkout.txt
git status

# the second changes
vim git_checkout.txt
git status
git checkout -- git_checkout.txt
git status
# all the second changes are missed

git rm --cached git_checkout.txt
git status
rm -rf git_checkout.txt
