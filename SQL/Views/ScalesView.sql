USE [Scales]
GO

/****** Object:  View [dbo].[vsScales]    Script Date: 07/05/2023 19:55:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--select * from [vwScales]
alter VIEW [dbo].[vwScales]
AS
SELECT dbo.ABRSMScales.Octaves, dbo.ABRSMScales.Scale, s.StartingNote, s.Notes, st.[Name],ks.KeyNotes
from dbo.ABRSMScales 
INNER JOIN dbo.Scales s
ON S.ID = dbo.ABRSMScales.Scale
inner join dbo.ScaleTypes st
ON st.ID = s.ScaleType 
left outer join KeySignatures ks 
on ks.MajorRoot = s.StartingNote
where st.ID = 1 --major
union
SELECT dbo.ABRSMScales.Octaves, dbo.ABRSMScales.Scale, s.StartingNote, s.Notes, st.[Name],ks.KeyNotes
from dbo.ABRSMScales 
INNER JOIN dbo.Scales s
ON S.ID = dbo.ABRSMScales.Scale
inner join dbo.ScaleTypes st
ON st.ID = s.ScaleType 
inner join KeySignatures ks 
on ks.MinorRoot = s.StartingNote
where st.ID <> 1 --major
GO

