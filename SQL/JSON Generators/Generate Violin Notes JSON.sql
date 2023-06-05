/****** Script for SelectTopNRows command from SSMS  ******/
IF OBJECT_ID(N'tempdb..#tmp') IS NOT NULL
BEGIN
DROP TABLE #tmp
END
GO

SELECT (
    SELECT [String],[Fret],[Note]
    FOR JSON PATH, 
        INCLUDE_NULL_VALUES, 
        WITHOUT_ARRAY_WRAPPER
    ) line
into #tmp
from [CelloNotes]
order by [String],[Fret],[Note]

update #tmp
set line = replace(line,'\r\n','')

update #tmp
set line = replace(line,'}','},')

select * from #tmp
GO  