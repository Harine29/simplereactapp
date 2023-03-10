 FROM node:13.12.0-alpine
 WORKDIR /app
 ENV PATH /app/node_modules/.bin:$PATH
 ENV http_proxy=http://172.19.160.1:8080
 ENV https_proxy=http://172.19.160.1:8080
 COPY package.json ./
 COPY package-lock.json ./
 RUN npm install
 EXPOSE 3000
 #RUN npm install react-scripts@4.0.3 -g --silent
COPY . ./
CMD ["npm", "start"]
