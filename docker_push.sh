#!/bin/bash
sudo mkdir -p /etc/docker/certs.d/116.202.28.78:5000
sudo chmod -R 700 /etc/docker/certs.d/116.202.28.78:5000
sudo cp ca.crt /etc/docker/certs.d/116.202.28.78:5000
echo "$DOCKER_PASS" | docker login -u "$DOCKER_USERNAME" --password-stdin https://116.202.28.78:5000/
docker tag docker-test 116.202.28.78:5000/docker-test
docker push docker-test 116.202.28.78:5000/docker-test
