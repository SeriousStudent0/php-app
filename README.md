# PHP App Example

## Requirements To Run Test
1. Composer
2. PHP7
3. PHP Sockets Extensions Installed


## Video Processing and RabbitMQ
#### Overview
The services shows a basic example of how to create a service for processing videos with RabbitMQ.

#### How To Run
1. Ensure RabbitMQ is installed and running locally
3. Run `composer install` to install required packages
4. Open up two tabs in your console
5. In one tab, run `php server.php`
6. In the other tab, run `php client.php`

## Source
<https://github.com/ProdigyView-Toolkit/Microservices-Examples-PHP>

***____________________________________________________________________________________***
***____________________________________________________________________________________***


RIFFAUD Thomas README:
*** les lignes commencants par | sont les lignes de commande ***

notes persos:
    php fpm et apache
    un composer install est obligatoire

A FAIRE POUR FAIRE FONCTIONNER L'APP:
cd dans le directory DockerTDdirectory
(lancement de l'image et dockerfile->):
|docker compose up (ou ps pour le mettre en arrière plan)
ouvrir un nouveau terminal et cd dans le meme directory
dans ce nouveau shell
|docker compose exec -it php-app bash
[|composer install] plus besoin
|php server.php

ouvrir un nouveau terminal et cd dans le meme directory
dans ce nouveau shell
|docker compose exec -it php-app bash
|php client.php

***l'app est fonctionnelle !***

dans le terminal du client, il est possible de voir les fichier .mp4 et .mov
|ls