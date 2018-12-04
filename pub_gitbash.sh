#!/bin/sh

winpty docker run -it --rm \
--network mosquitto-cluster_mqtt \
efrecon/mqtt-client pub -h master -t hello -m "HELLO Master"

winpty docker run -it --rm \
--network mosquitto-cluster_mqtt \
efrecon/mqtt-client pub -h slave -t hello -m "HELLO Slave"