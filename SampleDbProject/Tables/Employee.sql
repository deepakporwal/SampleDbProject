CREATE TABLE [dbo].[Employee]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Fk_Dept_Id] INT NOT NULL, 
    [EmpName] VARCHAR(50) NULL, 
    [EmpDob] DATETIME NULL, 
    [EmpSalary] NCHAR(10) NULL, 
    [EmpAge] INT NULL DEFAULT 0
)
