# Use the official node image with the latest version 
FROM node:18

# Set the working directory for the application
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock)
COPY package*.json ./

# Install dependencies
RUN npm install  

# Copy the entire project directory
COPY . .

# Build the production application
RUN npm run build

# Expose port 3000 where the Next.js application runs
EXPOSE 3000

# Start the Next.js server
CMD [ "npm", "run" ,"start" ]
