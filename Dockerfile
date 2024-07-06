FROM node:18-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci

COPY . .

RUN npm run build

RUN npm prune --production

EXPOSE 3000

CMD ["node", "dist/main"]
