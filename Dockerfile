# Base image
FROM node:14-alpine

# Create app directory
WORKDIR /usr/src/app

# Install dependencies
RUN apk add --no-cache ffmpeg sox graphicsmagick && \
    npm install subtitle && \
    npm install gm

# Expose the port used by the app
EXPOSE 3000

# Start the app
CMD [ "node", "main.js" ]
