/*
Select * from scales s
inner join [dbo].[ScaleTypes] t
on t.ID = s.ScaleType
where startingnote = 'e'
and s.ScaleType = 1 --2	Major,2	Minor Harmonic,3	Minor Melodic

select Scale,Octaves,FingerBlock,NotePosition,	String,	Fret,	Direction,	Note,		Finger,	CelloPosition
from fingerblocks
where scale = 5
and [Direction] = 'asc'
and octaves = 2
order by fingerblock,noteposition

select Scale,Octaves,FingerBlock,NotePosition,	String,	Fret,	Direction,	Note,		Finger,	CelloPosition
from fingerblocks
where scale = 32
and [Direction] = 'desc'
and octaves = 2
order by fingerblock desc,noteposition desc

update fingerblocks
set direction = 'Asc'
where [Direction] = 'Asc'

update fingerblocks
set direction = 'Desc'
where [Direction] = 'Desc'


select Scale,Octaves,FingerBlock,NotePosition,	String,	Fret,	Direction,	Note,		Finger,	CelloPosition
from fingerblocks
where scale = 32
and [Direction] = 'desc'
*/

/*
delete from fingerblocks
where Scale	= 32
and Octaves = 2
and Direction = 'desc'
*/

insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(32,2,8,4,'D',2,'Desc','E',1,'1st')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(32,2,8,3,'D',4,'Desc','F#',2,'1st')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(32,2,8,2,'D',5,'Desc','G',3,'1st')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(32,2,8,1,'D',7,'Desc','A',4,'1st')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(32,2,7,4,'A',2,'Desc','B',1,'1st')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(32,2,7,3,'A',3,'Desc','C',2,'1st')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(32,2,7,2,'A',5,'Desc','D',3,'1st')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(32,2,7,1,'A',7,'Desc','E',1,'4th')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(32,2,6,3,'A',9,'Desc','F#',2,'4th')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(32,2,6,2,'A',10,'Desc','G',3,'4th')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(32,2,6,1,'A',12,'Desc','A',4,'4th')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(32,2,5,4,'E',7,'Desc','B',1,'4th')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(32,2,5,3,'E',8,'Desc','C',2,'4th')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(32,2,5,2,'E',10,'Desc','D',3,'4th')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(32,2,5,1,'E',12,'Desc','E',4,'4th')
