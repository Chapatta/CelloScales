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
SELECT [ABRSMScaleID]
      ,[grade]
      ,[ScaleID]
      ,[StartingNote]
      ,[ScaleTypeID]
      ,[scaletype]
      ,[Octaves]
  FROM [Scales].[dbo].[vwABRSMScales]
  where grade = 7
  and scaletypeid = 6

  --4	Major arpeggio

    insert into [dbo].[ABRSMScales]
  select 7, ID,2
  from scales
  where scaletype = 4
  and StartingNote in ('ab','b','c','e')


--5	Minor arpeggio
    insert into [dbo].[ABRSMScales]
  select 7, ID,2
  from scales
  where scaletype = 5
  and StartingNote in ('g','b','c')

  --delete from [ABRSMScales]   where scale in (91,99,101)
--  6	Dominant 7th

  insert into [dbo].[ABRSMScales]
  select 7, ID,1
  from scales
  where scaletype = 6
  and StartingNote in ('c','d')

