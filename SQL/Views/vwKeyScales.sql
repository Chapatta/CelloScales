USE [Scales]
GO

/****** Object:  View [dbo].[vwKeyScales]    Script Date: 03/06/2023 08:14:29 ******/
DROP VIEW [dbo].[vwKeyScales]
GO

/****** Object:  View [dbo].[vwKeyScales]    Script Date: 03/06/2023 08:14:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO







/*
Octaves	Scale	StartingNote	Notes	Name	KeyNotes
2	1	C	C D E F G A B C	Major	None

select * from [dbo].[ScaleTypes]
*/

CREATE VIEW [dbo].[vwKeyScales]
AS
--major (incl arppegios)
select S.ID,StartingNote,st.id as ScaleTypeID,st.[name] as ScaleType, ks.KeyNotes,s.Notes
from [dbo].[KeySignatures] ks
inner join scales s
on s.StartingNote = ks.MajorRoot
inner join scaletypes st
on st.ID = s.ScaleType
where s.ScaleType in (1,4,6)
--Minors (incl arppegios)
union
select S.ID,StartingNote,st.id as ScaleTypeID, st.[name] as ScaleType, ks.KeyNotes,s.Notes
from [dbo].[KeySignatures] ks
inner join scales s
on s.StartingNote = ks.MinorRoot
inner join scaletypes st
on st.ID = s.ScaleType
where s.ScaleType in (2,3,5)
--Minors (incl arppegios)
union
select S.ID,StartingNote,st.id as ScaleTypeID, st.[name] as ScaleType, '',s.Notes
from [dbo].[KeySignatures] ks
inner join scales s
on s.StartingNote = ks.MinorRoot
inner join scaletypes st
on st.ID = s.ScaleType
where s.ScaleType in (7)

GO


