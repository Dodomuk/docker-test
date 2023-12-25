# build stage
FROM node:18.17.1
WORKDIR /app

COPY package*.json ./

ADD . .
RUN npm install

COPY . .

RUN npm run build

EXPOSE 8081

CMD [ "npm","run","serve" ]



