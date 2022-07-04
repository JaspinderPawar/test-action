FROM node:latest

ENV PORT=${PORT}

WORKDIR /usr/src/app

COPY package*.json ./



COPY . .

COPY . /app
EXPOSE 5001

CMD [ "node", "src/index.js" ]