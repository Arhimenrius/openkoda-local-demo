#!/bin/sh

# Generate cert
docker compose up cert_generator

# Clone Openkoda
DIR="openkoda"
if [ ! -d "$DIR" ]; then
  git clone git@github.com:openkoda/openkoda.git
fi

docker compose up -d database
docker compose run openkoda java -Dloader.path=/BOOT-INF/classes -Dspring.profiles.active=openkoda,drop_and_init_database -jar /usr/src/openkoda/openkoda/build/openkoda-1.4.1.jar --server.port=8030 --spring.datasource.username=postgres  --spring.datasource.password=openkoda --spring.datasource.url=jdbc:postgresql://database:5432/openkoda

docker down database

# Add entries to /etc/hosts
DOMAINS="dbui.demo.test openkoda.demo.test"

set -- $DOMAINS
while [ -n "$1" ]; do
  if [ ! -n "$(grep $1 /etc/hosts)" ];then
    echo "127.0.0.1 $1" | sudo tee -a /etc/hosts
  fi
  shift
done