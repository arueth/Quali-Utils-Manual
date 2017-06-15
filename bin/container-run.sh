#/bin/sh

sudo docker run -d -e NODEJS_PORT=80 --name quali_utils_nodejs -p 80:80 -v quali_utils_data:/usr/src/app/www/data arueth/quali-utils-nodejs:latest

sudo docker run -d --name quali_utils_cron -v quali_utils_cron_config:/usr/src/script/config -v quali_utils_data:/usr/src/script/data arueth/quali-utils-cron:latest
