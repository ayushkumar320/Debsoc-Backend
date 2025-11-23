# Use Node.js 20 Alpine as the base image
FROM node:20-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Copy Prisma schema for postinstall script
COPY src/prisma ./src/prisma

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Generate Prisma client
RUN DATABASE_URL="postgresql://dummy:dummy@localhost:5432/dummy" npx prisma generate --schema=./src/prisma/schema.prisma

# Build the TypeScript application
RUN DATABASE_URL="postgresql://dummy:dummy@localhost:5432/dummy" npm run build

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
