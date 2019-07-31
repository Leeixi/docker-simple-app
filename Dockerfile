FROM node:8
RUN mkdir -p /BLDB-test
WORKDIR /docker-test
COPY . /docker-test
WORKDIR /docker-test/src
EXPOSE 1337
CMD ["node", "app.js"]

