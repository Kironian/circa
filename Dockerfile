# Use an official Node.js runtime as a parent image
FROM node:14.x
ENV NODE_ENV production

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port that the app will listen on
EXPOSE 3000

# Start the app
CMD ["node", "start"]
