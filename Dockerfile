# Use an official Node.js runtime as a parent image
FROM node:14

# Set environment variables
#ENV NODE_ENV="NODE_ENV"
#ENV PORT="5000"



# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the app source code to the working directory
COPY . .

#RUN echo "NODE_ENV=${NODE_ENV}" >> .env
#RUN echo "PORT=${PORT}" >> .env

# Expose the port your app will run on
EXPOSE 3000

# Command to run your application
CMD ["npm", "start"]