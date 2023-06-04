USE [Scales]
GO

/****** Object:  View [dbo].[vwScales]    Script Date: 28/05/2023 20:13:16 ******/
DROP VIEW [dbo].[vwScalesAll]
GO

/****** Object:  View [dbo].[vwScales]    Script Date: 28/05/2023 20:13:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
Octaves	Scale	StartingNote	Notes	Name	KeyNotes
2	1	C	C D E F G A B C	Major	None
*/

CREATE VIEW [dbo].[vwScalesAll]
AS
SELECT a.ABRSMScaleID,a.ScaleID,s.scaletypeID,s.ScaleType,a.Octaves,s.StartingNote,s.Notes, s.KeyNotes
from dbo.vwABRSMScales a
INNER JOIN [dbo].[vwKeyScales] s
ON S.ID = a.ScaleID
and s.ScaleTypeID = a.scaletypeID

GO


