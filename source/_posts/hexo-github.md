---
title: 使用github.io配合hexo建站
date: 2020-1-20 13:58:27
categories:

- 业余研究

tags:

- GitHub
- hexo

---

## 准备工作

* 注册GitHub账号 <https://github.com/join>
* 安装配置hexo，详情请转至[使用hexo创建博客](https://jimmyysy.github.io/2020/11/19/hexo/)
* 注册[Travis CI](https://travis-ci.com/)账号

## 新建开源项目 （repository）

* 登录至[GitHub](https://github.com/login)
* 填入注册的账号及密码

![github-login](https://github.com/jimmyYSY/blogImgs/blob/master/GitHub/github-login.png?raw=true)

* 新建[开源项目](https://github.com/new)

![github-newRepository](https://github.com/jimmyYSY/blogImgs/blob/master/GitHub/github-newRepository.png?raw=true)

注：
  项目名称格式应为 用户名.github.io 格式
  项目为开源项目
  直接点Create repository创建即可

## 配置项目

* 在本地hexo项目目录下新建文件，文件名为 .travis.yml
* 文件内容如下

```yml
sudo: false
language: node_js
node_js:

  + 10 # use nodejs v10 LTS

cache: npm
branches:
  only:

    - master # build master branch only

script:

  + hexo generate # generate static files

deploy:
  provider: pages
  skip-cleanup: true
  github-token: $GH_TOKEN
  keep-history: true
  on:
    branch: master
  local-dir: public
```

* 添加[Travis CI](https://github.com/marketplace/travis-ci)到GitHub账户
* 前往 [GitHub的 Applications settings]([https://link](https://github.com/settings/installations)) 配置Travis CI权限，让Travis CI 有权限能够访问github项目
* 在GitHub新建 [Personal Access Token](https://github.com/settings/tokens)，只勾选 <i>repo</i> 的权限后并生成一个新得Token，此Token需要复制保存好。
* 返回 Travis CI，前往你的repository的设置页面，在 Environment Variables 下新建一个环境变量，Name 为 <i>GH_TOKEN</i>，Value 为刚才你在 GitHub 生成的 Token。确保 DISPLAY VALUE IN BUILD LOG 保持 不被勾选 避免你的 Token 泄漏。点击 Add 保存。
  
## 提交项目

* 返回至本地hexo项目并打开cmd页面
* 执行git项目初始化操作
  
  ```bash
  git init

  git add .

  git commit -m "first commit"

  git branch -M master

  git remote add origin https://github.com/用户名/用户名.github.io.git

  git push -u origin master
  
  # 推送的时候如果本地没有记录账号，需要登录，或者需要填写用户名，之后弹框中填入token  token为刚刚github新建的token
  ```

* 提交完毕后，Travis CI会自动构建，并在项目中创建分支 GH_TOKEN 同时提交至GitHub
  
## 配置GitHub

* 打开项目Settings选项
* 勾选Template repository选项
  ![github](https://github.com/jimmyYSY/blogImgs/blob/master/GitHub/github-settings0.png?raw=true)
* 下来至GitHub Pages部分 选择新建的分支 gh-pages 分支 点击 <kbd> save </kbd>保存即可
  ![github](https://github.com/jimmyYSY/blogImgs/blob/master/GitHub/github-settings1.png?raw=true)

* 新建一个浏览器标签页，输入 你的用户名+.github.io 访问一下试试，可能会有三五分钟的网络延迟。

## 结语

关于github搭配hexo 搭建个人网站以及发布的整理到这里也就告一段落了，后面会添加一些关于hexo的配置以及常用使用命令的整理文档。
  