create table if not exists images(
	image_id int(11) not null auto_increment,
	list_id int(11) not null,
	image blob not null,
	description varchar(128) not null,
	primary key (image_id),
	foreign key (list_id) references listing(listing_id)
) ENGINE=INNODB DEFAULT CHARSET=utf8;