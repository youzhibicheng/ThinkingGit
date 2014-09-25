#!/bin/bahs

vim git_remove.txt
git add git_remove.txt
git status

rm -rf git_remove.txt
git status
git rm git_remove.txt
git status


# remove from 暂存区, still in 当前工作目录
vim git_remove.txt
git add git_remove.txt
git status

git rm --chached git_remove.txt
git status
rm -rf git_remove.txt
