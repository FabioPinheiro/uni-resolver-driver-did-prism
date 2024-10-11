FROM nginx:stable-alpine
COPY nginx.conf /etc/nginx/conf.d
EXPOSE 9090
CMD ["/bin/sh", "-c", "exec nginx -g 'daemon off;';"]
WORKDIR /usr/share/nginx/html