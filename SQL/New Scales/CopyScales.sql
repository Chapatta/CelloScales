--copy scale
--is there an abrsm entry
select s.id,s.startingnote,t.Name as scaleType,a.grade,a.octaves,
a.ID as ABRSMScaleID
from [dbo].[ABRSMScales] a
left outer join scales s
on s.ID = a.Scale
left outer join scaletypes t
on t.ID = s.ScaleType
where startingnote = 'E'

select max(id)
from [ABRSMScales]

--next one is 55

--insert abrsm scale
select s.id,s.startingnote,t.Name as scaleType, s.Notes as ScaleNotes
from scales s
inner join scaletypes t
on t.ID = s.ScaleType
where startingnote = 'E'
and scaletype = 3

INSERT INTO [dbo].[ABRSMScales]
           ([Grade]
           ,[Scale]
           ,[Octaves]
           ,[ID])
select 5,s.id,2,56
from scales s
inner join scaletypes t
on t.ID = s.ScaleType
where startingnote = 'E'
and scaletype = 3

/*
delete 
select *
from fingerblocks
where scale = 5
and octaves = 2
*/

--Identify existing scale to copy
select s.id,s.startingnote,t.Name as scaleType
from scales s
inner join scaletypes t
on t.ID = s.ScaleType
where startingnote = 'E'
and scaletype = 2

select *
from fingerblocks
where scale = 5
and octaves = 2

INSERT INTO [dbo].[FingerBlocks]
           ([Scale]
           ,[Octaves]
           ,[FingerBlock]
           ,[String]
           ,[Fret]
           ,[Direction]
           ,[Note]
           ,[NotePosition]
           ,[Finger]
           ,[ViolinPosition])
select 5  --scale id not the new abrsm scale id created above
           ,[Octaves]
           ,[FingerBlock] + 200
           ,[String]
           ,[Fret]
           ,[Direction] -- 'ASC' --'DESC'
           ,[Note]
           ,[NotePosition]
           ,[Finger]
           ,[ViolinPosition]
from fingerblocks
where scale = 17
and octaves = 2

