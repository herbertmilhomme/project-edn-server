CREATE TABLE [dbo].[Account]  
(
	[Id]						varchar(450) NOT NULL,			-- GUID; IDENTITY
	[UserId]					varchar(64) not null,			-- Username for logging in; rename to [Username]?
	[Fullname]					varchar(128) null,				-- Identification/correspondence (player behind monitor)
	[Age]						tinyint null,					--  
	[Sex]						bit null,						-- Player behind monitor, not in-game mech
	[StatusId]					tinyint not null,				-- FOREIGN KEY, But not really necessary
	[CreateDate]				datetime2 null,					-- Date account created (different from date player was made)
	[PasswordQuestionId]		tinyint null,					-- 
	[PasswordQuestionAnswer]	varchar(30) null,				-- 
	[Country]					char(2) null,					-- Player region where they're logging in from
	[Email]						varchar(256) not null,			-- Can be used for logging in or password recovery
	[EmailConfirmed]			bit NOT NULL default ('false'),
	[DeleteFlag]				bit not null default ('false'),	--  
	[HackingType]				tinyint null,					-- Type of hacking you are being punished for
	[HackingRegTime]			datetime null,					-- Date registered for hacking punishment 
	[EndHackingBlockTime]		datetime null,					-- 
	[LastLoginTime]				datetime null,					-- Updates on successful sign-ins
	[LastLogoutTime]			datetime null,					-- 
	[ServerId]					tinyint null,					-- 
	CONSTRAINT [Account_PK] PRIMARY KEY  CLUSTERED ( [Id] ),
	CONSTRAINT [Account_UserStatusType_FK] FOREIGN KEY ( [StatusId] ) REFERENCES [UserStatusTypes] ( [Id] )
)
GO

CREATE UNIQUE INDEX UQ_Account_UserID ON [Account] ([UserID]) WHERE [UserID] IS NOT NULL;
GO
CREATE NONCLUSTERED INDEX IX_Account_CreateDate ON [Account]( [CreateDate] );
GO
CREATE NONCLUSTERED INDEX IX_Account_UserID ON [Account]( [UserID] );
GO
CREATE NONCLUSTERED INDEX IX_Account_Email ON [Account]( [Email] );
GO
CREATE NONCLUSTERED INDEX IX_Account_LastLoginTime ON [Account]( [LastLoginTime] );
GO
CREATE NONCLUSTERED INDEX IX_Account_LastLogoutTime ON [Account]( [LastLogoutTime] );