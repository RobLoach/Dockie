# Forge: Node
FROM robloach/forge
MAINTAINER Rob Loach <robloach@gmail.com>

# Install software-properties-common for add-apt-repository
RUN apt-get install -y -q software-properties-common

# Use Chris Lea's PPA for Node.js
RUN add-apt-repository ppa:chris-lea/node.js -y
RUN apt-get update -y
RUN apt-get install nodejs -y

# Node packages
RUN npm install -g coffee-script
RUN npm install -g bower
RUN npm install -g grunt-cli
RUN npm install -g gulp
RUN npm install -g component

# Mount the app directory.
VOLUME ["/app"]

# Define working directory.
WORKDIR /app

# Expose any serviced ports
EXPOSE 22
CMD ["supervisord", "-n"]
