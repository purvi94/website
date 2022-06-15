FROM ubuntu
RUN DEBIAN_FORNTEND="noninteractive" apt-get -y install tzdata
RUN apt-get update
RUN apt-get -y install apache2
ADD . /var/www/html/
ENTEYPOINT apachectl -D FOREGROUND
ENV name Purvimehta
