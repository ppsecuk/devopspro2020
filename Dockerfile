FROM ubuntu:18.04
#updating packages
RUN apt update
#installing MC
RUN apt install -y  nginx
COPY default /etc/nginx/sites-available/default
#changing MC skin
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80
