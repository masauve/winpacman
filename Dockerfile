
FROM stefanscherer/node-windows:node-windows:10.10.0-nanoserver-1709
MAINTAINER Martin Sauve <msauve@redhat.com>

# copy nodejs to nanoserver
RUN mkdir \app
WORKDIR /app

COPY package.json /app/package.json
RUN npm install
COPY . /app
COPY public/ /app

EXPOSE 8080

CMD [ "npm.cmd", "start" ]
