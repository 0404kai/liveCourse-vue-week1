#!/usr/bin/env sh

# 发生错误时终止
set -e

# 构建
npm run build

# 进入构建文件夹
cd dist

# 放置 .nojekyll 以绕过 Jekyll 的处理。
echo > .nojekyll

# 如果你要部署到自定义域名
# echo 'www.example.com' > CNAME

git init
git checkout -B main
git add -A
git commit -m 'deploy'

# 如果你要部署在 https://0404kai.github.io
# git push -f git@github.com:0404kai/0404kai.github.io.git main

# 如果你要部署在 https://0404kai.github.io/liveCourse-vue-week1
git push -f git@github.com:0404kai/liveCourse-vue-week1.git main:gh-pages

cd -
