#!/bin/bash

# 取消已经暂存的文件

vim git_reset_HEAD.txt
git add git_reset_HEAD.txt
git status

git reset HEAD git_reset_HEAD.txt
git status

rm -rf git_reset_HEAD.txt
git status


