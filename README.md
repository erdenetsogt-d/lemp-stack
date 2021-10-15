Software Stack for Ubuntu based servers
=========
Install LEMP stack on Ubuntu based servers and addition to optimise configurations. 
It installs Nginx, PHP-FPM, MariaDB, Lets encrypt,Golang and TIG/Telegraf, InluxDB, Grafana/ stack
Softwares can be set on /var/main.yml It also supports backup and retension policy. 
inspired by vestacp and Jeff Geerling ansible automation channel.
Tested on Ubuntu 20.04 and 21.04

Ubuntu based сервер дээр LEMP суулгах, мөн мониторинг хийх автоматжуулалт бөгөөд өөрийн мэдэх tuning-үүдийг нэмж хийсэн. 
Энэхүү playbook нь 

nginx

php-fpm 5.6-7.0, 7.2, 7.3, 7.4, 8.0 зэргээс сонгон суулгах боломжтой

mariadb 

lets-encrypt

TIG monitoring

зэргийг суулган тохиргоог автоматжуулсан бөгөөд үндсэн юуг 
суулгах юуг суулгахгүй вэ гэдгийг /var/main.yml дээр true эсвэл false утгаар тохируулсанаар ажиллуулах боломжтой. 
3000 дугаар порт дээр Grafana суусан байгаа. Шинээр суулгасан бол серверээ restart хийхийг зөвлөж байна.
Мөн сүүлийн 7 өдрийн DB болон file backup гарган хадгалах скрипт бэлдэн гаргасан. 

Requirements
------------

Prefer to run newly installed instance

Шинэ суусан Ubuntu 

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



Can be change php version on /var/php-fpm.yml

Mariadb related configs will found ubuntu-mariadb.yml

if backup: true, this will create backup folder and backup scripts on server. Default retention days is 7. Generated backup script will located on /opt/


sql file can be imported to newly created database. Copy sql file to /files folder and should be renamed table.sql


Dependencies
------------
Need root user or sudo user. 

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

---
- hosts: all

  become: true

  roles:

   - software-stack

License
-------

BSD

Author Information
------------------
Bitsoft LLC
