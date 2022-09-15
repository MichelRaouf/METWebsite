GO
ALTER TABLE [dbo].[Course_Major]
    ADD [semesterNo] INT NOT NULL;


GO

create Proc AdminAddCourseMajor
@course_id INT,
@major_name varchar(50),
@semesterNo int
as

insert into Course_Major values(@course_id, @major_name, @semesterNo);