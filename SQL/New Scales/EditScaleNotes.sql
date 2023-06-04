--select * from ScaleTypes

select * from scales
where ScaleType = 6

select * 
from scales
where ScaleType = 6
and id = 101

update scales
set notes = 'Bb D F Ab Eb'
where ScaleType = 6
and id = 101