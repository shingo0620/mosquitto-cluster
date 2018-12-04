#!/bin/sh

docker run -it --rm \
--network mosquitto-cluster_mqtt \
efrecon/mqtt-client pub -h master -t message -m "HELLO Master"

docker run -it --rm \
--network mosquitto-cluster_mqtt \
efrecon/mqtt-client pub -h slave -t message -m "HELLO Slave"