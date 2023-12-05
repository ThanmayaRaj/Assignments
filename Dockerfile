# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

RUN npx playwright install

RUN apt-get update && apt-get -y install libnss3 libatk-bridge2.0-0 libdrm-dev libxkbcommon-dev libgbm-dev libasound-dev libatspi2.0-0 libxshmfence-dev libcups2 libxcomposite1 libxdamage1 libxfixes3 libxrandr2 libx11-xcb1 libxcursor1  libgtk-3-0 libdbus-glib-1-2 

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port that CodeceptJS will use
EXPOSE 3000

# Run CodeceptJS tests when the container starts
CMD ["npm", "test"]