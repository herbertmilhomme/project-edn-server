CREATE TABLE [dbo].[ItemSlotTypes] 
(
	[Id]			TINYINT IDENTITY(0,1) NOT NULL,	--SlotType: Used as enum
	[Description]	varchar(24) NOT NULL,			--Name/Description
	[Category]		varchar(24) NOT NULL,			--Item Slot (should be an enum)
	CONSTRAINT [PK_ItemSlotType] PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

INSERT INTO [dbo].[ItemSlotTypes] ( [Id], [Description], Category ) VALUES (0	,'No restriction'	,'NO'			);
INSERT INTO [dbo].[ItemSlotTypes] ( [Id], [Description], Category ) VALUES (1	,'Melee'			,'Weapon'		);
INSERT INTO [dbo].[ItemSlotTypes] ( [Id], [Description], Category ) VALUES (2	,'Range'			,'Weapon'		);
INSERT INTO [dbo].[ItemSlotTypes] ( [Id], [Description], Category ) VALUES (3	,'Item'				,'Special item'	);
INSERT INTO [dbo].[ItemSlotTypes] ( [Id], [Description], Category ) VALUES (4	,'Head'				,'Part'			);
INSERT INTO [dbo].[ItemSlotTypes] ( [Id], [Description], Category ) VALUES (5	,'Core'				,'Part'			);
INSERT INTO [dbo].[ItemSlotTypes] ( [Id], [Description], Category ) VALUES (6	,'Arms'				,'Part'			);
INSERT INTO [dbo].[ItemSlotTypes] ( [Id], [Description], Category ) VALUES (7	,'Legs'				,'Part'			);
INSERT INTO [dbo].[ItemSlotTypes] ( [Id], [Description], Category ) VALUES (9	,'Booster'			,'Part'			);
INSERT INTO [dbo].[ItemSlotTypes] ( [Id], [Description], Category ) VALUES (10	,'SetItem'			,'SetItem'		);
GO 