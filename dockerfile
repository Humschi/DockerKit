#https://github.com/dunklesToast/DockerKit
FROM mhart/alpine-node:latest

RUN apk --no-cache --no-progress add git && \
cd /tmp && \
git clone https://github.com/Humschi/DockerKit && \
cd DockerKit && \
chmod a+x start.sh && \
npm install

# Entry point
ENTRYPOINT ["/tmp/DockerKit/start.sh"]