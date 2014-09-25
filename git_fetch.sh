#!/bin/bash

# git fetch <remote name>
# git fetch <remote name> <remote branch>
# git fetch <remote name> <remote branch>:<local branch>
# <remote name> use git remote -v to find
#
# 从远程origin的master分支下载最新版本到 本地origin/master分支上
# git fetch origin
git fetch origin master
git branch -a
# 比较本地和远程 的区别
git log -p master origin/master
# 合并
git merge origin/master

# git fetch 相当与是从远程获取最新版本到本地，不会自动merge
