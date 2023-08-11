FROM node:20.3.1-bookworm-slim

RUN apt-get update && \
	apt-get install -y git

RUN	cd ~/ && git clone https://github.com/Integrity-Ltd/powermeter-utils.git && cd ~/powermeter-utils && npm install

RUN cd ~/ && git clone https://github.com/Integrity-Ltd/powermeter-timed-service.git && cd ~/powermeter-timed-service && npm install

RUN cd ~/ && git clone https://github.com/Integrity-Ltd/powermeter-api.git && cd ~/powermeter-api && npm install

RUN cd ~/ && git clone https://github.com/Integrity-Ltd/powermeter-admin.git && cd ~/powermeter-admin && npm install

COPY start.sh /root/start.sh

ENV NODE_ENV docker

CMD sh /root/start.sh

EXPOSE 8080 3000
