#!/bin/bash

docker login -u opendnd
cat build-command | while read LINE;
do
	echo $LINE
	eval $LINE
done
