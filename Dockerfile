# Use official Node.js LTS version
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy app source
COPY . .

# App listens on port 3000
EXPOSE 8080

# Start the app
CMD ["npm", "start"]

