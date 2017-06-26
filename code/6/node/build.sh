sudo docker build -t stef/nodeapp ./nodejs
sudo docker build -t stef/nodeapp_redis_base ./redis_base
sudo docker build -t stef/nodeapp_redis_primary ./redis_primary
sudo docker build -t stef/nodeapp_redis_replica ./redis_replica
sudo docker build -t stef/logstash ./logstash
