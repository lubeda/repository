#!/usr/bin/with-contenv bash

folder="/data/config"
if [ -d "$folder" ]
then
	echo "$folder found."
else
    echo "$folder not found."
    echo "mkdir"
    mkdir /data/config
    mkdir /data/plugins
    echo "symlink"
    ln -s /data/config /config
    ln -s /data/plugins /plugins
    cp /datastore /data/config
fi
echo "Starting"
java -jar /awtrix.jar

