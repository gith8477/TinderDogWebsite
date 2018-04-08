create database login_creds;
use login_creds;

create table if not exists user_info(
	id int(11) not null auto_increment,
	username varchar(40) not null,
	email varchar(50) not null,
	password varchar(128) not null,
	day_created datetime default current_timestamp,
	primary key (id),
	unique key (username)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

create table if not exists listing(
	listing_id int(11) not null auto_increment,
	user_id int(11) not null,
	breed varchar(40) not null,
	age = int(11) not null,
	gender = varchar(5) not null,
	description varchar(128) not null,
	day_listed datetime default current_timestamp,
	primary key (listing_id),
	foreign key (user_id) references user_info(id)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

create table if not exists images(
	image_id int(11) not null auto_increment,
	list_id int(11) not null,
	image blob not null,
	description varchar(128) not null,
	primary key (image_id),
	foreign key (list_id) references listing(listing_id)
) ENGINE=INNODB DEFAULT CHARSET=utf8;