#!/usr/bin/env sh

# 當發生錯誤時終止腳本
set -e

# 進入構建文件夾
cd dist

# 初始化 git 並提交更改
git init
git add -A
git commit -m 'deploy'

# 推送到 gh-pages 分支
git push -f https://github.com/YuRong77/myVocabulary.git main:gh-pages

cd -