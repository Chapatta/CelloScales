USE [Scales]
GO

/****** Object:  Table [dbo].[KeySignatures]    Script Date: 07/05/2023 09:22:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[KeySignatures](
	[KeyIndex] [tinyint] NOT NULL,
	[MajorRoot] [varchar](2) NOT NULL,
	[MinorRoot] [varchar](2) NOT NULL,
	[KeyNotes] [varchar](30) NOT NULL,
	[Type] [varchar](20) NOT NULL,
 CONSTRAINT [PK_KeySignatures] PRIMARY KEY CLUSTERED 
(
	[KeyIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


