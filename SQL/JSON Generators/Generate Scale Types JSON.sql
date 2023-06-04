IF OBJECT_ID(N'tempdb..#tmp') IS NOT NULL
BEGIN
DROP TABLE #tmp
END
GO

/* Get table data in line delimited JSON format */
--Line delimited
SELECT (
    SELECT
        ID, 
        [Name]
    FOR JSON PATH, 
        INCLUDE_NULL_VALUES, 
        WITHOUT_ARRAY_WRAPPER
    ) line
into #tmp
FROM [dbo].[ScaleTypes]
GO

update #tmp
set line = replace(line,'\r\n','')

update #tmp
set line = replace(line,'}','},')

select * from #tmp
