FROM node:13-alpine

ENV MONGO_DB_USERNAME=node-dbuser \
    MONGO_DB_PWD=h4334jbw4

RUN mkdir -p /home/app

COPY ./app /home/app

# set default dir so that next commands executes in /home/app dir
WORKDIR /home/app

RUN npm install

CMD ["node", "server.js"]






#RUN sed -i 's|let mongoUrlLocal = "mongodb://admin:password@localhost:27017";|let mongoUrlLocal = "mongodb://node-dbuser:h4334jbw4@172.31.47.86:27017";|' server.js

#RUN sed -i 's|let databaseName = "my-db";| let databaseName = "node-db";|' server.js


#RUN sed -i 's|const response = await fetch('http://localhost:3000/get-profile');|const response = await fetch('http://13.233.108.99:3000/get-profile');|' index.html


#RUN sed -i 's|const response = await fetch('http://localhost:3000/update-profile', {|const response = await fetch('http://13.233.108.99:3000/update-profile', {|' index.html

# will execute npm install in /home/app because of WORKDIR
#RUN npm install
# no need for /home/app/server.js because of WORKDIR
#CMD ["node", "server.js"]

