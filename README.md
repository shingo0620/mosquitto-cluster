** Steps 
- Start the services
`docker-compose up -d`
- Publish to master and slave
`./sub.sh`
- Trace the log
`docker logs -f mosquitto-subscriber`

