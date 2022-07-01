FROM node:latest

ENV PORT=${PORT}

WORKDIR /usr/src/app

# COPY package*.json ./



COPY . .

RUN npm install 

EXPOSE 5001

CMD [ "node", "src/index.js" ]