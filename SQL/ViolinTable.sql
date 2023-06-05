USE [Scales]
GO

/****** Object:  Table [dbo].[CelloPivoted]    Script Date: 07/05/2023 10:27:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CelloPivoted]') AND type in (N'U'))
DROP TABLE [dbo].[Cello]
GO

/****** Object:  Table [dbo].[CelloPivoted]    Script Date: 07/05/2023 10:27:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cello](
	[Position] [tinyint] NOT NULL,
	[String] char(1) NOT NULL,
	[Note] [varchar](5) NOT NULL
) ON [PRIMARY]
GO


