FROM debian

MAINTAINER Stal Zhanybek uulu <stal.zhanybek.uulu@epam.com>
RUN apt-get update && apt-get install -y cowsay fortune
COPY entrtypoint.sh /

ENTRYPOINT ["/entrtypoint.sh"]
