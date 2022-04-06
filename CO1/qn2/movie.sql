use movie;
create table Dept(
deptno int(10) primary key,
dname varchar(10),
LOC varchar(10));
alter table dept rename to department;
alter table department add column pincode int(10) not null;
select * from department;
create view viewpoint as select * from department;
select * from viewpoint;
drop view viewpoint;
alter table department change dname dept_name varchar(10);
alter table department modify column loc char(10);
drop table department;
