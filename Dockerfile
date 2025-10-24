# Use official Node.js LTS image
FROM node:18

# Set working directory inside container
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy project files
COPY . .

# Expose port for Node.js API
EXPOSE 3000

# Start the API
CMD ["npm", "start"]
