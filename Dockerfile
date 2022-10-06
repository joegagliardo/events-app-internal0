# Use base image for NodeJS
FROM node:14-alpine

# Copy application code.
COPY . /app/

# Change the working directory
WORKDIR /app

ARG GOOGLE_CLOUD_PROJECT=roidtc-oct-user500

# Install dependencies.
RUN npm install

# Start the Express app
CMD ["node", "server.js"]
