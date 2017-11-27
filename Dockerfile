FROM alpine:latest

LABEL maintainer="imquanquan <imquanquan99@gmail.com>"

RUN apk update && apk add --no-cache mod_dav_svn subversion && rm -rf /var/cache/apk/* && \
	mkdir /srv/svn

ADD run.sh /
RUN chmod +x run.sh

EXPOSE 3690

CMD ["/run.sh"]
