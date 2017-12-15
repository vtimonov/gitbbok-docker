# Version 0.1
FROM node:8.9

MAINTAINER Viacheslav Timonov <v.timonov@aimprosoft.com>

RUN wget -nv -O- https://download.calibre-ebook.com/linux-installer.py | python -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"
RUN npm install gitbook-cli -g
RUN gitbook fetch latest

CMD ["/bin/bash"]
