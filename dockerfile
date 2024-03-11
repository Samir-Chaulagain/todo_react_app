# Use an official Node runtime as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code to the working directory
COPY . .

# Build your React app
RUN npm run build

# Set environment variables if necessary
# ENV PORT=3000

# Expose the port your app runs on
EXPOSE 3000

# Command to run your app
CMD ["npm", "start"]
