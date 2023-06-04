/****** Script for SelectTopNRows command from SSMS  ******/
IF OBJECT_ID(N'tempdb..#tmpFingerPos') IS NOT NULL
BEGIN
DROP TABLE #tmpFingerPos
END
GO

IF OBJECT_ID(N'tempdb..#tmp') IS NOT NULL
BEGIN
DROP TABLE #tmp
END
GO


go

SELECT 
row_number() over (order by scale asc,octaves asc,fingerblock asc ,noteposition asc) as RowNum,
Scale,	Octaves,	FingerBlock,	NotePosition,	String,	Fret,	Direction,	Note,	Finger,	ViolinPosition
into #tmpFingerPos
FROM [Scales].[dbo].[FingerBlocks]
where direction = 'Asc'

declare @maxAsc as integer
select @maxAsc = max(RowNum) 
from #tmpFingerPos


insert into #tmpFingerPos
SELECT 
row_number() over (order by scale asc,octaves asc,fingerblock desc ,noteposition desc) + @maxAsc as RowNum,
Scale,	Octaves,	FingerBlock,	NotePosition,	String,	Fret,	Direction,	Note,	Finger,	ViolinPosition
FROM [Scales].[dbo].[FingerBlocks]
where direction = 'Desc'

update #tmpFingerPos
set direction = 'Asc'
where [Direction] = 'Asc'

update #tmpFingerPos
set direction = 'Desc'
where [Direction] = 'Desc'

--select * from #tmpFingerPos order by scale asc,octaves asc,rownum

SELECT (
    SELECT Scale,	Octaves,	FingerBlock,	NotePosition,	String,	Fret,	Direction,	Note,	Finger,	ViolinPosition
    FOR JSON PATH, 
        INCLUDE_NULL_VALUES, 
        WITHOUT_ARRAY_WRAPPER
    ) line
into #tmp
from #tmpFingerPos
order by scale asc,octaves asc,rownum

update #tmp
set line = replace(line,'\r\n','')

update #tmp
set line = replace(line,'}','},')



select * from #tmp
GO  