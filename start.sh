#! /bin/sh 

while true; do 
    /bash-no-ip-updater/noipupdater.sh
    sleep $UPDATE_INTERVAL 
done
