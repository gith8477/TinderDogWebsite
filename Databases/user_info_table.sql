create table if not exists user_info(
id int(11) not null auto_increment,
username varchar(40) not null,
email varchar(50) not null,
password varchar(128) not null,
primary key (id),
unique key (username)
) ENGINE=MYISAM DEFAULT CHARSET=utf8;