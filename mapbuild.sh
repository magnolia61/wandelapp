npm run build
rsync -asvz --delete /var/www/vhosts/idqprod/dist/ /var/www/vhosts/idqprod/web/nwg/plof/
sudo chown -R webteam:www-data /var/www/vhosts/idqprod/web/
