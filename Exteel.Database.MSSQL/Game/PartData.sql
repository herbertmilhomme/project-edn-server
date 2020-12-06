CREATE TABLE [dbo].[PartData]
(
	[Id]					INT IDENTITY(1,1) NOT NULL,	--No reason...
	[TemplateId]			INT NOT NULL,				--Foreign Key
	[Name]					VARCHAR(10) NOT NULL,		--string used for localization
	[Description]			VARCHAR(10) NOT NULL,		--string used for localization
	[Model]					VARCHAR(10) NOT NULL,		--mesh/part identifier
	[EnergyDrain]			INT NOT NULL,				--units to deduct from mech core on equip
	[RepairTime]			FLOAT NOT NULL,				--uhh...
	[IFOSize]				INT NOT NULL,				--not sure, hitbox?
	[Size]					INT NOT NULL,				--light,medium,heavy...
	[Weight]				INT NOT NULL,				--units of measure for mech gravity
	[Grade]					INT NOT NULL,				--rank needed to use
	[NPCPart]				BIT NOT NULL,				--can players see in game menu?
	CONSTRAINT [PK_PartData] PRIMARY KEY CLUSTERED ([TemplateId] ASC)
	--CONSTRAINT [FK_AbilityGrowth_Templates_TemplateId] FOREIGN KEY([TemplateId]) REFERENCES [dbo].[Templates] ([Id])
);