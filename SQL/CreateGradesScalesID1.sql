--alter table [ABRSMScales] add ID smallint null;

with indxed
as
(
select row_number() over(order by grade,scale) as idx,
* 
from [dbo].[ABRSMScales]
)
update u
set ID = i.idx
from [ABRSMScales] u
inner join indxed i
on i.Grade = u.Grade
and i.Scale = u.Scale

