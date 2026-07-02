FROM node:24.12.0

# App directory
WORKDIR /calendar

# Copy package files and install dependencies
COPY package.json ./
RUN npm install

# Copy app source
COPY server.js ./
COPY views ./views

# Expose app port
EXPOSE 5000

# Start app
CMD ["node", "server.js"]
