# Use official Node.js base image
FROM node:22-alpine


# Set working directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app files
COPY . .

# Expose app port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
