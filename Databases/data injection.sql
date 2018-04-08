use login_creds;

delete from images;
delete from listing;
delete from user_info;

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

alter table images auto_increment=1;

alter table images auto_increment=1;

insert into images(list_id, description)
value(1, 'black back, yellow belly, 13 pound, left ear damaged');

insert into images(list_id, description)
value(2, 'black back, white foot, 15pound');

insert into images(list_id,description)
value(3, 'color: golden, 30pound, need additional medical care');

insert into images(list_id,description)
value(4, 'color: white, 9pound');

insert into images(list_id, description)
value(5, 'color: white, 10pound');

insert into images(list_id, description)
value(6, 'color: golden, 23pound');

insert into images(list_id, description)
value(7, 'black back, white foot, 15pound, tail damaged');

insert into images(list_id, description)
value(8, 'yellow back, white belly, 17pound, fierce');

select * from user_info;
select * from listing;
select * from images;
