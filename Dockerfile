 FROM node:13.12.0-alpine
 WORKDIR /app
 ENV PATH /app/node_modules/.bin:$PATH
 ENV http_proxy=http://172.19.160.1:8080
 ENV https_proxy=http://172.19.160.1:8080
 COPY package.json ./
 COPY package-lock.json ./
 RUN npm install 
#RUN npm install react-scripts@4.0.3 -g --silent
 COPY . ./
CMD ["npm", "start"]



#FROM node:latest

#COPY /home/cloud-user/BODE_PORTAL .

#RUN npm install

#COPY .. 

#CMD ["npm", "start"]
