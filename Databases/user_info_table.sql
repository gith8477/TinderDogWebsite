create table if not exists user_info(
	id int(11) not null auto_increment,
	username varchar(40) not null,
	email varchar(50) not null,
	password varchar(128) not null,
	day_created datetime default current_timestamp,
	primary key (id),
	unique key (username)
) ENGINE=INNODB DEFAULT CHARSET=utf8;