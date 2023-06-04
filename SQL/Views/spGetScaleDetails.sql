USE [Scales]
GO

/****** Object:  StoredProcedure [dbo].[spGetScaleDetails]    Script Date: 24/05/2023 21:35:45 ******/
DROP PROCEDURE [dbo].[spGetScaleDetails]
GO

/****** Object:  StoredProcedure [dbo].[spGetScaleDetails]    Script Date: 24/05/2023 21:35:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetScaleDetails]
	-- Add the parameters for the stored procedure here
	@ScaleName varchar(200),
	@Scale int output, 
	@Octaves  int output
AS
BEGIN
--declare @ScaleName varchar(200) = 'Bb Minor Melodic (3)'

declare @SpacePos int
set @SpacePos = patindex('% %',@scalename)

declare @StartingNote varchar(2) = left(@scalename,@SpacePos)

declare @BracketPos int
set @BracketPos = patindex('%(%',@scalename)

declare @ScaleType varchar(50) = substring(@ScaleName,@SpacePos + 1,@BracketPos - @SpacePos - 2)

set @Octaves = substring(@ScaleName,@BracketPos + 1,1)

declare @ScaleTypeID int

select @ScaleTypeID = ID
from ScaleTypes
where [Name] = @ScaleType

--select @ScaleName,@StartingNote,@ScaleType,@Octaves,@ScaleTypeID

select @Scale = ID
from [dbo].[Scales]
where StartingNote = @StartingNote
and ScaleType = @ScaleTypeID

--select @Scale Scale, @Octaves Octaves
END
GO


