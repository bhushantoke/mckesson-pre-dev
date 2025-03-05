FROM node:16
RUN apk update
WORKDIR /usr/src/app

COPY package*.json ./
COPY . .
RUN npm install

EXPOSE 3000

CMD ["node", "index.js"]
