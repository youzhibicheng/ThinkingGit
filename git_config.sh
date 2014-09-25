#!/bin/bash

# system /etc/gitconfig
sudo git config --system user.name "James ZOU"
sudo git config --system user.email "youzhibicheng@163.com"

# global ~/.gitconfig
git config --global user.name "James ZOU"
git config --global user.email "youzhibicheng@163.com"
git config --global core.editor vim
git config --global merge.tool vimdiff

# default, in current directory, .git/config
# should have .git/config first
# you can use git init to create the directory
git config user.name "James ZOU"
git config user.email "youzhibicheng@163.com"

git config --list

