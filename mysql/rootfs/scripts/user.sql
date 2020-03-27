CREATE USER 'kamailioro'@'localhost' IDENTIFIED BY 'kamailioro';
GRANT SELECT ON kamailio.* TO 'kamailioro'@'localhost';

flush privileges;