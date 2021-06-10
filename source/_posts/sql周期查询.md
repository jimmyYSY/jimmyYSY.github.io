---
title: sql周期查询
date: 2021-06-10 15:54:35
categories:
- linux
tags:
- mysql
- linux
---

## 按时间查询sql

- 当天数据

``` sql
SELECT * FROM 'table' WHERE date(`create_time`) = curdate();
```

- 昨日数据

``` sql
SELECT * FROM 'table' WHERE DATE_SUB(CURDATE(), INTERVAL 1 DAY) <= date(`create_time`);
```

- 近7日数据

``` sql
SELECT * FROM 'table' WHERE DATE_SUB(CURDATE(), INTERVAL 7 DAY) <= date(`create_time`);
```

- 时间段数据

``` sql

SELECT * FROM 'table' WHERE create_time between 'startTime' and 'endTime';
```

- 自然周数据

``` sql
SELECT * FROM 'table' WHERE YEARWEEK(date_format(`create_time`, '%Y-%m-%d')) = YEARWEEK(now());
```

- 自然月数据

``` sql
SELECT * FROM 'table' WHERE date_format(`create_time`,'%Y-%m')=date_format(now(),'%Y-%m');
```

## 结语
