FROM node:6.11.0

RUN mkdir /src

RUN npm install express-generator -g

WORKDIR /src
ADD ./package.json /src/package.json
RUN npm install

EXPOSE 3000

CMD node app/bin/www
