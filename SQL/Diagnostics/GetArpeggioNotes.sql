/*
SELECT 
   colID
   , empID
   -- The following section breaks down the "empName" column into three columns.
   , REVERSE(PARSENAME(REPLACE(REVERSE(empName), ',', '.'), 1)) AS FirstName
   , REVERSE(PARSENAME(REPLACE(REVERSE(empName), ',', '.'), 2)) AS MiddleName
   , REVERSE(PARSENAME(REPLACE(REVERSE(empName), ',', '.'), 3)) AS LastName
   -- The following section breaks down the "empAddress" column into four columns.
   , REVERSE(PARSENAME(REPLACE(REVERSE(empAddress), ',', '.'), 1)) AS Street
   , REVERSE(PARSENAME(REPLACE(REVERSE(empAddress), ',', '.'), 2)) AS City
   , REVERSE(PARSENAME(REPLACE(REVERSE(empAddress), ',', '.'), 3)) AS State
   , REVERSE(PARSENAME(REPLACE(REVERSE(empAddress), ',', '.'), 4)) AS ZipCode
   -- The following section breaks down the "empPhone" column into three columns
   , REVERSE(PARSENAME(REPLACE(REVERSE(empPhone), '-', '.'), 1)) AS AreaCode
   , REVERSE(PARSENAME(REPLACE(REVERSE(empPhone), '-', '.'), 2)) AS Prefix
   , REVERSE(PARSENAME(REPLACE(REVERSE(empPhone), '-', '.'), 3)) AS LastFour
   , jobClass
FROM employeeData;
GO
*/

drop table #tmp

SELECT notes, patindex('% %',notes) SpacePos
into #tmp
from scales
where scaletype in (1,2)

select left(Notes,SpacePos-1) as [1st],substring(Notes,SpacePos,20) as Rest 
into #tmp1
from #tmp


select * from #tmp1

SELECT *
from scales
where scaletype in (1,2)
