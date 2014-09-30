#!/bin/bash

# git tag demo

# list current tag
git tag

# list current tag use pattern
git tag -l 'v1.4.*'

# 含附注的标签
git tag -a v0.1 -m 'the draft tag'
git tag
git show v0.1

# 签署标签 signed
git tag -s v0.2 -m 'my signed 0.2 tag'
# the result is just like this:
# gpg: skipped "James ZOU <youzhibicheng@163.com>": secret key not available
# gpg: signing failed: secret key not available
# error: gpg failed to sign the data
# error: unable to sign the tag
# 做这个的前提是有自己的私钥，但出错原因还没有查清楚

# 轻量级标签
# 轻量级标签实际上就是一个保存着对应提交对象的校验和 信息的文件
git tag v0.3-light-weight
git tag
git show v0.3-light-weight

# 验证标签 verify
# 没有弄清楚，需要弄清楚linux 公钥 私钥 的概念
git tag -v 

# 分享标签
# git push 默认情况下并不会把标签传送到远程服务器上
git push origin v0.1

# 一次性推送所有标签上去
git push origin --tags
