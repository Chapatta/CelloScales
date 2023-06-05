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

SELECT (
    SELECT Scale,	Octaves,	FingerBlock,	NotePosition,	String,	Fret,	Direction,	Note,	Finger,	CelloPosition
    FOR JSON PATH, 
        INCLUDE_NULL_VALUES, 
        WITHOUT_ARRAY_WRAPPER
    ) line
into #tmp
from [FingerBlocks]
order by scale asc,octaves asc,Direction,FingerBlock,NotePosition

update #tmp
set line = replace(line,'\r\n','')

update #tmp
set line = replace(line,'}','},')

select * from #tmp
GO  