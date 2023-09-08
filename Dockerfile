# Use the official Node.js Alpine image as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the application code to the working directory
COPY . .

# Expose the port your application listens on (replace 3000 with the actual port)
EXPOSE 3000

# Start your Node.js application
CMD ["node", "server.js"]
