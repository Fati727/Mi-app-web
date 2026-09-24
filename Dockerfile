FROM node:22-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci && npm install -g npm@latest
COPY . .
EXPOSE 3000
CMD ["node", "server.js"]
