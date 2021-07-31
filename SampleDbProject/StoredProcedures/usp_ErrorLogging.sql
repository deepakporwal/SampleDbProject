CREATE PROCEDURE [dbo].[usp_ErrorLogging]
	@errorCode int = 0,
	@errorMessage nvarchar(max)
AS
	insert into ErrorLog values (@errorCode,@errorMessage)

