FROM studioetrange/docker-debian:wheezy
MAINTAINER StudioEtrange <nomorgan@gmail.com>

# COUCHPOTATO install -------------
ENV COUCHPOTATO_VERSION build/2.0.8.1

WORKDIR /opt/couchpotato
RUN curl -k -SL "https://github.com/RuudBurger/CouchPotatoServer/archive/$COUCHPOTATO_VERSION.tar.gz" \
	| tar -xzf - -C /opt/couchpotato --strip-components=1

# SUPERVISOR -------------
COPY supervisord-couchpotato.conf /etc/supervisor/conf.d/supervisord-couchpotato.conf

# DOCKER -------------
VOLUME /data

# Supervisord web interface -------
EXPOSE 9999
# couchpotato http port
EXPOSE 5050

# run command by default
CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf", "-n"]
