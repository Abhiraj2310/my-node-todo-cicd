
#This line specifies the base image for the container, which in this case is a lightweight Alpine Linux image with Node.js v12.2.0 installed
FROM node:12.2.0-alpine
#This line sets the working directory for subsequent commands in the Dockerfile to /app.
WORKDIR app
#This line copies the contents of the current directory (where the Dockerfile is located) to the /app directory in the container.
COPY . .
#This line runs the npm install command, which installs the dependencies for the Node.js application in the container.
RUN npm install
#This line runs the npm run test command, which runs the tests for the Node.js application in the container.
RUN npm run test
#This line exposes port 8000 to the host machine so that it can access the application running in the container.
EXPOSE 8000
#This line specifies the command that will be run when the container starts. In this case, it runs the node app.js command, which starts the Node.js application in the container.
CMD ["node","app.js"]
