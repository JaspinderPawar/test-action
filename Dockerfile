FROM node:14

ENV PORT=${PORT}

WORKDIR /usr/src/app

COPY package*.json ./

RUN  npm install --production --silent && mv node_modules ../

COPY . .

EXPOSE 5001

CMD [ "node", "src/index.js" ]