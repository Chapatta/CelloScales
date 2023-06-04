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
  where grade = 6
  and scaletypeid = 6

  --4	Major arpeggio

    insert into [dbo].[ABRSMScales]
  select 6, ID,2
  from scales
  where scaletype = 4
  and StartingNote in ('C','eb','f#')

      insert into [dbo].[ABRSMScales]
  select 6, ID,3
  from scales
  where scaletype = 4
  and StartingNote in ('G','bb')

--5	Minor arpeggio
    insert into [dbo].[ABRSMScales]
  select 6, ID,2
  from scales
  where scaletype = 5
  and StartingNote in ('C','eb','f#')

      insert into [dbo].[ABRSMScales]
  select 6, ID,3
  from scales
  where scaletype = 5
  and StartingNote in ('G','bb')

  --delete from [ABRSMScales]   where scale in (91,99,101)
--  6	Dominant 7th

  insert into [dbo].[ABRSMScales]
  select 6, ID,2
  from scales
  where scaletype = 6
  and StartingNote in ('C','eb','f')

--7	Diminished 7th
    insert into [dbo].[ABRSMScales]
  select 6, ID,2
  from scales
  where scaletype = 7
  and StartingNote in ('G','bb','c')