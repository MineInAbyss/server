#!/bin/sh


# ummmm im going to hell

mkdir /sinkhole
#mount -t nullfs none /sinkhole/

# crontab scheduler.txt
# cron -f

mkdir /sinkhole/upper /sinkhole/work

mkdir /readonly
mount -t overlay overlay -o lowerdir=/cloud,upperdir=/sinkhole/upper,workdir=/sinkhole/work /readonly

ln -s /cloud/worlds/test/world /worlds/test/world
ln -s /readonly/worlds/master/world /worlds/test/master_world

echo "I hate my bones"

sleep 360