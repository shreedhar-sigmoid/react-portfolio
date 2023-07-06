# Use an official Ubuntu image as the base
FROM ubuntu

# Update the package list
RUN apt update

# Install npm
RUN apt install -y npm

# Create a directory for the React app
RUN mkdir /react

# Set the working directory to the React app directory
WORKDIR /react

# Add the React code to the image
ADD react-portfolio .

# Install npm packages
RUN npm install

# exposing the port
EXPOSE 3000

# Set the command to run when the container starts
ENTRYPOINT ["npm", "start"]
