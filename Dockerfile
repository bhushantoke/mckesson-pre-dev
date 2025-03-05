FROM node:alpine
RUN apk update
WORKDIR /usr/src/app
RUN chown -R node:node /usr/src/app
COPY package*.json ./

RUN npm install -g npm@11.1.0
COPY . .
EXPOSE 3000

CMD ["node", "index.js"]
