CREATE TABLE [dbo].[AbilityGrowthTypes]
(
	[Id]			TINYINT IDENTITY(0,1) NOT NULL,	--Used as enum
	[Name]			VARCHAR(15) NOT NULL,			--Name/Description
	CONSTRAINT [PK_AbilityGrowthType] PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

--Not allowed to insert into ID column...
INSERT INTO [dbo].[AbilityGrowthTypes]([Id], [Name]) VALUES(0,'PA_UNKNOWN');	--Exteel Default
INSERT INTO [dbo].[AbilityGrowthTypes]([Id], [Name]) VALUES(1,'PA_HP');			--Exteel Default
INSERT INTO [dbo].[AbilityGrowthTypes]([Id], [Name]) VALUES(2,'PA_MV');			--Exteel Default
INSERT INTO [dbo].[AbilityGrowthTypes]([Id], [Name]) VALUES(3,'PA_EN');			--Exteel Default
INSERT INTO [dbo].[AbilityGrowthTypes]([Id], [Name]) VALUES(4,'PA_SCAN_MPU');	--Exteel Default
INSERT INTO [dbo].[AbilityGrowthTypes]([Id], [Name]) VALUES(5,'PA_SP_OHE');		--Exteel Default
INSERT INTO [dbo].[AbilityGrowthTypes]([Id], [Name]) VALUES(6,'PA_AIM_OHR');	--Exteel Default