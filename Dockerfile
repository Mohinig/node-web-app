FROM node:12

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN npm install

# Copying rest of the application to app directory
COPY . .

# Expose the port and start the application
EXPOSE 8081

CMD ["node","server.js"] 