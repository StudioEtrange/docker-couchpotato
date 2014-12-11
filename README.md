# docker couchpotato by StudioEtrange

* Run couchpotato inside a docker container built upon debian
* Based on couchpotato github source code
* Choice of couchpotato version
* Use supervisor to manage couchpotato process
* By default couchpotato configuration files will be in /data/couchpotato


## Sample Usage

for running latest couchpotato version :

	docker run -d -v $(pwd):/data -p 5050:5050 studioetrange/docker-couchpotato:latest

then go to http://localhost:5050

## Version and Tag

* docker-tag:latest or github-branch:master --> latest stable sabznbd couchpotato version available through this repository
* docker-tag:X.X.X or github-branch:X.X.X --> couchpotato version X.X.X
* docker-tag:dev or github-branch:dev --> development version from couchpotato git repository
** In this case, to have an uptodate image, you should
*** build the docker image yourself (see build from github souce below)
*** OR launch in the container the script /opt/couchpotato-update.sh


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

	http://localhost:COUCHPOTATO_HTTP_PORT/
	
### Supervisor

	http://localhost:SUPERVISOR_HTTP_WEB/
