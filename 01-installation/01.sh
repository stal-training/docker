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

# instructions from linuxacademy for centos-7
Prerequisites
Uninstall old versions:

sudo yum remove -y docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine
Install Docker CE
Add the Utilities needed for Docker:

sudo yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2
Set up the stable repository:

sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
Install Docker CE:

sudo yum -y install docker-ce
Enable and start Docker:

sudo systemctl start docker && sudo systemctl enable docker
Add cloud_user to the docker group:

sudo usermod -aG docker cloud_user

# for windows
https://docs.docker.com/docker-for-windows/install/

# for mac
https://docs.docker.com/docker-for-mac/install/