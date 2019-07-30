FROM node:8
RUN mkdir -p /BLDB-test
WORKDIR /docker-test
COPY . /docker-test
EXPOSE 8081
CMD ["node", "server.js"]

