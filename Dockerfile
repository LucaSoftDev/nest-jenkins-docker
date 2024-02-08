# Use an official Node.js runtime as the base image
FROM node:20

# Set the working directory in the container to /app
WORKDIR /app

# Install the application dependencies
# Note: This is done before copying the rest of the application code to take advantage of Docker layer caching and speed up build times
COPY package*.json ./
RUN npm install

# Make port 3000 available to the outside of the container
EXPOSE 3000