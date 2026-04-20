CREATE TABLE [dbo].[Service]
(
	[HeatingUnitID] INT NOT NULL, 
    [EmployeeNumber] CHAR(10) NOT NULL,
    [ServiceType] NCHAR(10) NULL,
    foreign KEY ([HeatingUnitID]) REFERENCES dbo.HEATINGUNIT(HeatingUnitID),
    FOREIGN KEY ([EmployeeNumber]) REFERENCES dbo.TECHNICIAN(EmployeeNumber), 
    CONSTRAINT [PK_Service] PRIMARY KEY ([HeatingUnitID], [EmployeeNumber])
)
