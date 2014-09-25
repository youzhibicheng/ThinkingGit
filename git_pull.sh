#!/bin/bash

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
