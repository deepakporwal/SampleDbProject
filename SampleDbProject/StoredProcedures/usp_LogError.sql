CREATE PROCEDURE [dbo].[usp_LogError]
	
AS
	BEGIN
		SET NOCOUNT ON

		INSERT INTO [dbo].SqlErrorLog 
		(
		 [Username],
		 [ErrorNumber],
		 [ErrorSeverity],
		 [ErrorState],
		 [ErrorProcedure],
		 [ErrorLine],
		 [ErrorMessage]
		)
		values
		(
		Convert(sysname,Current_User),
		ERROR_NUMBER(),
		ERROR_SEVERITY(),
		ERROR_STATE(),
		ERROR_PROCEDURE(),
		ERROR_LINE(),
		ERROR_MESSAGE()
		)
	END
RETURN 
