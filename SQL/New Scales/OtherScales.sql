/****** Script for SelectTopNRows command from SSMS  ******/
/*
INSERT [dbo].[ScaleTypes] ([ID], [Name]) VALUES (1, N'Major')
GO
INSERT [dbo].[ScaleTypes] ([ID], [Name]) VALUES (2, N'Minor Harmonic')
GO
INSERT [dbo].[ScaleTypes] ([ID], [Name]) VALUES (3, N'Minor Melodic')
GO
INSERT [dbo].[ScaleTypes] ([ID], [Name]) VALUES (4, N'Major arpeggio')
GO
INSERT [dbo].[ScaleTypes] ([ID], [Name]) VALUES (5, N'Minor arpeggio')
GO
INSERT [dbo].[ScaleTypes] ([ID], [Name]) VALUES (6, N'Dominant 7th')
GO
INSERT [dbo].[ScaleTypes] ([ID], [Name]) VALUES (7, N'Diminished 7th')
GO
*/

select max(id) from [Scales]
--60
insert into [Scales]
SELECT 60 + [ID]
      ,[StartingNote]
      ,5
      ,[Notes]
  FROM [Scales].[dbo].[Scales]
  where scaletype = 2

  select 90 + KeyIndex,* from KeySignatures

  insert into [Scales]
  SELECT 90 + KeyIndex
      ,MajorRoot
      ,6
      ,[KeyNotes]
  FROM [Scales].[dbo].KeySignatures

select distinct [note] note 
into #tmp
from [dbo].[ViolinNotes]
where Note not like '%#%'

insert into [Scales]
select row_number() over (order by note) + 105 as id, Note,7,''
from #tmp
