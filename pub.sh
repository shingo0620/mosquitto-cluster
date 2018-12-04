#!/bin/sh

docker run -it --rm \
--network mosquitto_mqtt \
efrecon/mqtt-client pub -h master -t hello -m "HELLO Master"

docker run -it --rm \
--network mosquitto_mqtt \
efrecon/mqtt-client pub -h slave -t hello -m "HELLO Slave"