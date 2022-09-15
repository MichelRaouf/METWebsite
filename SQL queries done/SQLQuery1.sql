insert into Users(email,password,name) values('ahmed@guc.edu','1234','Ahmed Mohamed');
insert into Users(email,password,name) values('mohamed@guc.edu','1234','Mohamed Mohamed');
insert into Users(email,password,name) values('karim@guc.edu','1234','karim Mohamed');

insert into Instructors(id,email,password,name,office,department) values(1,'ahmed@guc.edu','1234','Ahmed Mohamed','C3205','MET');
insert into Instructors(id,email,password,name,office,department) values(2,'mohamed@guc.edu','1234','Mohamed Mohamed','C3205','MET');
insert into Instructors(id,email,password,name,office,department) values(3,'karim@guc.edu','1234','karim Mohamed','C3205','MET');
insert into Doctors values(1,'DEAN');
insert into Doctors values(2,'ViceDean');
insert into Doctors values(3,'lecturer');
go
create proc getLecturerInfo @position varchar(50)
as
select d.id,name,email,office from Doctors d inner join Instructors i on d.id=i.id where d.position=@position