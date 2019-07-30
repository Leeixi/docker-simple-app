FROM node:8
RUN mkdir -p /BLDB-test
WORKDIR /docker-test
COPY . /docker-test
WORKDIR /docker-test/src
EXPOSE 8081
CMD ["node", "app.js"]

