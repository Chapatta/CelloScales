USE [Scales]
GO
/****** Object:  Table [dbo].[ScaleTypes]    Script Date: 28/05/2023 17:16:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScaleTypes](
	[ID] [tinyint] NOT NULL,
	[Name] [varchar](30) NOT NULL,
 CONSTRAINT [PK_ScaleTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ScaleTypes] ([ID], [Name]) VALUES (1, N'Major')
GO
INSERT [dbo].[ScaleTypes] ([ID], [Name]) VALUES (2, N'Minor Harmonic')
GO
INSERT [dbo].[ScaleTypes] ([ID], [Name]) VALUES (3, N'Minor Melodic')
GO
INSERT [dbo].[ScaleTypes] ([ID], [Name]) VALUES (4, N'Major arpeggio')
GO
INSERT [dbo].[ScaleTypes] ([ID], [Name]) VALUES (5, N'Minor arpeggio')
GO
INSERT [dbo].[ScaleTypes] ([ID], [Name]) VALUES (6, N'Dominant 7th')
GO
INSERT [dbo].[ScaleTypes] ([ID], [Name]) VALUES (7, N'Diminished 7th')
GO
