CREATE PROCEDURE [dbo].[AddDepartment]
	@deptName varchar(50)
AS
	declare @depId int
	set @depId = 0;
	begin try
		Insert into Department (DepartmentName) values (@deptName)
	end try
	begin catch
		declare @errorCode int 
		set @errorCode  = ERROR_STATE()

		declare @errorMessage int 
		set @errorMessage  = error_message()

		exec usp_ErrorLogging  @errorCode,@errorMessage
	end catch
	

