--missing scales
/* Major : 1, Minor Harmonic : 2, Minor Melodic : 3*/
select s.ID,s.StartingNote,t.[Name] ScaleType 
from scales s
inner join ScaleTypes t
on t.ID = s.ScaleType
where s.ID not in (select distinct scale from FingerBlocks)
order by 2

select a.ID ABRSMScaleID,Grade,concat(s.StartingNote, ' ' , t.[Name], ' ' , a.Octaves, ' octaves') 
from ABRSMScales a
inner join scales s
on s.ID = a.Scale
inner join ScaleTypes t
on t.ID = s.ScaleType
where grade = 6
order by Octaves

select a.ID ABRSMScaleID,Grade,concat(s.StartingNote, ' ' , t.[Name], ' ' , a.Octaves, ' octaves') 
from ABRSMScales a
inner join scales s
on s.ID = a.Scale
inner join ScaleTypes t
on t.ID = s.ScaleType
where 
--s.StartingNote = 'C'
s.StartingNote in ('C','Eb','F#','G','Bb') --grade 6
--and scaletype = = 6
order by 3, Grade desc

/*
s.StartingNote in ('C','Eb','F#','G','Bb') --grade 6
*/
/*
INSERT INTO [dbo].[ABRSMScales]
           ([Grade]
           ,[Scale]
           ,[Octaves]
           ,[ID])
     VALUES
           (<Grade, tinyint,>
           ,<Scale, tinyint,>
           ,<Octaves, tinyint,>
           ,<ID, smallint,>)
*/