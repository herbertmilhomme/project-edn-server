CREATE TABLE [dbo].[Player]						-- Extension of Account Table but focused around GAME experience (Only one PLAYER per ACCOUNT... for now)
(
	[AccountId]			varchar(450) not null,	-- GUID, FK; Account associated with this item
	[Nickname]			varchar(20) not null,	-- CallSign; Player IGN is different from User Login Id
	[OperatorId]		tinyint not null,		-- FK of active operator pilot for mech
	[LastMechId]		bigint null,			-- FK of active mech in hanger
	[TotalExpPoints]	bigint not null,		-- Points used to display level and rank
	[AbilityPoints]		smallint not null,		-- Points available to improving player stats
	[RepairPoints]		int not null,			-- Repair damage made to mechs/items
	[RechargePoints]	int not null,			-- Amount of times you can bypass spawn timer
	[Credits]			int not null,			-- Regular Currency
	[Coins]				smallint not null,		-- Premium Currency; should be on account...
	[RegDate]			datetime not null,		-- Date registered with game 
	[PlayTime]			int not null,			--
	[GameCount]			int not null,			--
	[KillCount]			int not null,			--
	[AssistCount]		int not null,			--
	[DeathCount]		int not null,			--
/* In-game pilot info and stats are recorded to player, down below...
		AbilityPointsAvailable = 0,
		AimLevel = 0,
		EnLevel = 0,
		HpLevel = 0,
		MeleeLevel = 0,
		MoveSpeedLevel = 0,
		RangedLevel = 0,
		RocketLevel = 0,
		ScanRangeLevel = 0,
		SiegeLevel = 0,
		SpLevel = 0*/
-- 	[Stat_HP]			tinyint not null,		--
-- 	[Stat_EN]			tinyint not null,		--
-- 	[Stat_SP]			tinyint not null,		--
-- 	[Stat_Speed]		tinyint not null,		--
-- 	[Stat_Scan]			tinyint not null,		--
-- 	[Stat_Mark]			tinyint not null,		--
--	CONSTRAINT [Player_PK] PRIMARY KEY  CLUSTERED ( [Name] ),
	CONSTRAINT [Player_PK] PRIMARY KEY  CLUSTERED ( [AccountId] ),
	CONSTRAINT [Player_Account_Id_FK] FOREIGN KEY ( [AccountId] ) REFERENCES [Account] ( [ID] )
)
GO

--CREATE UNIQUE INDEX UQ_Player_AID ON [Player] ([AID]) WHERE [AID] IS NOT NULL;
CREATE UNIQUE INDEX UQ_Player_CallSign ON [Player] ([Nickname]) WHERE [Nickname] IS NOT NULL; --Unique player name, Id is already primary key
GO 