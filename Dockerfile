FROM node:latest

ENV PORT=${PORT}

WORKDIR /src

COPY package*.json ./



COPY . /

RUN npm install -g nodemon && npm install && npm ls
#  \
#     npm install express \
#     npm install redis \
#     npm install json2csv

COPY . /

EXPOSE 5001

CMD [ "nodemon", "src/index.js" ]