FROM stef/nodeapp_redis_base
MAINTAINER James Turnbull <james@example.com>
ENV REFRESHED_AT 2016-06-01

# ENTRYPOINT [ "redis-server", "--protected-mode no", "--logfile /var/log/redis/redis-replica.log", "--slaveof redis_primary 6379" ]
ENTRYPOINT [ "redis-server", "--protected-mode no", "--slaveof redis_primary 6379" ]
