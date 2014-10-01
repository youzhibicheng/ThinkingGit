#!/bin/bash

# 远程分支
# test remote branch
# 表示远程分支 [远程仓库名]/[分支名]
# 远程仓库名 git remote -v
# 分支名 git branch -v

# create git_test project in github using brower
# add cooperator zouzhicheng1983@gmail in project git_test in github using brower
# download from remote branch, git clone the project git_test
git clone https://github.com/youzhibicheng/git_test.git git_test_youzhibicheng
cd  git_test_youzhibicheng
# change the local file and commit
vim readme.txt
git add readme.txt
git commit -m 'test remote branch'
# merge with remote branch
git push origin master
# git push [remote_name] [local_branch_name]:{remote_branch_name}
git branch -v
git branch -a
git branch serverfix
git checkout serverfix
git status
git push origin serverfix:awesomebranch
# you will see branch awesomebranch in github using brower


# use another account to change the project
git clone https://github.com/youzhibicheng/git_test.git git_test_zouzhicheng1983
cd git_test_zouzhicheng1983
git branch -v
git branch -a
git config --list
git config user.name 'James ZOU'
git config user.email 'zouzhicheng1983@gmail.com'
# git 查看所有分支，包含远程分支
git branch -a
# checkout branch serverfix using remote branch awesomebranch
git checkout -b serverfix origin/awesomebranch
# add "this change is made by zouzhicheng1983@gmail.com"
vim readme.txt
git add readme.txt
git commit -m 'git branch changed by cooperator'
git status
git push origin serverfix:awesomebramch
# github上用网页查看awesomebranch, 看对应的readme.txt是否有变化


cd ../git_test_youzhibicheng
# set the username as youzhibicheng@163.com
git config --list
git config user.name 'James ZOU'
git config user.email 'youzhibicheng@163.com'
git checkout -b serverfix origin/awesomebranch
git branch -a
git fetch origin
git status
# On branch serverfix
# Your branch is behind 'origin/awesomebranch' by 1 commit, and can be fast-forwarded.
#   (use "git pull" to update your local branch)
# git merge origin 不行
git merge origin 
# git merge origin/awesomebranch 可以
git merge origin/awesomebranch



# delete remote branch
git push origin :awesomebranch
# verify it in github using web brower

# 其他写法
git checkout --track origin/awesomebranch
# 会被自动命名为 awesomebranch
git branch -a

