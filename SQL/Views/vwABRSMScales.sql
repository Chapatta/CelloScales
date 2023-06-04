USE [Scales]
GO

/****** Object:  View [dbo].[vwABRSMScales]    Script Date: 28/05/2023 18:33:52 ******/
DROP VIEW [dbo].[vwABRSMScales]
GO

/****** Object:  View [dbo].[vwABRSMScales]    Script Date: 28/05/2023 18:33:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


/*
Octaves	Scale	StartingNote	Notes	Name	KeyNotes
2	1	C	C D E F G A B C	Major	None
*/

CREATE VIEW [dbo].[vwABRSMScales]
AS
select ROW_NUMBER() over (order by  a.Scale,a.Grade) as ABRSMScaleID,a.grade,s.ID as ScaleID,s.StartingNote,t.id as ScaleTypeID, t.[name] as scaletype,a.Octaves
from ABRSMScales a
inner join [dbo].[Scales] s
on s.ID = a.Scale
inner join [dbo].[ScaleTypes] t
on t.ID = s.ScaleType
where grade <= 6
GO


