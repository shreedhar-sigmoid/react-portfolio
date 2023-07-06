# Use an official Ubuntu image as the base
FROM ubuntu

# Update the package list
RUN apt update

# Install npm
RUN apt install -y npm

# Install npm packages
RUN npm install

# exposing the port
EXPOSE 3000

# Set the command to run when the container starts
ENTRYPOINT ["npm", "start"]
