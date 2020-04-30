FROM node:latest as node

#RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json /usr/src/app

COPY db.js /usr/src/app

COPY index.js /usr/src/app

RUN npm install && npm update -g

RUN npm install -g nodemon

RUN npm build

COPY . .
#COPY . /usr/src/app

EXPOSE 3000

CMD ["node","index.js"]

