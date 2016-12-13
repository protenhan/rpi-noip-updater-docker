# rpi-noip-updater-docker
Docker container for updating DNS entries at No-ip.com build for Raspberry Pi


## Building the Image

		docker build -t protenhan/rpi-noip-updater-docker .

## Running the Container

All necessary configuration data is passed to the container through environment variables.

		docker run -d -e USERNAME="user@example.org" -e PASSWORD="super_secret_pw" -e HOST="host.example.org" --name noip-updater --restart=on-failure protenhan/rpi-noip-updater-docker

