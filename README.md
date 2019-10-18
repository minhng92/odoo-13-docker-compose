# Usage

Change the folder permission to make sure that the container is able to access the directory:
```
$ sudo chmod -R 777 addons
$ sudo chmod -R 777 etc
```

Start the container:
```
$ docker-compose up
```

* Then open `localhost:10013` to access Odoo 13.0. If you want to start the server with a different port, change **10013** to another value in **docker-compose.yml**:

```
ports:
 - "10013:8069"
```

* Log file is printed @ **etc/odoo-server.log**

To run in detached mode, execute this command:

```
$ docker-compose up -d
```

# Custom addons

The **addons** folder contains custom addons. Just put your custom addons if you have any.

# Odoo configuration

To change Odoo configuration, edit file: **etc/odoo.conf**.

# docker-compose.yml

* odoo:13.0
* postgres:12

# Odoo 13 screenshots

![odoo-13-welcome-docker](screenshots/odoo-13-welcome-screenshot.png)

![odoo-13-apps-docker](screenshots/odoo-13-apps-screenshot.png)

![odoo-13-sales](screenshots/odoo-13-sales-screen.png)

![odoo-13-form](screenshots/odoo-13-sales-form.png)