#---  VERS  ---#
FROM debian:buster

#---  ENV  ---#
ENV PASSWORD '12341234'
ENV USER_WORDPRESS 'jacens'

#---  INSTALL CONF ---#
RUN apt-get update &&\
	apt-get install -y nginx wget procps psmisc debconf debconf-utils perl lsb-release gnupg unzip nano vim ssl-cert
RUN DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends --no-install-suggests -y php php-cgi php-mysqli php-pear php-mbstring php-gettext libapache2-mod-php php-common php-phpseclib php-mysql

#---  MYSQL PHPMYADMIN WP ---#
RUN apt-get update &&\
	apt-get -y install mariadb-client mariadb-server
RUN cd /tmp &&\
	wget https://files.phpmyadmin.net/phpMyAdmin/4.9.1/phpMyAdmin-4.9.1-all-languages.zip &&\
	apt-get update &&\
	unzip * &&\
	mv phpMyAdmin-4.9.1-all-languages phpmyadmin &&\
	mv phpmyadmin /var/www/html
RUN apt-get install -y php-fpm
RUN cd /tmp && rm * &&\
	wget wordpress.org/latest.tar.gz &&\
	tar xvf latest.tar.gz &&\
	mv wordpress /var/www/html

#---  Add srcs file  ---#
ADD ./srcs/www.conf /etc/php/7.3/fpm/pool.d/
ADD ./srcs/index.php /var/www/html
ADD ./srcs/default /etc/nginx/sites-available/
ADD ./srcs/script.sh /

RUN chown -R www-data:www-data /var/www/html/wordpress

EXPOSE 8080 80 3306 33060 443

CMD ./script.sh