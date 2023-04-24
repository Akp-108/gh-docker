FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.kbhjwv0.mongodb.net
ENV MONGODB_USERNAME akp1081
ENV MONGODB_PASSWORD Atul12345

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]