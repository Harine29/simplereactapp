 FROM node:13.12.0-alpine
 WORKDIR /app
 ENV PATH /app/node_modules/.bin:$PATH
 COPY package.json ./
 COPY package-lock.json ./
 RUN npm install --silent
<<<<<<< HEAD
RUN npm install react-scripts@4.0.3 -g --silent
 COPY . ./
CMD ["npm", "start"]
=======
 RUN npm install react-scripts@4.0.3 -g --silent
 COPY . ./
 CMD ["npm", "start"]
>>>>>>> b2bbb21f75b485b7a15a25fc9d6ccec7e93a0322


#FROM node:latest

<<<<<<< HEAD
#COPY /home/cloud-user/BODE_PORTAL .
=======
#COPY /home/cloud-user/BODE_Portal .
>>>>>>> b2bbb21f75b485b7a15a25fc9d6ccec7e93a0322

#RUN npm install

#COPY .. 

#CMD ["npm", "start"]
