#!/usr/bin/with-contenv bash

folder="/data/config"
if [ -d "$file" ]
then
	echo "$file found."
else
    echo "$file not found."
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

