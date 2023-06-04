USE [Scales]
GO

/****** Object:  UserDefinedFunction [dbo].[fnAddSemitones]    Script Date: 02/06/2023 21:17:12 ******/
DROP FUNCTION [dbo].[fnAddSemitones]
GO

/****** Object:  UserDefinedFunction [dbo].[fnAddSemitones]    Script Date: 02/06/2023 21:17:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[fnAddSemitones]
(
	-- Add the parameters for the function here
	@Note varchar(2), @NumSemiTones int
)
RETURNS varchar(2)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @AdjustedNote varchar(2)
	--declare @Note varchar(2) = 'G'
	--declare @NumSemiTones int = 7

	select @AdjustedNote = vn.note 
	from [vwFirstOctaveNotes] v
	inner join [dbo].[ViolinNotes] vn
	on vn.Fret = v.fret + @NumSemiTones 
	where v.[Note] = @Note
	and  vn.string = 'G'

	--select @AdjustedNote
	-- Return the result of the function
	RETURN @AdjustedNote

END
GO


