FROM node:10
COPY nginx.conf /etc/nginx/conf.d/default.conf
RUN mkdir -p /var/www/test
COPY package*.json ./var/www/test/
RUN apt-get update
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_11.x  | bash -
RUN apt-get -y install nodejs
RUN npm install
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
