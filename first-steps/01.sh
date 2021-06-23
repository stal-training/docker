# playgrounds
https://www.docker.com/play-with-docker
https://labs.play-with-docker.com/
https://www.katacoda.com/courses/docker

# commands
docker run hello-world
docker run debian echo "Hello World"
docker run -i -t debian /bin/bash
docker run -h CONTAINER -i -t debian /bin/bash
root@CONTAINER:/# mv /bin /basket
root@CONTAINER:/# ls
docker inspect CONTAINER_ID
docker inspect CONTAINER_ID | grep IPAddress
docker inspect --format {{.NetworkSettings.IPAddress}} CONTAINER_ID
docker diff CONTAINER_ID
docker logs CONTAINER_ID

docker ps -aq -f status=exited
docker rm $(docker ps -aq -f status=exited)
docker container prune



