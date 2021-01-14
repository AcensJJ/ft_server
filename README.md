# ft_server

<img src="https://user-images.githubusercontent.com/45235527/96753610-698e7080-13d0-11eb-9461-d3351c9208d7.png" width="250" height="200" />

<strong>Description</strong>

Ce sujet a pour but de vous initier aux bases de l’administration système et réseau. Il vous permettra de procéder à
l'installation d'un serveur web complet, a l'aide d'une technologie de déploiement nommée Docker.

![image](https://user-images.githubusercontent.com/45235527/96755415-fd613c00-13d2-11eb-9e80-ca852dbd7cac.png)


# Partie obligatoire

- Vous devrez, dans un seul container Docker, mettre en place un serveur web avec
Nginx. Le container devra tourner avec Debian Buster.
- Votre serveur devra être capable de faire tourner plusieurs services en même temps.
Les services seront un Wordpress à installer par vous même, ainsi que Phpmyadmin
et MySQL. Vous devrez vous assurer que votre base de donnée SQL fonctionne
avec le wordpress et phpmyadmin.
- Votre serveur devra pouvoir, quand c’est possible, utiliser le protocole SSL.
- Vous devrez vous assurer que, selon l’url tapé, votre server redirige vers le bon
site.
- Vous devrez aussi vous assurer que votre serveur tourne avec un index automatique
qui doit pouvoir être désactivable.


# Commande

 create :
- `docker build -t "name" .`
- `docker run -d -p 80 "name"`
- `docker exec -it $id` bash

 rm :
- `docker stop (docker -qs) && docker rm (docker -qs)`

documentation : <a href="https://www.padok.fr/blog/docker-docker-compose-commandes-connaitre">docker-compose commande</a>


# Technologie

<img src="https://user-images.githubusercontent.com/45235527/96755415-fd613c00-13d2-11eb-9e80-ca852dbd7cac.png" width="300" height="200" /> <img src="https://user-images.githubusercontent.com/45235527/96755516-1b2ea100-13d3-11eb-90a5-eef37dc45090.png" width="300" height="200" /> <img src="https://user-images.githubusercontent.com/45235527/96755596-36011580-13d3-11eb-8f1f-3d0df5ca7782.png" width="300" height="200" /> <img src="https://user-images.githubusercontent.com/45235527/96755726-5e890f80-13d3-11eb-9c6b-5ac803a7a5fc.png" width="300" height="200" /> <img src="https://user-images.githubusercontent.com/45235527/96755647-47e2b880-13d3-11eb-918f-e904e959f4f9.png" width="300" height="200" /> <img src="https://user-images.githubusercontent.com/45235527/96904960-1d0e6800-1498-11eb-9ebf-beddaae4bb93.png" width="300" height="200" />
