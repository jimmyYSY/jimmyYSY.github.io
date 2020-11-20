---
title: css3 动效库
date: 2020-11-20 17:11:20
categories:
- tools
tags:
- css
- tools
---


## [Animate.css](https://animate.style/)

![animate](animate.png)

- Animate.css是我比较喜欢的一个CSS3动效库，非常适合那些对CSS3动画效果不熟悉，但又希望给自己所做的网站或基于H5的APP引入动效的朋友。因为，你只需要给需要实现动效的元素添加上Animate.css中预定义的那些动效名称就可以了。比如常见的：bounce，flash，fadeIn，fadeOut等等，加起来有90种以上不同的动效，完全能够满足你的基本需要了。

- 当然对于这个库也有一些使用注意事项，比如你最好在给元素添加动效样式完成动效后，马上将这个动效样式去掉。另外，对于动效的时长，振动幅度等，你也需要做一些调整。因为，我感觉它默认设置中的动效过于快速和强烈了。Animate.css已经提供了详细的文档告诉你应该如何做这些调整。
- 并且这个库支持多种使用方式
- 使用npm安装：
  
  ```bash
    npm install animate.css --save
  ```

- 使用yarn安装
  
  ```bash
  yarn add animate.css
  ```

- 页面内联连接

```HTML
    <head>
    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
    />
    </head>
```

## [Bounce.js](http://bouncejs.com/)

![bounce](bounce.png)

Bounce.js是一个能够生成CSS3动效的小工具，它是用JavaScript编写的，提供了一个Web界面，你可以添加一个组件然后就可以选择包括Scale，Translate，Rotate，Skew这些动效类型，然后分别设置它们的参数，当达到你想要的效果后，你可以将这个动效以CSS的方式导出，这样你就可以将它应用到你的应用中了。

## [CSS3 Animation](https://www.minimamente.com/project/magic/)

![css3Animation](css3Animation.png)

CSS3 Animation是一个非常简单易用的动效工具，目前GitHub start数量6.7k，目前提供70多种不同的特效效果，包括但不限于闪烁提示等，具体样式可点击标题进入官网查看。

## [AniJS](http://anijs.github.io/)

![anijs](Anijs.png)

AniJS是一个通过JavaScript控制的动效库。它允许你通过它的链式语法来定义动效。

## [Single Element CSS Spinners](https://projects.lukehaas.me/css-loaders/)

![spinners](spinners.png)

我们经常会需要一些动效来表达系统处于加载或处理数据的过程中。Single Element CSS Spinners这个在GitHub上的项目，提供了一组非常漂亮的可用于加载的CSS3动效。

## [Snabbt.js](http://daniel-lundin.github.io/snabbt.js/)

![snabbt](snabbt.png)

Sanbbt.js是一个很不错并且精致的动效库，可以被用在移动应用中。而且它也支持链式语法，你可以很方便地写出复杂的动效组合。

```javaScript
snabbt(element, {
  position: [100, 0, 0],
  easing: 'ease'
}).snabbt({
  fromRotation: [0, 0, -2*Math.PI],
  position: [0, 0, 0],
  easing: 'spring',
  springConstant: 0.2,
  springDeceleration: 0.90,
  springMass: 10,
});
```

- bower 安装

```bash
bower install snabbt.js
```

- npm 安装

```bash
npm install snabbt.js
```

- CDNs 地址

```javaScript
https://cdnjs.com/libraries/snabbt.js
http://www.jsdelivr.com/#!snabbt
```

## [Odometer](https://github.hubspot.com/odometer/)

![Odometer](odometer.png)

Odometer是用来给数字作动效的，比如通过它你可以很好地呈现网站人数的增加，倒计时等与数字相关的动画效果。

## [Hover.css](http://ianlunn.github.io/Hover/)

![hover](hover.png)

Hover.css提供了大量的Hover效果，包括2D变换，图标变换，背景变换等等。而且几乎可以应用于所有元素，包括链接，按钮，logo，SVG甚至图片等等。

- bower 安装

```bash
bower install hover.css --save
```

- npm 安装

```bash
npm install hover --save
```

- 具体使用方式详见<https://github.com/IanLunn/Hover#downloadinstall>