# docker couchpotato by StudioEtrange

* Run couchpotato inside a docker container built upon debian
* Based on couchpotato github source code
* Choice of couchpotato version
* Use supervisor to manage couchpotato process
* By default couchpotato configuration files will be in /data/couchpotato _(You should map a docker volume to /data)_


## Sample Usage

for running latest couchpotato version :

	docker run -d -v $(pwd):/data -p 5050:5050 studioetrange/docker-couchpotato:latest

then go to http://localhost:5050

It will pull lastest version from docker hub registry.

## Docker tags

Available tag for studioetrange/docker-couchpotato:__TAG__

	latest, 2.6.3, 2.6.2, 2.6.1, 2.6.0, 2.5.2, 2.5.1, 2.4.0, 2.3.1, 2.2.1, 2.2.0, 2.1.0, 2.0.8.1, 2.0.8, 3.0.1, 3.0.0

Current latest tag is version __2.6.3__

## Instruction 

### build from github repository

	git pull https://github.com/StudioEtrange/docker-couchpotato
	cd docker-couchpotato
	docker build -t=studioetrange/docker-couchpotato .

### retrieve image from docker registry

	docker pull studioetrange/docker-couchpotato

### run couchpotato 

	docker run -v DATA_DIR:/data -p COUCHPOTATO_HTTP_PORT:5050 -p SUPERVISOR_HTTP_WEB:9999 studioetrange/docker-couchpotato:COUCHPOTATO_VERSION

### run couchpotato daemonized

	docker run -d -v DATA_DIR:/data -p COUCHPOTATO_HTTP_PORT:5050 -p SUPERVISOR_HTTP_WEB:9999 studioetrange/docker-couchpotato:COUCHPOTATO_VERSION

### run a shell inside this container (without couchpotato running)

	docker run -i -t studioetrange/docker-couchpotato bash

## Access points

### sabnzbd

	http://localhost:COUCHPOTATO_HTTP_PORT/
	
### supervisor

	http://localhost:SUPERVISOR_HTTP_WEB/


## Notes on Github / Docker Hub Repository

* This github repository is linked to an automated build in docker hub registry.

	https://hub.docker.com/r/studioetrange/docker-couchpotato/

* _update.sh_ is only an admin script which update and add new versions. This script do not auto create missing tag in docker hub webui. It is only for admin/owner purpose.
