# Version 0.2
FROM node:8.9

MAINTAINER Viacheslav Timonov <v.timonov@aimprosoft.com>

RUN apt-get update
RUN apt-get install -y calibre
RUN npm install gitbook-cli -g
RUN gitbook fetch latest

CMD ["/bin/bash"]
