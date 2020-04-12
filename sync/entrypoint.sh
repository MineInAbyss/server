#!/bin/sh
crontab scheduler.txt
cron -f

mkdir -p /diff/upper /diff/work

mkdir /readonly
mount -t overlay overlay -o lowerdir=/worlds,upperdir=/diff/upper,workdir=/diff/work /readonly


echo "I hate my bones"