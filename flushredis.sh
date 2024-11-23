#!/bin/sh
redisusage=$(redis-cli info memory | grep 'used_memory:' | sed -r 's/used_memory://')

if [ $redisusage -gt 950000000 ]

then
  date=$(date)
  echo $date $redisusage >>/data/web/magento2/var/log/redis.log
    redis-cli -n 2 flushdb

fi
