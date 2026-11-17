FROM node:24

WORKDIR /usr/src/app

COPY /src/package*.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
