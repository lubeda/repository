#!/usr/bin/with-contenv bashio

bashio::log.info "Addon Version 0.1.5 (awtrix 2.0 stable)"

folder="/data/config"

if [ -d "$folder" ]
then
	bashio::log.info "$folder found."
else
    bashio::log.info  "$folder not found."
    mkdir /data/config
    mkdir /data/plugins
    ln -s /data/config /config
    ln -s /data/plugins /plugins
    cp /datastore /data/config
fi
file="/data/logs.txt"

if [ -f "$file" ]
then
    bashio::log.info "$file exists"
else
    bashio::log.info "create logs.txt"
    touch $file
fi

if bashio::config.exists 'lang'; then
    lang=$(bashio::config 'lang')
    bashio::log.info "Setting lang to ${lang}..."
    export LANG=${lang}
fi

cd /data
bashio::log.info "Starting awtrix..."
/usr/bin/java -jar /awtrix.jar &
tail -f $file


