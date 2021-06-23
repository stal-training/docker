# for linux
curl https://get.docker.com > /tmp/install.sh
cat /tmp/install.sh
DRY_RUN=1 sh /tmp/install.sh
chmod +x /tmp/install.sh
/tmp/install.sh

sestatus
sudo setenforce 0

sudo usermod -aG docker $USER
sudo service docker restart

docker version

logout / su -s ${USER}

# for windows
https://docs.docker.com/docker-for-windows/install/

# for mac
https://docs.docker.com/docker-for-mac/install/