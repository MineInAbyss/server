#!/bin/sh



mkdir /sinkhole
#mount -t nullfs none /sinkhole/

mkdir /sinkhole/upper /sinkhole/workdir

mkdir /readonly
mount -t overlay overlay -o lowerdir=/cloud,upperdir=/sinkhole/upper,workdir=/sinkhole/work /readonly


# make ls links uwu
ln /cloud/$UWU/world /worlds/world
ln /readonly/master/world /worlds/master_world

java ${JAVA_ARGS} -Dcom.mojang.eula.agree=true -jar paper.jar --nojline --nogui -W /worlds -p 25565 