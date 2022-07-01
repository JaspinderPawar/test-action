FROM node:latest

ENV PORT=${PORT}

WORKDIR /usr/src/app

# COPY package*.json ./



COPY . .

RUN npm install -g nodemon && npm install 

RUN npm ls

EXPOSE 5001

CMD [ "nodemon", "src/index.js" ]