FROM nginxinc/nginx-unprivileged:stable-alpine

# Konfigurasi nginx (port 8080)
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# Isi website
COPY site/ /usr/share/nginx/html/

EXPOSE 8080
