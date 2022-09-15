create proc deleteUpdate @updateId int
as
delete from Course_Updates where id =@updateId