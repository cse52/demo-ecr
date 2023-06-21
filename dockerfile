FROM nginx:1.23.1-alpine

WORKDIR /etc/nginx/conf.d
COPY nginx/nginx.conf default.conf

WORKDIR /usr/share/nginx/html
COPY ./src ./app

EXPOSE 5500

CMD ["nginx", "-g", "daemon off;"]