USE [Scales]
GO

/****** Object:  Table [dbo].[CelloPivoted]    Script Date: 07/05/2023 10:27:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CelloPivoted]') AND type in (N'U'))
DROP TABLE [dbo].[CelloPivoted]
GO

/****** Object:  Table [dbo].[CelloPivoted]    Script Date: 07/05/2023 10:27:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CelloPivoted](
	[Position] [tinyint] NOT NULL,
	[GNote] [varchar](5) NOT NULL,
	[DNote] [varchar](5) NOT NULL,
	[ANote] [varchar](5) NOT NULL,
	[ENote] [varchar](5) NOT NULL
) ON [PRIMARY]
GO


