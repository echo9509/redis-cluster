#!/bin/bash
cd /opt/redis-cluster/7001/
redis-server ./redis.conf
cd /opt/redis-cluster/7002/
redis-server ./redis.conf
cd /opt/redis-cluster/7003/
redis-server ./redis.conf
cd /opt/redis-cluster/7004/
redis-server ./redis.conf
cd /opt/redis-cluster/7005/
redis-server ./redis.conf
cd /opt/redis-cluster/7006/
redis-server ./redis.conf
cd /opt/redis-cluster/7007/
redis-server ./redis.conf
cd /opt/redis-cluster/7008/
redis-server ./redis.conf
cd /opt/redis-cluster/7009/
redis-server ./redis.conf
echo "redis server instance start"
