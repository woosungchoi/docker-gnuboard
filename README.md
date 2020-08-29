# docker-rhymix

These are some reasons why use this Docker Compose in your `Rhymix` production environment.

☝️ 2 command to install

⚡ Performance Optimized

🔒 SSL auto-renewed

🆕 Latest docker images and Rhymix

🚧 Phpmyadmin for database administration

🚢 Portainer for docker container management

## Stack

- Ubuntu 20.04 LTS
- Rhymix latest(including rewrite configuration)
- Php7.4 latest docker image(alpine)
- MariaDB latest docker image
- Nginx latest docker image(alpine)
- Certbot latest docker image
- Redis latest docker image(alpine)
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
curl -s https://raw.githubusercontent.com/woosungchoi/docker-rhymix/main/dc | bash -s setup
```

## Rhymix Install Configuration

DB : `mysql`

DB server address : `db`

DB server port : `3306`

DB ID : `YOUR DATABASE USERNAME`

DB Password : `YOUR DATABASE PASSWORD`

DB name : `YOUR DATABASE NAME`


## Rhymix Redis cache configuration

Admin panel(관리자 페이지) -> Configuration(설정) -> System configuration(시스템 설정) -> Advanced configuration(고급설정)

Cache enable(캐시 사용) : `redis`

Host(호스트) : `redis`

Port(포트) : `6379`

DB number(DB번호) : `1`

## URLs

Rhymix : https://yourdomain.com

Phpmyadmin : https://pma.yourdomain.com

Portainer : https://port.yourdomain.com

## Commands

| Commands  | Description  |
|---|---|
| `./dc start`  | Start your containers  |
| `./dc stop`  | Stop all containers  |
| `./dc update`  | Get latest docker images update and restart containers |
