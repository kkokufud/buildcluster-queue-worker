FROM node:12

# Screwdriver Queue Worker Version
ARG VERSION=latest

# Create our application directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install Screwdriver build cluster queue worker
RUN npm install screwdriver-buildcluster-queue-worker@$VERSION --no-package-lock
WORKDIR /usr/src/app/node_modules/screwdriver-buildcluster-queue-worker

# Run the service
CMD [ "npm", "start" ]
