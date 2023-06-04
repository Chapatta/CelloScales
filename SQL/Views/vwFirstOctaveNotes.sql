USE [Scales]
GO

/****** Object:  View [dbo].[vwFirstOctaveNotes]    Script Date: 01/06/2023 20:07:34 ******/
DROP VIEW [dbo].[vwFirstOctaveNotes]
GO

/****** Object:  View [dbo].[vwFirstOctaveNotes]    Script Date: 01/06/2023 20:07:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


/*
Octaves	Scale	StartingNote	Notes	Name	KeyNotes
2	1	C	C D E F G A B C	Major	None

select * from [dbo].[ScaleTypes]
*/

CREATE VIEW [dbo].[vwFirstOctaveNotes]
AS
	select [Note],min(fret) as fret 
	from [dbo].[ViolinNotes]
	where string = 'G'
	group by [Note]

GO


