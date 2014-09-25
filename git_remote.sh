#!/bin/bash

git remote
git remote -v
git remote show origin
git remote add git_test https://github.com/youzhibicheng/git_test.git
# after git remote add, you can use git fetch to download
git fetch git_test
# [jameszou@jameszou-t430-rhel65 ThinkingGit]$ git fetch git_test
# warning: no common commits
# remote: Counting objects: 24, done.
# remote: Total 24 (delta 0), reused 0 (delta 0)
# Unpacking objects: 100% (24/24), done.
# From https://github.com/youzhibicheng/git_test
#  * [new branch]      master     -> git_test/master
# 这个时候我们看见没有download下来git_test中的文件
# 但git_test的主干分支master已经可以访问了, 对应名字是 git_test/master
git remote rm git_test
git remote -v

# git push <remote> <local>
git push origin master
# if meet error
# error: The requested URL returned error: 403 Forbidden while accessing 
# change .git/config
# from 
# https://github.com/youzhibicheng/ThinkingGit.git
# to 
# https://youzhibicheng@github.com/youzhibicheng/ThinkingGit.git

# 抓取从上次克隆以来别人上传到此远程仓库中的所有更新
# fetch 只是将远程的数据拉到本地仓库， 并不自动合并到当前工作分支，只有当你确实准备好了，才能手工合并  
git fetch origin

git pull origin
