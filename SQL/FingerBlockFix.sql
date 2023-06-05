/*
Select * from scales s
inner join [dbo].[ScaleTypes] t
on t.ID = s.ScaleType
where startingnote = 'bb'
and s.ScaleType = 3 --2	Major,2	Minor Harmonic,3	Minor Melodic

select Scale,Octaves,FingerBlock,NotePosition,	String,	Fret,	Direction,	Note,		Finger,	CelloPosition
from fingerblocks
where scale = 33
and [Direction] = 'asc'
and octaves = 3
order by fingerblock,noteposition

select Scale,Octaves,FingerBlock,NotePosition,	String,	Fret,	Direction,	Note,		Finger,	CelloPosition
from fingerblocks
where scale = 43
and [Direction] = 'desc'
and octaves = 3
order by fingerblock desc,noteposition desc
*/

/*
delete from fingerblocks
where Scale	= 43
and Octaves = 3
and Direction = 'desc'
*/
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(43,3,13,3,'G',3,'Desc','Bb',2,'1st')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(43,3,13,2,'G',5,'Desc','C',3,'1st')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(43,3,13,1,'G',6,'Desc','Db',4,'1st')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(43,3,12,4,'D',1,'Desc','Eb',1,'1st')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(43,3,12,3,'D',3,'Desc','F',2,'1st')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(43,3,12,2,'D',4,'Desc','Gb',3,'1st')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(43,3,12,1,'D',6,'Desc','Ab',4,'1st')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(43,3,11,4,'A',1,'Desc','Bb',1,'1st')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(43,3,11,3,'A',3,'Desc','C',2,'1st')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(43,3,11,2,'A',4,'Desc','Db',3,'1st')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(43,3,11,1,'A',6,'Desc','Eb',4,'1st')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(43,3,10,3,'E',1,'Desc','F',1,'1st')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(43,3,10,2,'E',2,'Desc','Gb',2,'1st')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(43,3,10,1,'E',4,'Desc','Ab',3,'1st')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(43,3,9,3,'E',6,'Desc','Bb',1,'4th')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(43,3,9,2,'E',8,'Desc','C',2,'4th')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(43,3,9,1,'E',9,'Desc','Db',3,'4th')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(43,3,8,4,'E',11,'Desc','Eb',1,'7th')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(43,3,8,3,'E',13,'Desc','F',2,'7th')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(43,3,8,2,'E',14,'Desc','Gb',3,'7th')
insert into fingerblocks(Scale,Octaves,FingerBlock,NotePosition, String, Fret, Direction, Note,  Finger, CelloPosition) values(43,3,8,1,'E',16,'Desc','Ab',4,'7th')
