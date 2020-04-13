#!/bin/sh

mkdir /worlds

#mount -t nullfs none /sinkhole/
ln -s /tmp /sinkhole

mkdir /sinkhole/upper /sinkhole/work

mkdir /readonly
mount -t overlay overlay -o lowerdir=/cloud,upperdir=/sinkhole/upper,workdir=/sinkhole/work /readonly

# make ls links uwu
ln -s /cloud/$UWU/world /worlds/world
ln -s /readonly/master/world /worlds/master_world

java ${JAVA_ARGS} -Dcom.mojang.eula.agree=true -jar paper.jar --nojline --nogui -W /worlds -p 25565 