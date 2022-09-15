CREATE procedure searchInstructor @name varchar(50)
As
select id,name from Instructors where name like '%' + ISNULL(@name, name) + '%'
