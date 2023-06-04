declare @ScaleName varchar(200) = 'Bb Minor Melodic (3)'

declare @SpacePos int
set @SpacePos = patindex('% %',@scalename)

declare @StartingNote varchar(2) = left(@scalename,@SpacePos)

declare @BracketPos int
set @BracketPos = patindex('%(%',@scalename)

declare @ScaleType varchar(50) = substring(@ScaleName,@SpacePos + 1,@BracketPos - @SpacePos - 2)

declare @Octaves varchar(1) = substring(@ScaleName,@BracketPos + 1,1)

declare @ScaleTypeID int

select @ScaleTypeID = ID
from ScaleTypes
where [Name] = @ScaleType

--select @ScaleName,@StartingNote,@ScaleType,@Octaves,@ScaleTypeID

declare @Scale int
select @Scale = ID
from [dbo].[Scales]
where StartingNote = @StartingNote
and ScaleType = @ScaleTypeID

select @Scale Scale, @Octaves Octaves

