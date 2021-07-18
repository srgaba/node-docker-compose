FROM node:16-alpine as base

WORKDIR /src
COPY package*.json ./
EXPOSE 3000

FROM base as production
ENV NODE_ENV=production 
RUN npm ci
COPY . ./
CMD ["node", "dist/app"]

FROM base as dev 
ENV NODE_ENV=development
RUN npm install 
COPY . ./
CMD ["nodemon", "src/app"]

