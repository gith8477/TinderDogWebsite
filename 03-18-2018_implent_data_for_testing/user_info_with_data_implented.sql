create database if not exists TinderDogWebsite;
use TinderDogWebsite;

create table if not exists user_info(
	id int(11) not null auto_increment,
	username varchar(40) not null,
	email varchar(50) not null,
	password varchar(128) not null,
	day_created datetime default current_timestamp,
    Zip_code int not null,
    State varchar(20) not null,
    breedid int not null,
    color varchar(40) not null,
    imageid int not null,
	primary key (id),
	unique key (username)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

drop table if exists popularlist;
create table if not exists popularlist(
	rank int not null,
    breedcate varchar(40) not null,
    imageid int null,
    primary key(rank)
) CHARACTER SET utf8 COLLATE utf8_general_ci;

drop table if exists breedlist;
create table if not exists breedlist(
	breedid int not null auto_increment,
    breedname varchar(40) not null, 
    breedCategory varchar(40) not null,
    primary key(breedid)
) CHARACTER SET utf8 COLLATE utf8_general_ci;

alter table user_info auto_increment=1;
alter table breedlist auto_increment=1;
load data local infile 'C:/Users/jasonhaoyuan/Desktop/software development/Project/breedlist.txt' into table breedlist fields terminated by ',' lines terminated by '\n'(breedname, breedCategory);
load data local infile 'C:/Users/jasonhaoyuan/Desktop/software development/Project/popularlist.txt' into table popularlist fields terminated by '	' lines terminated by '\n'(rank, breedcate);
select * from breedlist;
select * from popularlist;

insert into user_info(username, email,password, day_created, Zip_code, State,breedid, color, imageid) 
value('hayu4998','hao.yuan@colorado.edu','root',default, 80302,'COLORADO', 1, 'BW', 100);

insert into user_info(username, email,password, day_created, Zip_code, State,breedid, color, imageid) 
value('hayu4997','hao.yuan@colorado.edu','root',default, 80320,'COLORADO', 2, 'BW', 101);

insert into user_info(username, email,password, day_created, Zip_code, State,breedid, color, imageid) 
value('hayu4996','hao.yuan@colorado.edu','root',default, 80305,'COLORADO', 3, 'BW', 102);

insert into user_info(username, email,password, day_created, Zip_code, State,breedid, color, imageid) 
value('hayu4995','hao.yuan@colorado.edu','root',default, 80310,'COLORADO', 4, 'BW', 103);

insert into user_info(username, email,password, day_created, Zip_code, State,breedid, color, imageid) 
value('hayu4994','hao.yuan@colorado.edu','root',default, 80300,'COLORADO', 5, 'BW', 104);

insert into user_info(username, email,password, day_created, Zip_code, State,breedid, color, imageid) 
value('hayu4993','hao.yuan@colorado.edu','root',default, 80308,'COLORADO', 6, 'BW', 105);

select * from user_info;
delete from user_info;
