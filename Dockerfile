FROM centos:latest
MAINTAINER danish.danishbeg998@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page268/soul.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip soul.zip
RUN cp -rvf soul/* .
RUN rm -rf soul soul.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
