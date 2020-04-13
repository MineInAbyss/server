#!/bin/sh



mkdir /sinkhole
#mount -t nullfs none /sinkhole/
mkdir /sinkhole/upper /sinkhole/workdir

mkdir /readonly
mount -t overlay overlay -o lowerdir=/cloud,upperdir=/sinkhole/upper,workdir=/sinkhole/work /readonly



ln -s /cloud/worlds/$UWU/world /worlds/world
# use 
ln -s /readonly/worlds/master/world /worlds/master_world



java ${JAVA_ARGS} -Dcom.mojang.eula.agree=true -jar paper.jar --nojline --nogui -W /worlds -p 25565 