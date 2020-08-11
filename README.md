# docker-ha-tileboard
Docker for the Home Assistant dashboard Tileboard project

`docker build . -t docker-ha-tileboard`

`docker run -d --name tileboard -p 8080:80 --mount type=bind,source="$(pwd)"/your-config.js,target=/var/www/html/config.js docker-ha-tileboard`