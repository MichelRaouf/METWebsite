create proc getInstructorName
as
select id,name from Instructors

go

create proc deleteInstructor
@id int
as 
delete from Instructors where id=@id

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