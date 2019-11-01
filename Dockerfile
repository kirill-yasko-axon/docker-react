FROM nginx:1.16-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
RUN mkdir -p /var/www/test
COPY package*.json ./
RUN npm install
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
