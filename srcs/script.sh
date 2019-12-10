#!/bin/bash

#---  STARTING SERVEURS  ---#
service mysql start
service nginx start
service php7.3-fpm start
#--------------------------#

#--- CONFIG MYSQL (BDD) ---#
#            WP            #
mysql -u root -e "CREATE DATABASE IF NOT EXISTS wordpress;"
mysql -u root -e "CREATE USER 'utilisateur'@'%' IDENTIFIED BY 'mot de passe';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'utilisateur'@'%' WITH GRANT OPTION;"
mysql -u root -e "FLUSH PRIVILEGES;"
#---					---#

#           USER           #
mysql -u root -e "CREATE USER '$USER_WORDPRESS'@'localhost' identified by '$PASSWORD';" 
mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO '$USER_WORDPRESS'@'localhost';" 
mysql -u root -e "FLUSH PRIVILEGES;"
#---					---#
#--------------------------#

nginx -g "daemon off;"

#    SLEEP BLOUCLE INFI    #
while [ true ]
do
    true = true
done
#--------------------------#