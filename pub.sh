#!/bin/sh

docker run -it --rm \
--network mosquitto-cluster_mqtt \
efrecon/mqtt-client pub -h master -t master/message -m "HELLO Master"

docker run -it --rm \
--network mosquitto-cluster_mqtt \
efrecon/mqtt-client pub -h slave1 -t slave1/message -m "HELLO Slave1"

docker run -it --rm \
--network mosquitto-cluster_mqtt \
efrecon/mqtt-client pub -h slave2 -t slave2/message -m "HELLO Slave2"
