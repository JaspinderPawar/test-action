FROM node:latest

ENV PORT=${PORT}

WORKDIR /usr/src/app

COPY package*.json ./

RUN cat /package.json

COPY . .

RUN npm install \
    npm install express \
    npm install mongoose \
    npm install json2csv


EXPOSE 5001

CMD [ "node", "src/index.js" ]