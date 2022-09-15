UPDATE Users
SET roles = 'active'
WHERE id = 1;

UPDATE Users
SET roles = 'active'
WHERE id = 2;

UPDATE Users
SET roles = 'active'
WHERE id = 3;

UPDATE Users
SET roles = 'active'
WHERE id = 4;

UPDATE Users
SET roles = 'active'
WHERE id = 5;

go
create proc deleteInstructor
@id int
as 
update Users set roles ='previous' where id=@id 

go
drop proc getAllInstructors

go
create proc getAllInstructors
as
select I.id,I.title,I.name from  Instructors I, Users U
where I.id = U.id and U.roles = 'active'

go
CREATE procedure searchAlumniName @id int, @name varchar(100) output
As
select @name=name from Honors where id=@id 

go
CREATE procedure searchInstructor @name varchar(50)
As
select I.id,I.title,I.name from Instructors I, Users U
where I.id = U.id and I.name like '%' + @name+ '%' and U.roles = 'active' 

--searchstudentactivity
go
CREATE PROCEDURE searchStudentActivity @name varchar(100)
AS
	SELECT Id,title from studentActivityUpdated where title like '%'+ISNULL(@name,title)+'%'
RETURN 0

--getInstructor
go
create proc getInstructorName
as
select I.id,I.name from  Instructors I, Users U
where I.id = U.id and U.roles = 'active'

go
go

ALTER TABLE Teaching
ADD CONSTRAINT deleteIns
    FOREIGN KEY (instructor_id)
    REFERENCES Instructors (id)
    ON DELETE CASCADE;

go

ALTER TABLE Doctors
ADD CONSTRAINT deleteInsfromDoc
    FOREIGN KEY (id)
    REFERENCES Instructors (id)
    ON DELETE CASCADE;

go

ALTER TABLE TAs
ADD CONSTRAINT deleteInsfromTAs
    FOREIGN KEY (id)
    REFERENCES Instructors (id)
    ON DELETE CASCADE;
--searchAlumni
go

CREATE procedure searchAlumni @name varchar(100)
As
select id,name from Honors where name like '%' + @name + '%'

--searchCourse
go
CREATE procedure searchCourses @name varchar(100)
As
select code, name, serial from Course where name like '%' + @name + '%' or code like '%' + @name + '%' 
--getAllCourses
go
create procedure getAllCourses 
As
select code, name, serial from Course 

--Admin Remove Course
go
create procedure deleteCourseS @id int
as 
begin
delete from Course where serial=@id
end


--------------------------------
go
ALTER TABLE MET_Related_Tracks
ADD CONSTRAINT metrelatedtracks
FOREIGN KEY(activity_id) REFERENCES studentActivityUpdated(Id)
ON DELETE CASCADE

go
ALTER TABLE Course_Major
ADD CONSTRAINT deletecm
FOREIGN KEY(course_id) REFERENCES Course(serial)
ON DELETE CASCADE




ALTER TABLE Teaching 
ADD CONSTRAINT deletecourse
FOREIGN KEY(serial) REFERENCES Course(serial)
ON DELETE CASCADE


ALTER TABLE Course_Updates 
ADD CONSTRAINT deletecourseupdates2
FOREIGN KEY(course_serial) REFERENCES Course(serial)
ON DELETE CASCADE



drop table prerequiste

CREATE TABLE [dbo].[Prerequiste] (
    [course1] INT NOT NULL,
    [course2] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([course1] ASC, [course2] ASC),
    FOREIGN KEY ([course1]) REFERENCES [dbo].[Course] ([serial]) on delete cascade,
    FOREIGN KEY ([course2]) REFERENCES [dbo].[Course] ([serial])on delete no action
);

ALTER TABLE CourseWeek
ADD CONSTRAINT deletecourseweek
FOREIGN KEY(course_serial) REFERENCES Course(serial)
ON DELETE CASCADE


ALTER TABLE Material
ADD CONSTRAINT deletecoursematerial
FOREIGN KEY(course_week) REFERENCES CourseWeek(serial)
ON DELETE CASCADE

ALTER TABLE Course_Resources
ADD CONSTRAINT deletecourseresources
FOREIGN KEY(course_serial) REFERENCES Course(serial)
ON DELETE CASCADE

ALTER TABLE Education 
ADD CONSTRAINT deleteInst
FOREIGN KEY(instructor_id) REFERENCES Instructors(id)
ON DELETE CASCADE

ALTER TABLE Employment 
ADD CONSTRAINT deleteInstr
FOREIGN KEY(instructor_id) REFERENCES Instructors(id)
ON DELETE CASCADE

ALTER TABLE Publish 
ADD CONSTRAINT deleteInstru
FOREIGN KEY(instructor_id) REFERENCES Instructors(id)
ON DELETE CASCADE

ALTER TABLE Research_Links 
ADD CONSTRAINT deleteInstruc
FOREIGN KEY(instructor_id) REFERENCES Instructors(id)
ON DELETE CASCADE

ALTER TABLE Instructor_ResearchInterest
ADD CONSTRAINT deleteInstruct
FOREIGN KEY(instructor_id) REFERENCES Instructors(id)
ON DELETE CASCADE

ALTER TABLE DoneActivity
ADD CONSTRAINT deleteInstructo
FOREIGN KEY(instructor_id) REFERENCES Instructors(id)
ON DELETE CASCADE

ALTER TABLE Instructor_ResearchTopic
ADD CONSTRAINT deleteInstructor2
FOREIGN KEY(instructor_id) REFERENCES Instructors(id)
ON DELETE CASCADE
