#!/bin/bash

#  分支 branch

# 操作本地分支
git branch
git branch test
git branch

git checkout branch
git branch

# based on git test branch, to do some change
vim git_branch_local.txt
git add git_branch_local.txt
git commit -m 'test git branch on branch test'
git status

git checkout master
git merge test
git branch
git branch -d test
# to force delete
git branch -D test
git branch

git branch test

git checkout master
vim git_branch_local.txt
# add "test git branch in branch mastear"
git add git_branch_local.txt
git commit -m 'test git branch in branch master'
git status

git checkout test
vim git_branch_local.txt
# add "test git branch in branch test"
git add git_branch_local.txt
git commit -m 'test git branch in branch test'
git status

git checkout master
git merge test
# will give conflict error information, should add just by youself
# Auto-merging git_branch_local.txt
# CONFLICT (content): Merge conflict in git_branch_local.txt
# Automatic merge failed; fix conflicts and then commit the result.
git status
# the git_branch_local.txt already merge and change, fix it manually and then do the following
git commit -a -m 'fix git branch merge conflict manually'
git status
git merge test
# will see "already up-to-date"
