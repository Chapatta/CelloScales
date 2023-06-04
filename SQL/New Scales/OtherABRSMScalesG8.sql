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


select * from [dbo].[vwScales]
*/

/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [ABRSMScaleID]
      ,[grade]
      ,[ScaleID]
      ,[StartingNote]
      ,[ScaleTypeID]
      ,[scaletype]
      ,[Octaves]
  FROM [Scales].[dbo].[vwABRSMScales]
  where grade = 8
  and scaletypeid = 6

    --1	Major
  insert into [dbo].[ABRSMScales]
  select 8, ID,3
  from scales
  where scaletype = 1
  and StartingNote in ('ab','c','c#','eb','e')

    --2	Minor Harmonic

  insert into [dbo].[ABRSMScales]
  select 8, ID,3
  from scales
  where scaletype = 2
  and StartingNote in ('ab','c','c#','eb','e')

  --3	Minor Melodic
  insert into [dbo].[ABRSMScales]
  select 8, ID,3
  from scales
  where scaletype = 3
  and StartingNote in ('ab','c','c#','eb','e')

  --4	Major arpeggio

  insert into [dbo].[ABRSMScales]
  select 8, ID,3
  from scales
  where scaletype = 4
  and StartingNote in ('ab','c','c#','eb','e')

--5	Minor arpeggio
  insert into [dbo].[ABRSMScales]
  select 8, ID,3
  from scales
  where scaletype = 5
  and StartingNote in ('ab','c','c#','eb','e')

  --delete from [ABRSMScales]   where scale in (91,99,101)
--  6	Dominant 7th

  insert into [dbo].[ABRSMScales]
  select 8, ID,3
  from scales
  where scaletype = 6
  and StartingNote in ('db','f','ab','a')

  --  7	diminished 7th

  insert into [dbo].[ABRSMScales]
  select 8, ID,2
  from scales
  where scaletype = 7
  and StartingNote in ('c','eb','e')

    insert into [dbo].[ABRSMScales]
  select 8, ID,3
  from scales
  where scaletype = 7
  and StartingNote in ('ab')
