go
 create proc getInstructorById
@instructor_id int 
as
select title,name
from Instructors
where id=@instructor_id

go
create proc getCoursesAssignedToInstructor
@instructor_id int
as
select c.serial,c.code,c.name
from Course c,Teaching t,Settings s
where c.serial=t.serial and t.instructor_id=@instructor_id and t.semester_serial=s.semester_serial

go
 create proc getCourseBySerial
@course_serial int 
as
select code,name
from Course
where serial=@course_serial

go
create proc unassignInstructorToCourse
@instructor_id int,
@course_serial int
as
declare @currentSem int
select @currentSem=semester_serial from Settings;
delete 
from Teaching 
where instructor_id=@instructor_id and semester_serial=@currentSem
and serial=@course_serial