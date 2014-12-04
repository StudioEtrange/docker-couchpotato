# docker couchpotato by StudioEtrange

* Run couchpotato inside a docker container built upon debian
* Based on couchpotato github source code
* Choice of couchpotato version
* Use supervisor to manage couchpotato process
* By default couchpotato configuration files will be in /data/couchpotato


## Sample Usage

for running couchpotato version 2.6.1 :

	docker run -d -v $(pwd):/data -p 5050:5050 studioetrange/docker-couchpotato:2.6.1

then go to http://localhost:5050

## Version and Tag

* Each tag is a different version of couchpotato
* latest is the latest stable sabznbd couchpotato available through this repository
* dev is the development version from couchpotato git repository. But you should build the image yourself OR use /opt/couchpotato-update.sh to have an uptodate image.

## Instruction 

### build from github source

	git pull https://github.com/StudioEtrange/docker-couchpotato
	cd docker-couchpotato
	docker build -t=studioetrange/docker-couchpotato .

### retrieve image from docker registry

	docker pull studioetrange/docker-couchpotato

### run couchpotato 

	docker run -v DATA_DIR:/data -p COUCHPOTATO_HTTP_PORT:5050 -p SUPERVISOR_HTTP_WEB:9999 studioetrange/docker-couchpotato:COUCHPOTATO_VERSION

### run couchpotato daemonized

	docker run -d -v DATA_DIR:/data -p COUCHPOTATO_HTTP_PORT:8080 -p SUPERVISOR_HTTP_WEB:9999 studioetrange/docker-couchpotato:COUCHPOTATO_VERSION


### run a shell inside this container (without couchpotato running)

	docker run -i -t studioetrange/docker-couchpotato

## Access point

### Sabnzbd

	Go to http://localhost:COUCHPOTATO_HTTP_PORT/
	
### Supervisor

	Go to http://localhost:SUPERVISOR_HTTP_WEB/
