--convert desc to read forwards to aid Cello position

/*
select *
from
into #tmpDescFingerPositons

drop table #tmpMaxAscFingerBlock
drop table #tmpMinDescFingerBlock
*/

--Phase 1 fingerblocks
SELECT Scale,	Octaves, max(fingerblock) as MaxAscFingerBlock
into #tmpMaxAscFingerBlock
FROM [Scales].[dbo].[FingerBlocks]
where direction = 'Asc'
group by Scale,Octaves 

SELECT Scale,	Octaves, min(fingerblock) as MinFingerBlock, max(fingerblock) as MaxFingerBlock
into #tmpMinMaxDescFingerBlock
FROM [Scales].[dbo].[FingerBlocks]
where direction = 'Desc'
group by Scale,Octaves 

select distinct Scale,	Octaves,	FingerBlock
into #tmpDescFingerBlocks
from [FingerBlocks]
where direction = 'Desc'

--drop table #tmpMappedFingerBlocks
select  d.Scale,	d.Octaves,	FingerBlock,MaxAscFingerBlock + MAxFingerBlock - FingerBlock + 1 as MappedFingerBlock
into #tmpMappedFingerBlocks
from #tmpDescFingerBlocks d
inner join #tmpMinMaxDescFingerBlock m
on m.Scale = d.Scale
and m.Octaves = d.Octaves
inner join #tmpMaxAscFingerBlock ma
on ma.Scale = d.Scale
and ma.Octaves = d.Octaves

select * from #tmpMappedFingerBlocks
where Scale = 44
and Octaves = 2

update fb
set fingerblock = m.MappedFingerBlock
from fingerblocks fb
inner join #tmpMappedFingerBlocks m
on m.Scale = fb.Scale
and m.Octaves = fb.Octaves
and m.FingerBlock = fb.FingerBlock
where direction = 'Desc'

SELECT 
Scale,	Octaves,	FingerBlock,	NotePosition,	String,	Fret,	Direction,	Note,	Finger,	CelloPosition
FROM [Scales].[dbo].[FingerBlocks]
where direction = 'Desc'
and Scale = 2
and Octaves = 3

--Phase 2 notePositions
SELECT 
Scale,	Octaves,	FingerBlock,	NotePosition,	String,	Fret,	Direction,	Note,	Finger,	CelloPosition
FROM [Scales].[dbo].[FingerBlocks]
where Scale = 2
and Octaves = 3
--and direction = 'Desc'
order by Scale,	Octaves,direction,	FingerBlock,	NotePosition

--drop table #tmpMappedNotePosition
SELECT 
Scale,	Octaves,Direction,	FingerBlock,	NotePosition,
row_number() over (partition by Scale,	Octaves,fingerblock order by scale asc,octaves asc,fingerblock asc ,fret asc) as MappedNotePosition
--,String,	Fret,	Direction,	Note,	Finger,	CelloPosition
into #tmpMappedNotePosition
FROM [Scales].[dbo].[FingerBlocks]
--where Scale = 2
--and Octaves = 3
--order by Scale,	Octaves,direction,	FingerBlock,	5

begin transaction
update fb
set NotePosition = m.MappedNotePosition
from fingerblocks fb
inner join #tmpMappedNotePosition m
on m.Scale = fb.Scale
and m.Octaves = fb.Octaves
and m.FingerBlock = fb.FingerBlock
and m.direction = fb.direction
and m.NotePosition = fb.NotePosition

SELECT 
Scale,	Octaves,	FingerBlock,	NotePosition,	String,	Fret,	Direction,	Note,	Finger,	CelloPosition
FROM [Scales].[dbo].[FingerBlocks]
order by Scale,	Octaves,	FingerBlock,	NotePosition

rollback transaction

/*
ALTER TABLE [dbo].[FingerBlocks] ADD  CONSTRAINT [PK_FingerBlocks] PRIMARY KEY CLUSTERED 
(
	[Scale] ASC,
	[Octaves] ASC,
	[FingerBlock] ASC,
	[String] ASC,
	[Fret] ASC
*/
--44, 2, 1, D, 1
SELECT 
Scale,	Octaves,	FingerBlock,	NotePosition,	String,	Fret,	Direction,	Note,	Finger,	CelloPosition
FROM [Scales].[dbo].[FingerBlocks]
where Scale = 44
and Octaves = 2
and String = 'd'
and [Fret] = 1
order by Scale,	Octaves,	FingerBlock,	NotePosition

select *
from fingerblocks fb
inner join #tmpMappedFingerBlocks m
on m.Scale = fb.Scale
and m.Octaves = fb.Octaves
and m.FingerBlock = fb.FingerBlock
where direction = 'Desc'
and fb.Scale = 44
and fb.Octaves = 2

--insert into #tmpFingerPos
SELECT 
row_number() over (partition by fingerblock,noteposition order by scale asc,octaves asc,fingerblock desc ,noteposition desc) + @maxAsc as RowNum,
Scale,	Octaves,	FingerBlock,	NotePosition,	String,	Fret,	Direction,	Note,	Finger,	CelloPosition
FROM [Scales].[dbo].[FingerBlocks]
where direction = 'Desc'
and Scale = 2
and Octaves = 3
