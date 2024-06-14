#!/usr/bin/with-contenv bashio

SERVER_URL=$(bashio::config 'server_url')
TOKEN=$(bashio::config 'token')
USER=$(bashio::config 'user')
CLIENT_NAME=$(bashio::config 'client_name')

wget https://github.com/boringproxy/boringproxy/releases/download/v0.10.0/boringproxy-linux-arm
mv boringproxy* boringproxy
chmod +x boringproxy
./boringproxy client -server ${SERVER_URL} -token ${TOKEN} -user ${USER} -client-name ${CLIENT_NAME}
