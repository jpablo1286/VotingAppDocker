FROM ubuntu:19.04
RUN apt-get update
RUN apt-get -y install nodejs
RUN apt-get -y install npm git
RUN git config --global user.email "me@juanrivera.org"
RUN git config --global user.name "Juan Pablo Rivera"
RUN npm install -g @angular/cli
RUN mkdir /app
WORKDIR /app
RUN ng new my-project
WORKDIR /app/my-project/
RUN npm install --save @angular/material @angular/cdk @angular/animations @angular/compiler-cli
RUN npm install --save hammerjs
RUN npm install --save @angular/flex-layout@latest
RUN apt-get -y install nginx
COPY config/default /etc/nginx/sites-enabled/default
COPY config/openssl.cnf /etc/ssl/openssl.cnf
RUN openssl req -new -x509 -nodes -out /etc/ssl/server.crt -keyout /etc/ssl/server.key
RUN rm -rf src
COPY start.sh /app/start.sh
RUN chmod 755 /app/start.sh
EXPOSE 80
RUN rm -rf /app/my-project/src/
RUN git clone https://github.com/jpablo1286/VotingAppUI.git /app/my-project/src
RUN ng build --prod
CMD /app/start.sh
#CMD ng serve --host 0.0.0.0 --disable-host-check
