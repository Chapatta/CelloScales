USE [Scales]
GO

/****** Object:  View [dbo].[vwScales]    Script Date: 28/05/2023 18:50:58 ******/
DROP VIEW [dbo].[vwScales]
GO

/****** Object:  View [dbo].[vwScales]    Script Date: 28/05/2023 18:50:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO






/*
Octaves	Scale	StartingNote	Notes	Name	KeyNotes
2	1	C	C D E F G A B C	Major	None
*/

CREATE VIEW [dbo].[vwScales]
AS
with maxGradeABRSMScales as
(SELECT ScaleID scale,max(Grade) Grade
--,.ABRSMScales.ID,startingnote,st.[Name],scaletype,s.Notes, ks.KeyNotes
from dbo.vwABRSMScales
group by ScaleID)
SELECT a.ABRSMScaleID,a.ScaleID,s.scaletypeID,s.ScaleType,a.Octaves,s.StartingNote,s.Notes, s.KeyNotes
from dbo.vwABRSMScales a
inner join maxGradeABRSMScales ds
on ds.Scale = a.ScaleID
and ds.Grade = a.Grade
INNER JOIN [dbo].[vwKeyScales] s
ON S.ID = a.ScaleID
and s.ScaleTypeID = a.scaletypeID

GO


