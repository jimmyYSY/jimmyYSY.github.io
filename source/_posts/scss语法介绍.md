---
title: scss语法介绍
date: 2020-11-25 10:00:43
categories:
- 前端
tags:
- scss
---

- 注： 此处列出的内容为scss常用且较传统css差异较大的语法内容，并提供编译后效果预览，如需自行编译，可通过 <https://www.sassmeister.com/> 进行转换

## 父选择器 *&*

父选择器符号可用于代表当前样式层级之上的父级选择器名称

```css
a {
  font-weight: bold;
  text-decoration: none;
  &:hover { text-decoration: underline; }
  body.firefox & { font-weight: normal; }
}
```

***编译为：***

```css
a {
  font-weight: bold;
  text-decoration: none; }
  a:hover {
    text-decoration: underline; }
  body.firefox a {
    font-weight: normal; }
```

且 父选择器还可适用于类似字符串拼接的方式使用

```css
#main {
  color: black;
  &-sidebar { border: 1px solid; }
}
```

***编译为:***

```css
#main {
  color: black; }
  #main-sidebar {
    border: 1px solid; }
```

## 自定义变量

```css
$color:pink;
.test1{
    background-color:$color;
}
```

***编译为:***

```css
.test1{
    background-color:pink;
}
```

## 插入一个变量

```css
$right:right;
.test2{
    border-#{$right}:1px solid #000;
}
```

***编译为***

```css
.test2 {
  border-right: 1px solid #000;
}
```

## 子元素书写

```css
.text3{
    .text33{
        border:1px solid;
    }
}
```

***编译为***

```css
.text3 .text33 {
  border: 1px solid;
}
```

## 样式的加减乘除

```css
$paramer:3;
.text4{
    height:(1px+3px);
    width: (96px/6);
    right: $paramer*4;
}
```

***编译为***

```css
.text4 {
  height: 4px;
  width: 16px;
  right: 12;
}
```

## 继承

```css
.class5{
    border:1px solid red;
}
.class5E{
    @extend .class5;
    font-size:20px;
}
```

***编译为***

```css
.class5, .class5E {
  border: 1px solid red;
}

.class5E {
  font-size: 20px;
}
```

## 代码块的复用

```css
@mixin firefox-message($selector) {
  body.firefox #{$selector}:before {
    content: "Hi, Firefox users!";
  }
}
@include firefox-message(".header");
```

***编译为***

```css
body.firefox .header:before {
  content: "Hi, Firefox users!"; }
```

## if语法，当if内的条件成立的时候，则使用当前样式

```css
.text7{
    @if 1 +2 == 3 {
        border:1px solid ;
    }
    @if 5 < 3 {
        border:2px dsahed red;
    }
}
```

***编译为***

```css
.text7 {
  border: 1px solid;
}
```

if也可配合else或者else if 同时使用

```css
$type: monster;
p {
  @if $type == ocean {
    color: blue;
  } @else if $type == matador {
    color: red;
  } @else if $type == monster {
    color: green;
  } @else {
    color: black;
  }
}
```

***编译为***

```css
p {
  color: green; }
```

## 循环语法，包括最常见的三种循环方法，for,while,each

- 用循环的方式，可批量建立样式库。

```css
/* for 循环 */
@for $i from 1 to 5 {
    .item-#{$i} {
        border:#{$i}px solid;
    }
}
/* while 循环 */
$i: 6;
@while $i > 0 {
  .item-#{$i} { width: 2em * $i; }
  $i: $i - 2;
}
/* 这里可以对$m进行运算 让它每次都减去2 */
/* each 语法 */
@each $animal in puma, sea-slug, egret, salamander {
  .#{$animal}-icon {
    background-image: url('/images/#{$animal}.png');
  }
}
```

***编译为***

```css
/* for 循环 */
.item-1 {
  width: 2em; }
.item-2 {
  width: 4em; }
.item-3 {
  width: 6em; }

/* while 循环 */
.item-6 {
  width: 12em; }

.item-4 {
  width: 8em; }

.item-2 {
  width: 4em; }

/* each */
.puma-icon {
  background-image: url('/images/puma.png'); }
.sea-slug-icon {
  background-image: url('/images/sea-slug.png'); }
.egret-icon {
  background-image: url('/images/egret.png'); }
.salamander-icon {
  background-image: url('/images/salamander.png'); }
```

## 函数语法

- 注： 函数语法需要配合@return来使用

```css
$grid-width: 40px;
$gutter-width: 10px;

@function grid-width($n) {
  @return $n * $grid-width + ($n - 1) * $gutter-width;
}

#sidebar { width: grid-width(5); }
```

***编译为***

```css
#sidebar {
  width: 240px; }
```

## import导入语法

```css
@import 'other.scss'
```
