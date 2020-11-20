---
title: hexo常用配置及命令
date: 2020-11-20 15:46:33
categories:
- 业余研究
tags:
- hexo
---

## 创建hexo项目

```bash
    hexo init <name>
```

## hexo创建新页面

- 在本地hexo目录下打开cms窗口并输入 <em> hexo new (布局) (名字)</em> 即可创建
  
  ```bash
    hexo new <布局> <名字>
  ```

- 常用的hexo布局方式有 <em>post</em>、<em>page</em>、<em>draft</em>，分别代表的意义为 文章，页面以及草稿具体对应目录如下：
  | 布局  | 路径           |
  | ----- | -------------- |
  | post  | source/_posts  |
  | page  | source         |
  | draft | source/_drafts |

## 启动hexo项目

```bash
    hexo server
    # 可简写为
    hexo s
```

## 列出网站资料

```bash
    hexo list <type>
    # type 为网站属性  例如  post   page   tags等
```

## 帮助命令

```bash
    hexo help
```