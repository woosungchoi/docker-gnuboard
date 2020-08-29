# docker-gnuboard

These are some reasons why use this Docker Compose in your `Gnuboard` production environment.

☝️ 2 command to install

⚡ Performance Optimized

🔒 SSL auto-renewed

🆕 Latest docker images and Gnuboard

🚧 Phpmyadmin for database administration

🚢 Portainer for docker container management

## Stack

- Ubuntu 20.04 LTS
- Gnuboard latest(including rewrite configuration)
- Php7.4 latest docker image(alpine)
- MariaDB latest docker image
- Nginx latest docker image(alpine)
- Certbot latest docker image
- Phpmyadmin latest docker image(fpm-alpine)
- Portainer latest docker image
- Docker
- Docker-compose

## How to use this source ?

Make sure that your `domain` and `*.domain` are pointing to your server IP.

Open `80`,`443` port for connect.

Copy this command below and run it inside your new server. 

```bash
sudo apt update -y && sudo apt upgrade -y && sudo apt install curl git -y && sudo apt autoremove -y
```

```bash
curl -o dc https://raw.githubusercontent.com/woosungchoi/docker-gnuboard/master/dc && bash dc setup && rm -f dc
```

## Gnuboard Install Configuration

DB : `mysql`

DB server address : `db`

DB server port : `3306`

DB ID : `YOUR DATABASE USERNAME`

DB Password : `YOUR DATABASE PASSWORD`

DB name : `YOUR DATABASE NAME`


## URLs

Gnuboard : https://yourdomain.com

Phpmyadmin : https://pma.yourdomain.com

Portainer : https://port.yourdomain.com

## Commands

| Commands  | Description  |
|---|---|
| `./dc start`  | Start your containers  |
| `./dc stop`  | Stop all containers  |
| `./dc update`  | Get latest docker images update and restart containers |
