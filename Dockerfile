FROM node:18

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.dtceibz.mongodb.net
ENV MONGODB_USERNAME todolist_user
ENV MONGODB_PASSWORD 11rnbirYH4l6DDW5

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]