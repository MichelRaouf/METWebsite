CREATE TABLE [dbo].[studentActivityUpdated]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [title] VARCHAR(50) NULL, 
    [type] VARCHAR(50) NULL, 
    [icon] VARCHAR(100) NULL, 
    [background-color] VARCHAR(200) NULL, 
    [about] VARCHAR(500) NULL, 
    [facebook] VARCHAR(200) NULL, 
    [instagram] VARCHAR(200) NULL
)

CREATE TABLE [dbo].[MET_Related_Tracks]
(
	[activity_id] INT NOT NULL,
    [name] VARCHAR(100) NOT NULL, 
	primary key([name],[activity_id]),
	foreign key([activity_id]) references studentActivityUpdated
)

insert into studentActivityUpdated values('INCUBATOR','club','./images/stActivitiesPageImages/incubatorN.svg','linear-gradient(to right,RGBA(27,51,124,100),RGBA(237,28,36,90))','Incubator is a student activity at the GUC.Their vision is to prepare every student to be future inventors and researchers. As the starnova lightens the sky by creating stars, we aim to lighten the world by their discoveries.','https://www.facebook.com/IncubatorGUC/?ref=page_internal','https://www.instagram.com/incubator_guc/')
insert into MET_Related_Tracks values(1,'Software Development')
insert into MET_Related_Tracks values(1,'App Development')
insert into MET_Related_Tracks values(1,'R & D')

insert into studentActivityUpdated values('GUC BRAIN','club','./images/stActivitiesPageImages/brainN.svg','linear-gradient(to right,rgba(0, 0, 0, 1),rgba(237, 28, 36, 0.9))','GUC Brain is an Artificial Intelligence Research club at the GUC. Their main activities are doing Machine Learning sessions for students and research in the field of AI. In addition, They organize ML related talks and events.','https://www.facebook.com/GUCBrains/','https://www.instagram.com/gucbrain/')
insert into MET_Related_Tracks values(2,'Machine Learning')
insert into MET_Related_Tracks values(2,'Deep Learning')
insert into MET_Related_Tracks values(2,'Introduction to AI')

insert into studentActivityUpdated (title,type,icon,[background-color],about,facebook) values('ACM','community','./images/stActivitiesPageImages/acmN.svg','linear-gradient(to right,rgba(0, 0, 0, 1),rgba(237, 28, 36, 0.9))','ACM is the ICPC community at the German University in Cairo. International Collegiate Programming Contest (ICPC) is an annual multi-tiered competitive programming competition among the best universities of the world.','https://www.facebook.com/acm.guc.community/about/?ref=page_internal')
insert into MET_Related_Tracks values(3,'Student plan')
insert into MET_Related_Tracks values(3,'Specialist plan')

insert into studentActivityUpdated values('GDG','club','./images/stActivitiesPageImages/gdgN.svg','linear-gradient(to left,rgba(22, 160, 93, 1),rgba(79, 141, 245, 1),rgba(22, 160, 93, 1))','GDG GUC is part of the biggest technical communities in the world. They aim to establish interesting conferences, competitions, and many other creative activities.','https://www.facebook.com/GDG.GUC.sc','https://www.instagram.com/gdg.guc/?fbclid=IwAR33niFuVbxlHxFo1nqwM__PBD7DsYGS0s3ilCxzasoHx8az95-6n79e1cU')
insert into MET_Related_Tracks values(4,'Software')
insert into MET_Related_Tracks values(4,'Hardware')
insert into MET_Related_Tracks values(4,'App Development')

insert into studentActivityUpdated values('IEEE','club','./images/stActivitiesPageImages/ieeeN.svg','linear-gradient(to left,rgba(10, 71, 152, 0.5),rgba(10, 71, 152, 1))','IEEE is a nonprofit global organization dedicated to advancing technology for the benefit of humanity. IEEE GUC students branch aims to maintain this identity by inspiring students to innovate for a better future through our events, workshops, sessions and educational activities.','https://www.facebook.com/IEEE.GUC.SB/about/?ref=page_internal','https://www.instagram.com/ieeegucsb/')
insert into MET_Related_Tracks values(5,'Web Development')
insert into MET_Related_Tracks values(5,'Data Science')
insert into MET_Related_Tracks values(5,'Hardware')

insert into studentActivityUpdated (title,type,icon,[background-color],about,facebook) values('SAVVY','club','./images/stActivitiesPageImages/svyN.svg','linear-gradient(to right,rgba(51, 102, 187, 1),rgba(51, 102, 187, 1),rgba(37, 175, 68, 1))','Savvy provides helpful, impactful, and educational Computer Science content for all.','https://www.facebook.com/savvy.guc')
insert into MET_Related_Tracks values(6,'Web Development')
insert into MET_Related_Tracks values(6,'Cyber Security')
insert into MET_Related_Tracks values(6,'Android Development')

go
create proc getStudentActivity 
@id int 
as
select * 
from studentActivityUpdated s,MET_Related_Tracks m
where s.id=m.activity_id and s.id=@id

go
create proc getIcon
as
select id,icon 
from studentActivityUpdated

go
create proc addStudentActivity
@title varchar(50),
@type varchar(50),
@about varchar(500),
@facebook varchar(200),
@instagram varchar(200),
@gradient varchar(200)
as
insert into studentActivityUpdated (title,type,about,facebook,instagram,[background-color])values
(@title,@type,@about,@facebook,@instagram,@gradient)


go
create proc addTrackToStudentActivity
@track varchar(200)
as
declare @id int
select @id=max(id)
from studentActivityUpdated
insert into MET_Related_Tracks values(@id,@track)
