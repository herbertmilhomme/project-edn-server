-- Values for User Account Status... Not really needed for database, will be added into backend code though
CREATE TABLE [dbo].[UserStatusTypes] 
(
	[Id]	tinyint NOT NULL,		--Enum value
	[Name]	varchar (128) NOT NULL,	--Name/Description
	CONSTRAINT [UserStatus_PK] PRIMARY KEY  CLUSTERED ( [Id] )
)
GO

INSERT INTO [dbo].[UserStatusTypes] ( [Id], [Name] ) VALUES (0		,'Free'					); --basic account
INSERT INTO [dbo].[UserStatusTypes] ( [Id], [Name] ) VALUES (1		,'Subscription Account'	); --not needed if no user contribution
INSERT INTO [dbo].[UserStatusTypes] ( [Id], [Name] ) VALUES (2		,'Best Gamer'			); --positive role-models
INSERT INTO [dbo].[UserStatusTypes] ( [Id], [Name] ) VALUES (100	,'Marked Man'			); --Flagged for Report/Monitor
INSERT INTO [dbo].[UserStatusTypes] ( [Id], [Name] ) VALUES (101	,'First Warning'		); --punishment status
INSERT INTO [dbo].[UserStatusTypes] ( [Id], [Name] ) VALUES (102	,'Second Warning'		); --punishment status
INSERT INTO [dbo].[UserStatusTypes] ( [Id], [Name] ) VALUES (103	,'Third Warning'		); --punishment status
INSERT INTO [dbo].[UserStatusTypes] ( [Id], [Name] ) VALUES (104	,'Chatting Forbidden'	); --punishment status
INSERT INTO [dbo].[UserStatusTypes] ( [Id], [Name] ) VALUES (105	,'Time Block'			); --punishment status
INSERT INTO [dbo].[UserStatusTypes] ( [Id], [Name] ) VALUES (252	,'Event Manager'		); --admin positions
INSERT INTO [dbo].[UserStatusTypes] ( [Id], [Name] ) VALUES (253	,'Permanent Block'		); --admin positions
INSERT INTO [dbo].[UserStatusTypes] ( [Id], [Name] ) VALUES (254	,'Developer'			); --admin positions
INSERT INTO [dbo].[UserStatusTypes] ( [Id], [Name] ) VALUES (255	,'Manager'				); --admin positions
GO