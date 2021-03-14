FROM node:15-alpine

# Create app directory
# Equivalent de : cd /usr/src/app
WORKDIR /usr/src/app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy app source into the container
COPY . .

EXPOSE 1337
CMD [ "node", "app.js" ]
