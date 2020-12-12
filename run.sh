# clone Odoo directory
git clone https://github.com/minhng92/odoo-13-docker-compose
cd odoo-13-docker-compose
# set permission
sudo chmod -R 777 addons
sudo chmod -R 777 etc
sudo chmod -R 777 postgresql
# set file watching config
if grep -qF "fs.inotify.max_user_watches" /etc/sysctl.conf; then echo $(grep -F "fs.inotify.max_user_watches" /etc/sysctl.conf); else echo "fs.inotify.max_user_watches = 524288" | sudo tee -a /etc/sysctl.conf; fi
sudo sysctl -p
# run Odoo
docker-compose up -d

echo "Started Odoo @ http://localhost:10013"
