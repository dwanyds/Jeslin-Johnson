create database MovieDatabase;
use MovieDatabase;
create table actor(
act_id int(10) primary key,
act_name varchar(10),
act_gender varchar(10)
);
create table director(
dir_id int(10) primary key,
dir_name varchar(20),
dir_phone int(10)
);
create table movies(
mov_id int(10) primary key,
mov_title varchar(10),
mov_year int(10),
mov_lang varchar(10),
dir_id int(10)
);
create table movie_cast(
act_id int(10) primary key,
mov_id int(10),
role varchar (20)
);
create table rating(
movie_id int(10),
rev_stars int(5)
);

insert into actor values (1,"jeslin","female"),(2,"joel","male"),(3,"kannan","male"),(4,"soni","female");
insert into director values(111,"steven spielberg",70255851),(222,"hitchcock",87456231),(333,"Nathaniel",75481236),(444,"Mikhael jordan",70254845);
select  * from director;
insert into movies values(123,"jaws",1988,"english",111),
(231,"home",1995,"malayalam",222),
(312,"forest",1998,"english",222),
(221,"redeemer",1989,"english",111),
(421,"passion",1999,"english",333),
(124,"daddy and me",2004,"english",444);

select * from movies;
insert into movie_cast values(1,123,"Film star"),(2,231,"father"),(3,221,"uncle"),(4,312,"grandma"),(1,221,"mother"),(2,312,"daughter");
alter table movie_cast drop primary key;
insert into rating values (123,5),(231,4),(221,5),(312,3),(421,3),(124,4);

select mov_title  from movies join director on director.dir_id=movies.dir_id where dir_name="hitchcock";
update  movies set mov_year =2020 where  mov_id=221 ;
select * from movies;
select act_name from actor join movie_cast on movie_cast.act_id=actor.act_id join movies on  movie_cast.mov_id = movies.mov_id where mov_year <2000 or mov_year >2015;

























