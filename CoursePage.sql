
create procedure weekDetails @course_id int
As
select week_number, title,notes, serial from CourseWeek where @course_id=course_serial

go

create proc weekMaterials @weekSerial int
As
select name,file_link from Material where course_week = @weekSerial