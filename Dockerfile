# Specify a base image
FROM node:alpine
# NOTE: "alpine" keyword in "node:alpine" is NOT related to the alpine base image which we were using
# "node:alpine" refers to the alpine version of node base image
# "alpine" version means the minimal version of node.

# install some dependencies
RUN npm install

# Default command
CMD ["npm", "start"]