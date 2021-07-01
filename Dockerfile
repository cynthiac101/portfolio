# getting base image alpine
FROM alpine
MAINTAINER cynthiachia101@gmail.com
EXPOSE 8080
RUN apk update
RUN apk add python2
COPY app/index.html /tmp/index.html
COPY app/start.sh /tmp/start.sh
USER 1000
CMD ["sh","/tmp/start.sh"]