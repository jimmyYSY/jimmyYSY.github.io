---
title: 使用hexo创建博客
date: 2020-1-19 18:09:38
categories:
- 业余研究
tags: 
- hexo
- node 
- npm 
- yarn
---

## 准备工作

- 注： 本教程针对用户为Windows系统
- 下载并安装[node](https://nodejs.org/zh-cn/)  以便使用npm，注：node版本需10.13.0以上
- 推荐使用[nvm](https://github.com/coreybutler/nvm-windows/releases) 安装,nvm为node版本管理器，可同时在一台机器上存在多个node版本
- 下载安装[yarn](https://yarn.bootcss.com/)
- 下载并安装[git](https://git-scm.com/downloads)

## 安装hexo

- 安装hexo 使用npm执行命令

```bash
npm install hexo-cli -g
# 此命令为全局安装hexo-cli以便可以在系统任意地址下使用hexo
```

- 创建博客系统文件

```bash
hexo init blog
# 此命令为下载博客目录文件，blog为文件名，可随意愿自行更改，例如 hexo init XXX
```

- 进入目录

```bash
cd blog
```

- 下载依赖文件

```bash
npm install
# 下载项目依赖文件
```

- 运行blog

```bash
hexo s
```

稍等片刻后，命令行会显示运行成功，并运行于系统的 <http://localhost:4000/> 地址上。
![运行成功](https://github.com/jimmyYSY/blogImgs/blob/master/hexo/hexoS.png?raw=true)
复制粘贴在浏览器访问即可。

## 配置blog主题

- hexo提供大量[系统主题](https://hexo.io/themes/)选择，可选择自己喜欢的主题下载并安装

### 安装配置需注意

- 下载安装后删除主题本地目录文件夹下的.git/目录，否则可能会导致线上发布版本不能正常使用主题。

- 主题中评论系统大多使用无后端系统  需要注册用户新建应用地址为[https://www.leancloud.cn/](https://www.leancloud.cn/) 注册登陆后新建应用，进入设置页，评论系统需使用本应用appID和appKey。

## 结语

至此，hexo已经可以正常使用了，下一章节介绍如何在GitHub上使用github.io配合hexo建站访问。
本篇主要需要注意的内容有

1. 注意node版本，最低需要10.13.0以上

2. 本地配置中，npm下载插件网络超时可以选择使用淘宝镜像cnpm来下载。

3. 下载使用主题注意引用情况
