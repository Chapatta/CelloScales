/* Get table data in line delimited JSON format */
--Line delimited
--drop table #tmp
IF OBJECT_ID(N'tempdb..#tmp') IS NOT NULL
BEGIN
DROP TABLE #tmp
END
GO

--major
SELECT (
	select KeyNotes
    FOR JSON PATH, 
        INCLUDE_NULL_VALUES, 
        WITHOUT_ARRAY_WRAPPER
    ) line
into #tmp
from [dbo].[KeySignatures]

update #tmp
set line = replace(line,'\r\n','')

update #tmp
set line = replace(line,'}','},')

select * from #tmp


