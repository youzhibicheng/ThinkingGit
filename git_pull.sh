#!/bin/bash

# git push [remote_name] [branch_name]
# remote_name: git remote -v
# branch_name: git branch

# test git pull
# 1. create another git hub user
#	zouzhicheng1983@gmail.com
# 2. use current user, join zouzhicheng1983@gmail.com as a collaborator
# 3. cd .., got to ~/workspace directory
# 4. git clone https://github.com/youzhibicheng/ThinkingGit.git ThinkingGitDup
# 5. cd ThinkingGitDup
#	git config user.name "James ZOU"
#	git config user.email "youzhibicheng@163.com"
# 	vim git_pull.tx
# 6. switch to original directory ThinkingGit, run
	git pull origin
# you will see git_pull.txt is already in your current directory

# 认清楚 get pull 和 git fetch之间的区别
# git pull 相当于git fetch 和 git merge
