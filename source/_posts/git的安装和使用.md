---
title: git的安装和使用
date: 2020-11-25 13:53:43
categories:
- 业余研究
tags:
- git
- github
---

## 什么是git

- git是一个开源的，可任意使用的版本控制管理系统，可用于管理多种类，大小的各种项目。
- git可安装于多个平台 
  - Linux
  - Windows
  - MAC OS
- 且git常用的版本管理方式有：
  - git bash
  - 图形化客户端 例如：（<https://www.sourcetreeapp.com/> : sourcetree 本身为开源软件且，提供多平台支持）

## 安装git

- 首先下载 [git](https://git-scm.com/downloads) ,进入网站后，选择相应系统的进行下载
- 以window10系统为例：
  1. 待下载完成后，打开下载的安装包，既文件名为 Git-xxxxxx-git.exe 的文件
  2. 双击文件后，在打开的对话框中点击 <kbd>Next > </kbd> 按钮即可    ![git](git0.png)

  3. 进入安装路径选择页，可选择安装至本地磁盘的某一路径下，自行设置即可，尽量不要安装在C盘中。 ![git1](git1.png)
   
  4. 接下来一路点击 <kbd>Next ></kbd>按钮即可直至安装包解压完成后出现完成页面，选择 *Launch Git Bash*  点击<kbd>Finish</kbd>即可 ![git2](git2.png)
  
  5. 稍等片刻，待桌面出现如下页面便代表软件已经安装成功了 ![git3](git3.png)

## 使用git

- 接下来便可以使用git下载github或者码云上的开源项目了
- 例如在github上查找到目标项目后  ，点击绿色的Code 按钮后  选择复制Https下面的地址路径. ![gitclone](gitclone.png)
- 在git bash客户端中执行
  
```bash
$ git clone https://github.com/geongeorge/Git-User-Switch.git
# git clone 为指令内容    后面的地址为项目下载地址
Cloning into 'Git-User-Switch'...
remote: Enumerating objects: 163, done.
remote: Counting objects: 100% (163/163), done.
remote: Compressing objects: 100% (100/100), done.
remote: Total 163 (delta 73), reused 140 (delta 53), pack-reused 0
Receiving objects: 100% (163/163), 50.19 KiB | 2.28 MiB/s, done.
Resolving deltas: 100% (73/73), done.
```

- 至此 项目便下载成功了，根据项目文档 （既项目中 README.md文件）描述内容配置运行便可以了

## git 基础概念

### 工作流

- 本地项目中，如果通过git来进行维护 ，那么本项目中共有三个工作“树” ，分别为：
  - 工作目录：你实际的本地目录文件内容
  - 暂存区：类似于缓存区域，用于暂时存放你的所有本地改动内容
  - HEAD：代表为你的已提交并且为最近一次提交的结果。
  - 大体工作流程如下： ![working](gitWorking.png)

### 提交更改内容至线上

- 添加本地更改内容至暂存区

```bash
git add <filename> # filename为你要提交的具体文件名或文件夹
# 如需提交所有已更改文件则可执行
git add .
```

- 提交代码改动内容并备注改动内容

```bash
git commit -m "xxxxx" # 双引号内为备注内容，可根据实际内容填些
```

***注：此时还没有推送至远程仓库中，还需执行推送指令***

- 推送本地更改至远程

```bash
git push origin <branch> # branch为你想要推送至的分支名，默认通常为master
```

## 结语

- 通过以上介绍，便可进行基本的git使用及操作
- 具体的git指令介绍请参考 [git常用操作](https://jimmyysy.github.io/2020/11/23/git%E5%B8%B8%E7%94%A8%E6%93%8D%E4%BD%9C/)的内容。
- 本文参考内容为<https://www.runoob.com/manual/git-guide/>
  