#!/bin/sh
while true ; do echo "Running backup" && aws s3 sync /cloud s3://mine-in-abyss-worlds && sleep $PERIOD ; done
