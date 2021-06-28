mkdir cowsay
cd cowsay
touch Dockerfile

FROM debian:wheezy
RUN apt-get update && apt-get install -y cowsay fortune

ls
Dockerfile

docker build -t test/cowsay-dockerfile .
docker run test/cowsay-dockerfile /usr/games/cowsay "Moo"


