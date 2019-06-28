---
title: Mac下搭建hexo-next博客教程
categories:
  - 教程
tags:
  - Mac
  - Hexo
  - Next
  - Blog
date: 2019-06-17 20:06:19
---

本文主要介绍在Mac环境下搭建hexo-theme-next的过程，以及其中遇到的问题的解决方法
<!-- more -->
## 安装环境
1. 机器：MacBook Air
2. OS: macOS HighSierra 10.13.2

## 安装步骤

### 安装git
`brew install git`

### 安装node
`brew install node`

### 安装hexo
`sudo npm install -g hexo`
安装报错，换个命令
`sudo npm install --unsafe-perm --verbose -g hexo`
验证是否安装成功
`hexo -v`

### 安装Next主题
1. cd your-hexo-dir
2. git clone https://github.com/iissnan/hexo-theme-next themes/next
3. 修改站点_config.yml, `theme: next`

### 启动server
`hexo serve` OR `hexo s` 
 启动hexo，访问http://localhost:4000/

### 自动部署git
官网安装教程 [hexo deploy](https://hexo.io/zh-cn/docs/deployment.html)

### 如果hexo-deployer-git失败
试试这个命令`sudo npm install --unsafe-perm hexo-deployer-git --save`

## 主题个性化设置

### 汉化
在站点设置下的`<b>_config.yml</b>`，设置`language: en-Hans`

### 新建标签页面
`hexo new page tags`
设置type类型为tags，`type: tags`

### 新建分类页面
`hexo new page categories`
设置type类型为categories，`type: categories:`

### 新建关于页面
`hexo new page about`
设置type类型为about，`type: about`



## 写博客
博客目录`source/_posts/`
### 新建博客
先写草稿`hexo new draft xxx`，完成后发布文章 `hexo publish xxx`
也可以直接写发布文章`hexo new xxx`

### 博客列表展示博客摘要的方法
在首页显示文章的摘录并显示 阅读全文 按钮，可以通过以下方法：
1. 在文章中使用 `<!-- more -->` 手动进行截断，Hexo 提供的方式，推荐使用
2. 在文章的 front-matter 中添加 description，并提供文章摘录
3. 自动形成摘要，在 主题配置文件 中添加：
```
auto_excerpt:
  enable: true
  length: 150
```
默认截取的长度为 150 字符，可以根据需要自行设定

### 在博文中添加图片
1. 在hexo目录下，安装插件：
`npm install hexo-asset-image --save`
2. 在hexo\source 目录下新建一个img文件夹，把图片放置在里面；
3. 在xxx.md文件中引用图片：
`![header]( img/header.jpg)`

### 发布新文章
`hexo clean && hexo g && hexo d`
> `hexo g = hexo generate`
> `hexo d = hexo deploy`

### 插入图片
> 方式一
图片放在`source/images`目录下，在正文中通过`![](/images/avatar.jpeg)`引入图片
> 方式二
修改`_config.yml`站点配置，设置`post_asset_folder: true`，安装`npm install https://github.com/CodeFalling/hexo-asset-image --save`，新建博客`hexo new xxx`时，Hexo
会自动建立一个与文章同名的文件夹；以前的文章也可以自己手动创建同名文件夹。然后通过`![](xxx/logo.jpg)`引入图片
