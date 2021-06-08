---
title: node-core
date: 2021-06-08 22:23:53
categories:
- node
tags:
- node node-cron
---

## node定时任务

* node程序配置定时任务需要安装插件 [node-cron](https://www.npmjs.com/package/node-cron)

## 下载node-cron

``` bash
npm i node-cron --save -g
```

## 使用node-cron

``` javaScript
var cron = require('node-cron');
cron.schedule('* * * * *', () => {
  console.log('running a task every minute');
});
```

## 代码详解

* 引用node-cron

``` JavaScript
var cron = require('node-cron');
```

## 如何使用

``` javaScript
cron.schedule('* * * * * *', () => {
  console.log('running a task every minute');
});
// * * * * * * 分别对应从前到后 秒 分 时 每月的某一天 月 每星期的某一天
//如上代码所示：
//每秒钟执行一次console.log()
```

## 其他使用方式

* node-cron 的时间表示方式还有其他实现方式

``` javaScript
//每小时的1-5分钟持续执行
cron.schedule('1-5 * * * *', () => {
  console.log('running every minute to 1 from 5');
});
//每两分钟执行一次
cron.schedule('*/2 * * * *', () => {
  console.log('running a task every two minutes');
});
//月份及工作日可使用英文
cron.schedule('* * * January,September Sunday', () => {
  console.log('running on Sundays of January and September');
});
//也可使用引文简称
cron.schedule('* * * Jan,Sep Sun', () => {
  console.log('running on Sundays of January and September');
});
```

## 内置的其他方法

* node-cron 内置共有三个参数

|  参数   | 内容         | 类型    |
|------- | -------------|-------- |
| 表达式  |（* * * * *）  | String  |
| 功能    | function(){} | Function|
| options| 配置项        | Object  |

* 配置项为

** scheduled: 设置任务是否以启用，默认为true

** timezone: 配置任务执行时间所在时区

* start
  
启动方法

``` javaScript
var cron = require('node-cron');

var task = cron.schedule('* * * * *', () =>  {
console.log('stopped task');
}, {
scheduled: false
});

task.start();
```

* stop
  
  停止方法，除非手动重启任务，否则任务不会继续执行

``` javaScript
var cron = require('node-cron');

var task = cron.schedule('* * * * *', () =>  {
  console.log('will execute every minute until stopped');
});

task.stop();
```

* destroy

  任务销毁方法，任务将被停止，并完全销毁，可以通过重新启动来继续任务

``` javaScript
var cron = require('node-cron');

var task = cron.schedule('* * * * *', () =>  {
  console.log('will not execute anymore, nor be able to restart');
});

task.destroy();
```

* validate

 验证表达式方法，用来验证表达式是否可用

``` javascript
var cron = require('node-cron');

var valid = cron.validate('59 * * * *');
var invalid = cron.validate('60 * * * *');
```

## 结语

* 关于node定时器的使用基本上就时这些了，因为目前来说node的各种生态及插件已经非常完善了。所以node也可以用来做一些关于shell的定时任务，或者定时备份恢复数据库等操作
