#!/bin/bash

#这三大部分中：
# working tree：就是你所工作在的目录，每当你在代码中进行了修改，working tree的状态就改变了。
# index file：是索引文件，它是连接working tree和commit的桥梁，每当我们使用git-add命令来登记后，index file的内容就改变了，此时index file就和working tree同步了。
# commit：是最后的阶段，只有commit了，我们的代码才真正进入了git仓库。我们使用git-commit就是将index file里的内容提交到commit中。
#总结一下：
# git diff：是查看working tree与index file的差别的。
# git diff --cached：是查看index file与commit的差别的。
# git diff HEAD：是查看working tree和commit的差别的。（你一定没有忘记，HEAD代表的是最近的一次commit的信息）

vim git_diff.txt
git add git_diff.txt
git commit -m 'the first git change that committed'
#git commit -a -m "the first git change that committed"

# the second time change
vim git_diff.txt
git add git_diff.txt
git status

# the third time change
vim git_diff.txt
git status

git diff
git diff --cached
git diff HEAD


