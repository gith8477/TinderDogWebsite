create database if not exists login_creds;
use login_creds;


delete from images;
delete from listing;
delete from user_info;
create table if not exists user_info(
	id int(11) not null auto_increment,
	username varchar(40) not null,
	email varchar(50) not null,
	password varchar(128) not null,
	day_created datetime default current_timestamp,
	primary key (id),
	unique key (username)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

alter table user_info auto_increment=1;

insert into user_info(username, email,password, day_created) 
value('hayu4998','hao.yua@colorado.edu','root1',default);

insert into user_info(username, email,password, day_created) 
value('hayu4997','hao.yan@colorado.edu','root2',default);

insert into user_info(username, email,password, day_created) 
value('hayu4996','hao.yuan@colorado.edu','root3',default);

insert into user_info(username, email,password, day_created) 
value('hayu4995','hao.yuan@coloado.edu','root4',default);

insert into user_info(username, email,password, day_created) 
value('hayu4994','hao.yuan@clorado.edu','root5',default);

insert into user_info(username, email,password, day_created) 
value('hayu4993','haoyuan@colorado.edu','root6',default);


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

alter table listing auto_increment=1;

insert into listing(user_id,breed,age,gender,description,day_listed)
value(1, 'German Shepherd', 2, 'f', 'black back, yellow belly, 13 pound, left ear damaged', default);

insert into listing(user_id,breed,age,gender,description,day_listed)
value(2, 'Border Collie', 1, 'f', 'black back, white foot, 15pound', default);

insert into listing(user_id,breed,age,gender,description,day_listed)
value(3, 'Golden Retriever', 4, 'm', 'color: golden, 30pound, need additional medical care', default);

insert into listing(user_id,breed,age,gender,description,day_listed)
value(4, 'Bichon Frise', 3, 'm', 'color: white, 9pound', default);

insert into listing(user_id,breed,age,gender,description,day_listed)
value(1, 'Bichon Frise', 2, 'm', 'color: white, 10pound', default);

insert into listing(user_id,breed,age,gender,description,day_listed)
value(2, 'Golden Retriever', 6, 'f', 'color: golden, 23pound', default);

insert into listing(user_id,breed,age,gender,description,day_listed)
value(5, 'Border Collie', 3, 'm', 'black back, white foot, 15pound, tail damaged', default);

insert into listing(user_id,breed,age,gender,description,day_listed)
value(6, 'Boxer', 1, 'f', 'yellow back, white belly, 17pound, fierce', default);

drop table if exists images;
create table if not exists images(
	image_id int(11) not null auto_increment,
	list_id int(11) not null,
	image varchar(128),
    extension varchar(11),
	description varchar(128) not null,
	primary key (image_id),
    foreign key (list_id) references listing(listing_id)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

alter table images auto_increment=1;

insert into images(list_id, image, extension, description)
value(1,'GS-1', 'jpg', 'black back, yellow belly, 13 pound, left ear damaged');

insert into images(list_id, image, extension, description)
value(2, 'BC-2','jpg', 'black back, white foot, 15pound');

insert into images(list_id, image, extension, description)
value(3, 'GR-3','jpg', 'color: golden, 30pound, need additional medical care');

insert into images(list_id, image, extension, description)
value(4, 'BF-4','jpg', 'color: white, 9pound');

insert into images(list_id, image, extension, description)
value(5, 'BF-5', 'jpg', 'color: white, 10pound');

insert into images(list_id, image, extension, description)
value(6, 'GR-6', 'jpg', 'color: golden, 23pound');

insert into images(list_id, image, extension, description)
value(7, 'BC-7', 'jpg', 'black back, white foot, 15pound, tail damaged');

insert into images(list_id, image, extension, description)
value(8, 'B-8','jpg', 'yellow back, white belly, 17pound, fierce');

select * from user_info;
select * from listing;
select * from images;