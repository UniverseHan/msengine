#!bin/bash
cd `dirname $0`

git pull
docker build -t universehan/msengine .
docker stop msengine-server
docker rm msengine-server
docker run -d --name msengine-server -p 8000:3000 universehan/msengine
