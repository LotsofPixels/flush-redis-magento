
# Script to flush the redis cache for Magento 2
When the Redis cache has reached it max, the script will flush the page_cache and write an entry in the log

## Installation
Place the script in the root folder and create a cronjob

```
*/15 * * * * /data/web/magento2/flushredis.sh
```

## Configuration

Change the max level of the Redis in the script 


## Authors
[@ReneDonkers](https://www.github.com/lotsofpixels)