#!/bin/bash
echo "开始执行发布程序"
git pull
git status

while true;do
    read -p "请输入提交文件：" dirName
    git add $dirName
    read -p "继续提交？（y/n）：" check
    if (($check == 'n'))
    then
    break
    fi
done

read -p "请输入提交内容：" commit
git commit -m $commit
git push
echo "提交完成，程序退出"