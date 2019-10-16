FROM nginx
ENV AUTHOR=Docker

WORKDIR /usr/share/nginx/html
COPY index.html /usr/share/nginx/html

CMD cd /usr/share/nginx/html && sed -e s/Docker/"$AUTHOR"/ index.html > index.html ; nginx -g 'daemon off;'