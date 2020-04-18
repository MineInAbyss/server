#!/bin/bash
while true
	do echo "Running backup"
	aws s3 sync --no-follow-symlinks /cloud s3://mine-in-abyss-worlds
	sleep $PERIOD
done
