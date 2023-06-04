USE [Scales]
GO

/****** Object:  Table [dbo].[FingerBlocks]    Script Date: 07/05/2023 10:51:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FingerBlocks]') AND type in (N'U'))
DROP TABLE [dbo].[FingerBlocks]
GO

/****** Object:  Table [dbo].[FingerBlocks]    Script Date: 07/05/2023 10:51:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FingerBlocks](
	[Scale] [tinyint] NOT NULL,
	[Octaves] [tinyint] NOT NULL,
	[FingerBlock] [tinyint] Not NULL,
	[String] [char](1) NOT NULL,
	[Fret] [tinyint] NOT NULL,

	[Direction] [varchar](4) NULL,
	[Note] [varchar](2) NOT NULL,
	[NotePosition] [tinyint] NULL,
	[Finger] [tinyint] NULL,
	[ViolinPosition] [varchar](20) NULL, 

CONSTRAINT [PK_FingerBlocks] PRIMARY KEY CLUSTERED 
(
	[Scale] ASC,
	[Octaves] ASC,
	[FingerBlock] ASC,
	[String] ASC,
	[Fret] ASC
)
) ON [PRIMARY]
GO


