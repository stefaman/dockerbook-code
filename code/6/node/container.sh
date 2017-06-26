#! /bin/bash

sudo docker network create nodeapp
# primary redis
sudo docker run -d --name redis_primary \
    --net nodeapp stef/nodeapp_redis_primary

#replica redis
sudo docker run -d --name redis_replica_1 \
    --net nodeapp \
    stef/nodeapp_redis_replica \
    --logfile /var/log/redis/redis-replica_1.log

sudo docker run -d --name redis_replica_2 \
    --net nodeapp \
    stef/nodeapp_redis_replica \
    --logfile /var/log/redis/redis-replica_2.log
    
# node server
sudo docker run -d --name nodeapp \
    --net nodeapp \
    -p 8080:3000 \
    stef/nodeapp

# logstash
sudo docker run -d  --name logstash \
    --volumes-from nodeapp \
    --volumes-from redis_primary \
    --volumes-from redis_replica_1 \
    stef/logstash