# Use Node.js 20 (Alpine is a lightweight Linux)
FROM node:20-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if exists)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all project files
COPY . .

# Expose port 3000
EXPOSE 3000

# Command to start the app
CMD ["npm", "start"]


