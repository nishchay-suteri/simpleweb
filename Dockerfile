# Specify a base image
FROM node:alpine
# NOTE: "alpine" keyword in "node:alpine" is NOT related to the alpine base image which we were using
# "node:alpine" refers to the alpine version of node base image
# "alpine" version means the minimal version of node.

# Specify Working Directory inside container
WORKDIR /usr/app
# NOTE: WORKDIR <container_workind_directory>
# Now, all the following commands after this command will be executed relative to container_working_directory
# so, for following copy command:-
# COPY <directory relative to build_contect directory inside local computer> <directory relative to container_working_directory inside container>

# Copy the build files to the container
COPY ./ ./
# COPY <build files loacation relative to build_context directory> <location inside container>
# Reminder: Dockerfile build command: "docker build <build_context directory>"

# install some dependencies
RUN npm install

# Default command
CMD ["npm", "start"]