# Dockerfile
FROM node:20-alpine

WORKDIR /app
COPY package.json ./
RUN npm ci --only=production || npm i --only=production

COPY index.js ./

ENV PORT=3000
ENV SERVER_PORT=3000
ENV FILE_PATH=/app/tmp

EXPOSE 3000

CMD ["node", "server.js"]
