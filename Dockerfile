FROM node:latest

ENV PORT=${PORT}

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 5001

CMD [ "node", "src/index.js" ]