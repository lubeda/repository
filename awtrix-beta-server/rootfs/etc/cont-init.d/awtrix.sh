#!/usr/bin/with-contenv bashio

bashio::log.info "Addon Version 0.2.3 (Awtrix 2.0 beta)"

folder="/share/Awtrix"
settingsfile="/share/Awtrix/config/settings.json"

if bashio::fs.directory_exists "${folder}"; then
	bashio::log.info "$folder found."
else
    bashio::log.info  "$folder not found."
    mkdir /share/Awtrix
fi 

#if bashio::fs.directory_exists "${folder}/config"; then
#     echo "$folder/config already there"
#else
#    mkdir /share/Awtrix/config
#fi

#if bashio::fs.file_exists "${settingsfile}"; then
#     echo "$settingsfile already there > merging"
#     jq -s 'add' $settingsfile /data/options.json > $settingsfile
#else
#     cp /data/options.json $settingsfile
#     echo "initial $settingsfile copied"
#fi
#chmod 0666 $settingsfile

if bashio::config.exists 'lang'; then
    lang=$(bashio::config 'lang')
    bashio::log.info "Setting lang to ${lang}..."
    export LANG=${lang}
fi

cd $folder

bashio::log.info "Starting awtrix..."
exec /usr/bin/java -jar /awtrix.jar --logger=stdout &


