[![Build Status](https://travis-ci.org/protenhan/rpi-noip-updater-docker.svg?branch=master)](https://travis-ci.org/protenhan/rpi-noip-updater-docker)
[![Docker Stars](https://img.shields.io/docker/stars/protenhan/rpi-noip-updater-docker.svg)](https://hub.docker.com/r/protenhan/rpi-noip-updater-docker/)
[![Docker Pulls](https://img.shields.io/docker/pulls/protenhan/rpi-noip-updater-docker.svg)](https://hub.docker.com/r/protenhan/rpi-noip-updater-docker/)
[![ImageLayers](https://images.microbadger.com/badges/image/protenhan/rpi-noip-updater-docker.svg)](https://microbadger.com/#/images/protenhan/rpi-noip-updater-docker/)

# rpi-noip-updater-docker
Docker container for updating DNS entries at [noip.com](http://noip.com) build for Raspberry Pi.

This container packages the no-ip update script from [@mdmower](https://github.com/mdmower) [https://github.com/mdmower/bash-no-ip-updater](https://github.com/mdmower/bash-no-ip-updater) into an ARM alpine linux container.

[This project at Github](https://github.com/protenhan/rpi-noip-updater-docker/blob/master/README.md)
[This project at Dockerhub](https://hub.docker.com/r/protenhan/rpi-noip-updater-docker/)

## Building the Image

		docker build -t protenhan/rpi-noip-updater-docker .

## Running the Container

All necessary configuration data is passed to the container through environment variables.

		docker run -d \ 
		           -e USERNAME="user@example.org" \ 
		           -e PASSWORD="super_secret_pw"  \ 
				   -e HOST="host.example.org" \ 
				   --name noip-updater \
				   --restart=on-failure \ 
				   protenhan/rpi-noip-updater-docker

### Environment Variables

You can specify the following variables when running the container. Be aware of the quoting e.g. ```USERNAME="user@no-ip.com"```

* ```USERNAME``` Your noip username
* ```PASSWORD``` Your noip password
* ```HOST``` The hostname you want to update. You can specify multiple hosts this way: HOST="host1.domain.org,host2.domain.org"
* ```UPDATE_INTERVAL``` The time interval that the script should update the IP at noip.com. __Default:_ 30 minutes. 
		UPDATE_INTERVAL=30m # 30 minute interval 
		UPDATE_INTERVAL=20 # 20 seconds interval 
		UPDATE_INTERVAL=2h # 2 hour interval
