drop table #tmp

select convert(varchar(2),'C') as Root,convert(varchar(50),'C E G Bb') notes
into #tmp

insert into #tmp values ('C','C E G Bb')
insert into #tmp values ('C#','C# E# (F) G# B')
insert into #tmp values ('Db','Db F Ab Cb (B)')
insert into #tmp values ('D','D F# A C')
insert into #tmp values ('D#','D# F## (G) A# C#')
insert into #tmp values ('Eb','Eb G Bb Db')
insert into #tmp values ('E','E G# B D')
insert into #tmp values ('F','F A C Eb')
insert into #tmp values ('F#','F# A# C# E')
insert into #tmp values ('Gb','Gb Bb Db Fb (E)')
insert into #tmp values ('G','G B D F')
insert into #tmp values ('G#','G# B# (C) D# F#')
insert into #tmp values ('Ab','Ab C Eb Gb')
insert into #tmp values ('A','A C# E G')
insert into #tmp values ('A#','A# C## (D) E# (F) G#')
insert into #tmp values ('Bb','Bb D F Ab')
insert into #tmp values ('B','B D# F# A')

--select * from scaletypes
select Note,[Notes] + ' ' + [Note] as Notes
into #tmp1
from #tmp t
inner join 
(select *,dbo.fnAddSemitones(Note,7) as [Dom] from [dbo].[vwFirstOctaveNotes] ) v
on v.Dom = t.[root]

select * from #tmp1

update s
set notes = v1.Notes 
from scales s
inner join #tmp1 v1
on s.startingnote = v1.Note
where scaletype = 6

select *
from scales s
where scaletype = 6