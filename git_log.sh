#!/bin/bash

git log

# -p 展开显示每次提交的内容差异
# -2 display the current 2 logs
git log -p -2

# 仅仅显示简要的增改行数统计
git log --stat

# 制定使用完全不同于默认格式的方式展示提交历史，比如oneline, short, full, fuller
git log --pretty=oneline


