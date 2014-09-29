#!/bin/bash

# 取消已经暂存的文件

vim git_reset_HEAD.txt
git add git_reset_HEAD.txt
git status

git reset HEAD git_reset_HEAD.txt
git status

rm -rf git_reset_HEAD.txt
git status

# 注意与git rm之间的区别
# git remove 是从提交从删除

# git remove 是在 commit 之后
# git reset 是在add之后, commit 之前
