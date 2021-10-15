Software Stack for Ubuntu based servers
=========
Install LEMP stack on Ubuntu based servers and addition to optimise configurations. 
It installs Nginx, PHP-FPM, MariaDB, Lets encrypt,Golang and TIG/Telegraf, InluxDB, Grafana/ stack
Softwares can be set on /var/main.yml It also supports backup and retension policy. 


Requirements
------------

Prefer to run newly installed instance

Role Variables
--------------

Variables can be found on /var/main.yml for choose which package will install. 

vhost_domain: "sub1.example.com"
new_install: true
install_phpfpm: true
install_golang: true
install_tig: true
vhost_use_ssl: false
lets_encrypt: false
install_mariadb: true
set_timezone: true
set_proxy: false

Can be change php version on /var/php-fpm.yml
Mariadb related configs will found ubuntu-mariadb.yml
if backup: true, this will create backup folder and backup scripts on server. Default retention days is 7. Generated backup script will located on /opt/

sql file can be imported to newly created database. Copy sql file to /files folder and should be renamed table.sql 

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
