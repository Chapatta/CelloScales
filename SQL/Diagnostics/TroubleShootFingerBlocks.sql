Select * from scales s
inner join [dbo].[ScaleTypes] t
on t.ID = s.ScaleType
where startingnote = 'bb'
and s.ScaleType = 3 --2	Major,2	Minor Harmonic,3	Minor Melodic

select Scale,Octaves,FingerBlock,NotePosition,	String,	Fret,	Direction,	Note,		Finger,	CelloPosition
from fingerblocks
where scale = 43 --6
and [Direction] = 'asc'
and octaves = 3
order by fingerblock,noteposition

select Scale,Octaves,FingerBlock,NotePosition,	String,	Fret,	Direction,	Note,		Finger,	CelloPosition
from fingerblocks
where scale = 43 --6
and [Direction] = 'desc'
and octaves = 3
order by fingerblock desc,noteposition desc

--select * from 
update
fingerblocks 
set NotePosition = 1
,string = 'A'
where Scale	= 10
and Octaves	= 3
and FingerBlock = 3	
and NotePosition = 1	
and String = 'd'	
and Fret = 0	
and Direction = 'asc'
and Note = 'a' 
and Finger = 0	
and CelloPosition = '1st'

--
select * from scales s
left outer join abrsmscales a
on a.Scale = s.ID 
where s.id = 20

select * from abrsmscales
select max(id) from abrsmscales

insert into abrsmscales values (5,20,2,53)

insert into abrsmscales values (5,21,2,54)

update fingerblocks
set scale = 21
where scale = 6



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
