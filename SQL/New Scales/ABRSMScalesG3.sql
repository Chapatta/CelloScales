/*
select * from scaletypes
ID	Name
1	Major
2	Minor Harmonic
3	Minor Melodic
4	Major arpeggio
5	Minor arpeggio
6	Dominant 7th
7	Diminished 7th

alter table [dbo].[ABRSMScales]
drop column [ID]
*/

/****** Script for SelectTopNRows command from SSMS  ******/
/*
SELECT [ABRSMScaleID]
      ,[grade]
      ,[ScaleID]
      ,[StartingNote]
      ,[ScaleTypeID]
      ,[scaletype]
      ,[Octaves]
  FROM [dbo].[vwABRSMScales]
  where grade = 3
  order by scaletypeid,octaves
*/

delete from [dbo].[ABRSMScales] where grade = 3
--select * from [dbo].[ABRSMScales] where grade = 3

  --1	Major 
  --1 octave
insert into [dbo].[ABRSMScales]
  select 3, ID,1 --1 octave
  from scales
  where scaletype = 1
  and StartingNote in ('a')

  --2 octaves
  insert into [dbo].[ABRSMScales]
  select 3, ID,2
  from scales
  where scaletype = 1
  and StartingNote in ('d','f','g')

  --1	Minor Hamronic
  --1 octave
  --1 octave
insert into [dbo].[ABRSMScales]
  select 3, ID,1 --1 octave
  from scales
  where scaletype = 2
  and StartingNote in ('c','a')

  insert into [dbo].[ABRSMScales]
  select 3, ID,1 --1 octave
  from scales
  where scaletype = 3
  and StartingNote in ('c','a')


  insert into [dbo].[ABRSMScales]
  select 3, ID,2 --1 octave
  from scales
  where scaletype = 2
  and StartingNote in ('d')

  insert into [dbo].[ABRSMScales]
  select 3, ID,2 --1 octave
  from scales
  where scaletype = 3
  and StartingNote in ('d')

  --4	Major arpeggio

    insert into [dbo].[ABRSMScales]
  select 3, ID,1
  from scales
  where scaletype = 4
  and StartingNote in ('a')

  
    insert into [dbo].[ABRSMScales]
  select 3, ID,2
  from scales
  where scaletype = 4
  and StartingNote in ('d','f','g')

--5	Minor arpeggio
    insert into [dbo].[ABRSMScales]
  select 3, ID,1
  from scales
  where scaletype = 5
  and StartingNote in ('a','c')

    insert into [dbo].[ABRSMScales]
  select 3, ID,2
  from scales
  where scaletype = 5
  and StartingNote in ('d')

  