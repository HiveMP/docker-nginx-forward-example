FROM ubuntu

ENV REFRESHED_AT 2015-01-19

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN /usr/bin/npm install ws

RUN apt-get install -y curl

EXPOSE 8080
ADD server.js /root/server.js
ENTRYPOINT ["/usr/bin/node", "/root/server.js"]