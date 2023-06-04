Select * from scales s
inner join [dbo].[ScaleTypes] t
on t.ID = s.ScaleType
where startingnote = 'C#'
and s.ScaleType = 2 --2	Major,2	Minor Harmonic,3	Minor Melodic

20

select * from scales s
left outer join abrsmscales a
on a.Scale = s.ID 
where s.id = 20


--select * from vwscales
SELECT ABRSMScales.Grade,.ABRSMScales.ID,dbo.ABRSMScales.Scale,s.ScaleType,dbo.ABRSMScales.Octaves,s.StartingNote,st.[Name],s.Notes, ks.KeyNotes
from dbo.ABRSMScales 
INNER JOIN dbo.Scales s
ON S.ID = dbo.ABRSMScales.Scale
inner join dbo.ScaleTypes st
ON st.ID = s.ScaleType 
left outer join KeySignatures ks 
on ks.MajorRoot = s.StartingNote
where StartingNote = 'G'
order by scaletype,octaves

select * from fingerblocks
where scale = 1
