# ft_server

![Screenshot 2020-10-21_19-05-33-326](https://user-images.githubusercontent.com/45235527/96754056-0d781c00-13d1-11eb-8784-218becc41a82.png)

Description

Ce sujet a pour but de vous initier aux bases de l’administration système et réseau. Il vous permettra de procéder à
l'installation d'un serveur web complet, a l'aide d'une technologie de déploiement nommée Docker.


# Partie obligatoire

• Vous devrez, dans un seul container Docker, mettre en place un serveur web avec
Nginx. Le container devra tourner avec Debian Buster.

• Votre serveur devra être capable de faire tourner plusieurs services en même temps.
Les services seront un Wordpress à installer par vous même, ainsi que Phpmyadmin
et MySQL. Vous devrez vous assurer que votre base de donnée SQL fonctionne
avec le wordpress et phpmyadmin.

• Votre serveur devra pouvoir, quand c’est possible, utiliser le protocole SSL.

• Vous devrez vous assurer que, selon l’url tapé, votre server redirige vers le bon
site.

• Vous devrez aussi vous assurer que votre serveur tourne avec un index automatique
qui doit pouvoir être désactivable.


# Commande

docker build -t "name"
docker run -d -p 80 "name"
docker exec -it id

documentation <a href="https://www.padok.fr/blog/docker-docker-compose-commandes-connaitre">docker</a>
