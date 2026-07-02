FROM nodered/node-red:latest

# Switch to root to install packages
USER root

# Install useful packages
RUN apk add --no-cache \
    bash \
    git \
    curl

# Copy Node-RED project files
COPY app/ /data/

# Set permissions
RUN chown -R node-red:node-red /data

# Switch back to Node-RED user
USER node-red

# Expose Node-RED port
EXPOSE 1880

# Start Node-RED
CMD ["npm", "start", "--", "--userDir", "/data"]
