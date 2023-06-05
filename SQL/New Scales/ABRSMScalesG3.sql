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
  where grade = 3
  and scaletypeid = 6

      insert into [dbo].[ABRSMScales]
  select 3, ID,1
  from scales
  where scaletype = 1
  and StartingNote in ('ab','eb','e')

  --4	Major arpeggio

    insert into [dbo].[ABRSMScales]
  select 3, ID,1
  from scales
  where scaletype = 4
  and StartingNote in ('ab','eb','e')

  
    insert into [dbo].[ABRSMScales]
  select 3, ID,2
  from scales
  where scaletype = 4
  and StartingNote in ('bb','d')

--5	Minor arpeggio
    insert into [dbo].[ABRSMScales]
  select 3, ID,2
  from scales
  where scaletype = 5
  and StartingNote in ('a','d')

  