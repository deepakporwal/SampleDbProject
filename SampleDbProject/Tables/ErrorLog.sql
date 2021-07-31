CREATE TABLE [dbo].[ErrorLog]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [ErrorCode] INT NULL, 
    [ErrorDesc] NVARCHAR(MAX) NULL
)
