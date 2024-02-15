# FROM nginx:1.17-alpine as runner
FROM nginx:latest as runner
COPY ./index.html /usr/share/nginx/html
COPY ./style.css /usr/share/nginx/html
# COPY ./nginx.conf /etc/nginx/
COPY ./default.conf /etc/nginx/conf.d/default.conf
EXPOSE 12002
CMD ["nginx", "-g", "daemon off;"]