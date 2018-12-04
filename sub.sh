#!/bin/sh

docker run -it --link mqtt-master:mqtt-master --rm --name=mqtt-sub efrecon/mqtt-client sub -h mqtt-master -t "#" -v
exit 0
