FROM node:latest

ENV PORT=${PORT}

WORKDIR /usr/src/app

COPY package*.json ./



COPY . /

RUN npm install
#  \
#     npm install express \
#     npm install redis \
#     npm install json2csv

COPY . /

EXPOSE 5001

CMD [ "node", "src/index.js" ]