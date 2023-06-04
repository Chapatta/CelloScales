--alter table FingerBlocks drop column ABRSMScaleID;

with indxed
as
(
select distinct Scale,Octaves
from [dbo].[FingerBlocks]
),
indxed1 as 
(
select row_number() over(order by scale,octaves) as idx,
* 
from indxed
)
update u
set ID = i.idx
from [dbo].[ABRSMScales] u
inner join indxed1 i
on i.Scale = u.Scale
and i.Octaves = u.Octaves


--alter table FingerBlocks alter column ABRSMScaleID smallint not null;

--alter table [ABRSMScales] add ID smallint null;


--update u
--set ID = i.idx
/*
select *
from FingerBlocks u
inner join [ABRSMScales] i
on i.Grade = u.Grade
and i.Scale = u.Scale
*/
--alter table [ABRSMScales] alter column ID smallint not null;
