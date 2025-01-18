# https://browsersync.io/

# Use the official Node.js image as a base
FROM node:14

# Set the working directory
WORKDIR /app

# Install BrowserSync globally
RUN npm install -g browser-sync

# Copy the code into the container
COPY ./code/ /app

# Expose the port that BrowserSync will run on
EXPOSE 3000

# Expose the port that BrowserSync UI will run on
EXPOSE 3001

# Command to run BrowserSync
CMD ["browser-sync", "start", "--server", "--files", "*.html", "--host", "0.0.0.0", "--port", "3000", "--ui-port", "3001", "--no-open"]
