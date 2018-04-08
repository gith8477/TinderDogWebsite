create table if not exists listing(
	listing_id int(11) not null auto_increment,
	user_id int(11) not null,
	breed varchar(40) not null,
	age int(11) not null,
	gender varchar(5) not null,
	description varchar(128) not null,
	day_listed datetime default current_timestamp,
	primary key (listing_id),
	foreign key (user_id) references user_info(id)
) ENGINE=INNODB DEFAULT CHARSET=utf8;