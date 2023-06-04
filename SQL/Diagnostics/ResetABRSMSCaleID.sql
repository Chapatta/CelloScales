select a.Scale,a.Grade,ROW_NUMBER() over (order by  a.Scale,a.Grade) ID 
into #tmp
from ABRSMScales a
order by a.Scale,a.Grade

update a
set ID = b.ID
from ABRSMScales a
inner join #tmp b
on a.Scale = b.Scale
and a.Grade = b.Grade

--select * from ABRSMScales order by id

--select * from [vwScales] order by id