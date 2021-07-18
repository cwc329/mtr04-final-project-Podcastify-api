# syntax=docker/dockerfile:1
FROM node:14.17.0
ENV NODE_ENV=development
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm i --production
COPY . .
RUN npm run build
CMD ["npm", "run", "start"]