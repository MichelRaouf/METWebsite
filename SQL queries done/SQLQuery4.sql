

insert into Employment values (1,'Associate Professor','Cairo University','September,2001','february 2023',
'Computer Science and Engineering, Linguistics Minor, Cognitive Science Ph.D. Track') 

insert into Employment values (1,'Associate Professor','Cairo University','September,2001','february 2023',
'Engineering Mathematics/Computer Science') 

insert into Employment values (1,'Associate Professor','Cairo University','September,2001','february 2023',
'Computer Science and Engineering, Linguistics Minor, Cognitive Science Ph.D. Track') ;








insert into Instructor_ResearchInterest values (1,1);
insert into Instructor_ResearchInterest values (1,2);
insert into Instructor_ResearchInterest values (1,3);


insert into Research_Links Values (1,'Guide to Constraint Programming ','https://ktiii');
insert into Research_Links Values (1,'constraint handling Problems ','https://ktiii');
insert into Research_Links Values (1,'theory of Computation','https://ktiii');


insert into Publications Values ('Guide to Constraint Programming',2010,'mhsgkeshflwahfkewgfkueshgkjleh','conference','https://ktiii');
insert into Publications values('theory of Computation',2010,'mhsgkeshflwahfkewgfkueshgkjleh','conference','https://ktiii');
insert into Publications Values('padel tournament',2010,'mhsgkeshflwahfkewgfkueshgkjleh','conference','https://ktiii');


insert into Publish values (1,1);
insert into Publish values (2,1);
insert into Publish values (3,1);


insert into Activities values (1/1/2020 , 2/4/2020,'jgfjgdmhxhmd,jfj,chgxchmcmmhchgchmfhgcf','Cairo');

insert into DoneActivity values (1,1);

insert into DoneActivity values (1,2);

insert into DoneActivity values (1,4);

delete from Employment


go

create procedure getInstructor @instID int
as
begin
select *
from Instructors
where id=@instID 
end

go


create procedure getEducation @instID int
as
begin
select *
from Education
where instructor_id=@instID 
end


go

create procedure getEmployment @instID int
as
begin
select *
from Employment
where instructor_id=@instID 
end


go


create procedure instTeached @instID int 
as 
begin
select semester_season,semester_year,serial
from Teaching  
where instructor_id=@instID 
end


go


create procedure getInterests @instID int 
 as 
  begin 
  select R.title
  from Research_Interests R ,  Instructor_ResearchInterest I
  where I.instructor_id=@instID and R.id=I.interest_id

 end
 
 go

create procedure getLinks @instID int 
 as 
  begin 
  select R.title,R.url
  from Research_Links R
  where R.instructor_id=@instID 
  end 

  go 

create procedure getPublication @instID int 
 as 
  begin 
  select R.type,R.year,R.title,R.description,R.link
  from Publish P ,Publications R 
  where P.instructor_id=@instID and P.publication_id=R.id 
  end  


  go 

create procedure getActivities @instID int 
 as 
  begin 
  select A.start_date,A.end_date,A.description,A.location
  from DoneActivity D, Activities A 
  where D.instructor_id=@instID and D.activity_id=A.id 
  end  
