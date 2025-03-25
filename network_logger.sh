#!/bin/bash

NETWORKLOG_DIR=network_logs

if [ ! -d "network_logs" ]; then
	mkdir "network_logs"
fi

ifconfig >> "${NETWORKLOG_DIR}/network_stats_$(date +'%Y-%m-%d_%H-%M').log"
tar -czvf network_logs.tar.gz network_logs
echo "network stats has been logged and archived"





