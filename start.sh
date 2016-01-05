#!/bin/env bash

if [ ! -f /opt/graphite/conf/carbon.conf ];
then
	echo "Please create graphite confs in /opt/graphite/conf"
	echo "And create the webapp database"
	exit
fi

echo "Launching supervisord"
exec /usr/local/bin/supervisord -c /etc/supervisord.conf -l /opt/graphite/storage/supervisord.log



