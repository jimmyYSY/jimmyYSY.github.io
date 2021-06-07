#!/bin/bash
echo "开始执行发布程序"
git pull
git add .
read -p "请输入提交内容：" commit
git commit -m $commit
git push
echo "提交完成，程序退出"