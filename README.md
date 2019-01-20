# Redis Cluster集群搭建教程

Redis版本基于5.0

[集群工作原理](https://mp.weixin.qq.com/s?__biz=MzU4ODM1NjY5NQ==&mid=2247483711&idx=1&sn=a2750edad63b08fb31858f0a999e35af&chksm=fddf4c07caa8c511402c2875421d719b1d3fc873b9d55f2387e6b41f28b877e3693131e12b38&token=1103528493&lang=zh_CN#rd)

## 工具准备
redis-server工具
redis-cli工具

工具可以去github上的redis项目拉取代码编译获取，此处不再讲述，可以自行谷歌

## 实例配置准备
1. 创建9个文件夹，如代码中的7001-7009文件夹，每个文件文件夹中包含一个公共redis配置文件(这个配置文件可以放置在公共目录下)和每一个实例的配置文件
2. 准备一个启动脚本(start-redis-cluster.sh)，一次性启动9个Redis实例

## 集群搭建
### 初始化
初始化的的集群配置为三主三从
```bash
# -a指定密码
# --cluster-replicas 指定每一个主节点有一个从节点
redis-cli --cluster create 127.0.0.1:7001 127.0.0.1:7003 127.0.0.1:7005 127.0.0.1:7002 127.0.0.1:7004 127.0.0.1:7006 --cluster-replicas 1 -a 123456
```
再加入三个节点作为7005节点的从节点
```bash
redis-cli --cluster add-node 127.0.0.1:7007  127.0.0.1:7005 --cluster-slave --cluster-master-id <7005的NodeId> -a 123456
redis-cli --cluster add-node 127.0.0.1:7008  127.0.0.1:7005 --cluster-slave --cluster-master-id <7005的NodeId> -a 123456
redis-cli --cluster add-node 127.0.0.1:7009  127.0.0.1:7005 --cluster-slave --cluster-master-id <7005的NodeId> -a 123456
```

## 更多
**更多Redis学习内容请关注图片中的公众号**
![kPuJRH.jpg](https://s2.ax1x.com/2019/01/20/kPuJRH.jpg)