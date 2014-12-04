FROM studioetrange/docker-debian:wheezy
MAINTAINER StudioEtrange <nomorgan@gmail.com>

# COUCHPOTATO install -------------
ENV COUCHPOTATO_VERSION 2.6.1

WORKDIR /opt/couchpotato
RUN curl -k -SL "https://github.com/RuudBurger/CouchPotatoServer/archive/build/$SABNZBD_VERSION.tar.gz" \
	| tar -xzf - -C /opt/couchpotato --strip-components=1

# SUPERVISOR -------------
COPY supervisord-couchpotato.conf /etc/supervisor/conf.d/supervisord-couchpotato.conf

# Supervisord web interface -------
EXPOSE 9999
# couchpotato http port
EXPOSE 5050

# run command by default
CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf", "-n"]
