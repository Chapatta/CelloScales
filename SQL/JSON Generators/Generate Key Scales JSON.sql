IF OBJECT_ID(N'tempdb..#tmp') IS NOT NULL
BEGIN
DROP TABLE #tmp
END
GO

SELECT (
    SELECT [StartingNote],	vw.[ScaleType],KeyNotes,Notes
    FOR JSON PATH, 
        INCLUDE_NULL_VALUES, 
        WITHOUT_ARRAY_WRAPPER
    ) line
into #tmp
FROM [dbo].[vwKeyScales] vw
where ScaleTypeID in (1,2,3)
order by [StartingNote],	vw.[ScaleType]
GO

update #tmp
set line = replace(line,'\r\n','')

update #tmp
set line = replace(line,'}','},')

select * from #tmp
order by 1
