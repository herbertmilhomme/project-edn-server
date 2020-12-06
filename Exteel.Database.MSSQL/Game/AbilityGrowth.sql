CREATE TABLE [dbo].[AbilityGrowth]
(
	[Id]					INT IDENTITY(1,1) NOT NULL,	--No reason...
	[TemplateId]			INT NOT NULL,				--Foreign Key
	[AbilityGrowthTypeId]	INT NOT NULL,				--Foreign Key
	[EffectId]				INT NOT NULL,				--Foreign Key
	[Level]					INT NOT NULL,				--Level player needs to be at before can use
	[CostPoint]				INT NOT NULL,				--How many points are deducted from player when used
	CONSTRAINT [PK_AbilityGrowth] PRIMARY KEY CLUSTERED ([TemplateId] ASC)
	--CONSTRAINT [FK_AbilityGrowth_Templates_TemplateId] FOREIGN KEY([TemplateId]) REFERENCES [dbo].[Templates] ([Id])
	--CONSTRAINT [FK_AbilityGrowth_AbilityEffects_EffectId] FOREIGN KEY([EffectId]) REFERENCES [dbo].[AbilityEffects] ([Id])
	--CONSTRAINT [FK_AbilityGrowth_AbilityGrowthTypes_AbilityGrowthTypeId] FOREIGN KEY([AbilityGrowthTypeId]) REFERENCES [dbo].[AbilityGrowthTypes] ([Id])
);