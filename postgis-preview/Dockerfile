FROM  node:latest

# Clone the git reposity of postgis-preview
WORKDIR /
RUN git clone --depth 1  https://github.com/NYCPlanning/postgis-preview.git

# Install app dependencies
RUN cd /postgis-preview; npm install

EXPOSE  4000
WORKDIR /postgis-preview
CMD ["node", "server.js"]
