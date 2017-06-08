FROM mdillon/postgis:9.6

# Use local cached debs from host (saves your bandwidth!)
# Change ip below to that of your apt-cacher-ng host
# Or comment this line out if you do not with to use caching
ADD 71-apt-cacher-ng /etc/apt/apt.conf.d/71-apt-cacher-ng

RUN apt-get update && apt-get -y install git build-essential make postgresql-server-dev-9.6 wget 

ENV CPPFLAGS=-fPIC

#Compiling & Installing MongoDB Forwarder module
RUN git config --global http.sslverify false && \
        mkdir -p /home/root && cd /home/root && git clone https://github.com/EnterpriseDB/mongo_fdw.git --depth=1  && cd /home/root/mongo_fdw/ && ./autogen.sh --with-legacy && make install




