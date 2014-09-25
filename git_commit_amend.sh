#!/bin/bash

#修改最后一次提交
vim git_commit_amend.txt
git add git_commit_amend.txt
git commit -m 'initial commit for git commit amend'

vim git_commit_amend2.txt
git add git_commit_amend2.txt
git commit --amend
# input the description
# git status

git log

rm -rf git_commit_amend.txt 
git status
git rm git_commit_amend.txt
git commit -m 'remove test file git_commit_amend.txt'
git status


git rm git_commit_amend2.txt
git status
git commit -m 'remove test file git_commit_amend2.txt'
git status


