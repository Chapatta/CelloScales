select * from fingerblocks f
inner join [dbo].[vwABRSMScales] s
on s.ScaleID = f.Scale
and s.Octaves = f.Octaves
where startingnote = 'd'
and s.scaletypeid = 2
and s.octaves = 2
