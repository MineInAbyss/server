#!/bin/sh
echo "make tmp dir"
mkdir -p /diff/upper /diff/work /worlds

echo "mount them"
mount -t overlay overlay -o lowerdir=/base,upperdir=/diff/upper,workdir=/diff/work /worlds

# crontab scheduler.txt
# cron -f
echo "run minecraft"
java ${JAVA_ARGS} -Dcom.mojang.eula.agree=true -jar paper.jar --nojline --nogui -W /worlds -p 25565 