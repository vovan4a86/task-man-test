FROM node:16-alpine
WORKDIR /app
COPY ./package*.json ./
RUN npm install
ADD . .
RUN npm run build
RUN npm prune --production
CMD ["node", "./dist/main.js"]
