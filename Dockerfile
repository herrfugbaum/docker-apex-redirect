# Set the base image
FROM node:8
# Set working directory
WORKDIR /app
# Copy the current directory in the container at /app
COPY . /app
# Set up environment variables
ENV PORT=3000 \
  REDIRECT_STATUS_CODE=301 \
  REDIRECT_URI=https://www.example.org
# Declare the port the application will be listening on
EXPOSE $PORT
# Install Node Process Manager
RUN npm install -g nodemon
# Install Dependencies
RUN npm install
# Start the application
CMD ["nodemon", "server.js"]