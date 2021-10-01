CREATE TABLE [dbo].[SqlErrorLog]
(
	[ErrorLogId] BIGINT NOT NULL PRIMARY KEY, 
    [ErrorTime] DATETIME NOT NULL, 
    [UserName] NVARCHAR(100) NOT NULL, 
    [ErrorNumber] INT NOT NULL, 
    [ErrorSeverity] INT NOT NULL, 
    [ErrorState] INT NOT NULL, 
    [ErrorProcedure] NVARCHAR(150) NULL, 
    [ErrorLine] INT NULL, 
    [ErrorMessage] NVARCHAR(4000) NULL
)
