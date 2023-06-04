/* Get table data in line delimited JSON format */
--Line delimited
SELECT (
    SELECT
        ID, 
        [Name]
    FOR JSON PATH, 
        INCLUDE_NULL_VALUES, 
        WITHOUT_ARRAY_WRAPPER
    )
FROM [dbo].[ScaleTypes]
GO


SELECT (
    SELECT
        ID,
		[StartingNote],
		[ScaleType],
		[Notes]
    FOR JSON PATH, 
        INCLUDE_NULL_VALUES, 
        WITHOUT_ARRAY_WRAPPER
    )
FROM [dbo].[Scales]
GO

--ID	Scale	Octaves	StartingNote	Name	Notes	KeyNotes

SELECT (
    SELECT [ID],	Scale,	ScaleType,Octaves,	StartingNote,	[Name]	,Notes,	KeyNotes
    FOR JSON PATH, 
        INCLUDE_NULL_VALUES, 
        WITHOUT_ARRAY_WRAPPER
    )
FROM [dbo].[vwScales]
order by ID
GO

SELECT (
    SELECT [Scale],[Octaves],[FingerBlock],[String],[Fret],[Direction],[Note],[NotePosition],[Finger],[ViolinPosition]
    FOR JSON PATH, 
        INCLUDE_NULL_VALUES, 
        WITHOUT_ARRAY_WRAPPER
    )
FROM [dbo].[FingerBlocks]
order by Scale,Octaves,[FingerBlock],[NotePosition]
GO

--SQL Server blocked access to procedure 'sys.xp_cmdshell' of component 'xp_cmdshell' because this component is turned off as part of the security configuration for this server. A system administrator can enable the use of 'xp_cmdshell' by using sp_configure. For more information about enabling 'xp_cmdshell', search for 'xp_cmdshell' in SQL Server Books Online.
-- this turns on advanced options and is needed to configure xp_cmdshell
EXEC sp_configure 'show advanced options', '1'
RECONFIGURE
-- this enables xp_cmdshell
EXEC sp_configure 'xp_cmdshell', '1' 
RECONFIGURE

/* Export data formatted with line delimitation to a JSON file */
EXEC master..xp_cmdshell 'DIR "C:\Users\Sam\Documents\Sam\Musicianship\ScalesPractical\ScalesPracticalWebApp\ViolinScales\JSON'
--run ssms as administrator didn't work
--Access is denied.

DECLARE @sql varchar(1000)
SET @sql = 'bcp "SELECT (SELECT ID, [Name] ' +
    'FOR JSON PATH, INCLUDE_NULL_VALUES, WITHOUT_ARRAY_WRAPPER) ' +
    'FROM [ScaleTypes]" ' +
    'queryout  "C:\Users\Sam\Documents\Sam\Musicianship\ScalesPractical\ScalesPracticalWebApp\ViolinScales\JSON\ScaleTypes.json" ' + 
    '-c -S localhost -d Scales -T' --'-c -S MACWIN2 -d WideWorldImporters -T'
EXEC sys.XP_CMDSHELL @sql
GO