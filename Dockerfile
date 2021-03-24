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

# By default, no incoming trafic to local computer is directed into port.
# NOTE: Outgoing traffic from container is allowed (we've used it during installation of dependencies inside container)
# So, we have to set explicit port mapping.:-
# We won't be changing the docker file for this, we'll be modifying the docker run command:-
# docker run -p <local_computer_port>:<container_port> <image_id>
# this will route incoming requests coming to local_computer_port to container_port inside the container
