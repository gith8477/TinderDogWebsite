create table if not exists images(
	image_id int(11) not null auto_increment,
	user_id int(11) not null,
	image blob not null,
	description varchar(128) not null,
	primary key (image_id),
	foreign key (user_id) references user_info(id)
) ENGINE=INNODB DEFAULT CHARSET=utf8;