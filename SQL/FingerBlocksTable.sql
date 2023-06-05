USE [CelloScales]
GO
/****** Object:  Table [dbo].[FingerBlocks]    Script Date: 05/06/2023 15:54:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FingerBlocks](
	[Scale] [tinyint] NOT NULL,
	[Octaves] [tinyint] NOT NULL,
	[FingerBlock] [tinyint] NOT NULL,
	[String] [char](1) NOT NULL,
	[Fret] [tinyint] NOT NULL,
	[Direction] [varchar](4) NULL,
	[Note] [varchar](2) NOT NULL,
	[NotePosition] [tinyint] NULL,
	[Finger] [tinyint] NULL,
	[CelloPosition] [varchar](20) NULL,
 CONSTRAINT [PK_FingerBlocks] PRIMARY KEY CLUSTERED 
(
	[Scale] ASC,
	[Octaves] ASC,
	[FingerBlock] ASC,
	[String] ASC,
	[Fret] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (1, 2, 1, N'G', 5, N'Asc', N'C', 1, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (1, 2, 1, N'G', 7, N'Asc', N'D', 2, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (1, 2, 1, N'G', 9, N'Asc', N'E', 3, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (1, 2, 2, N'D', 3, N'Asc', N'F', 1, 1, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (1, 2, 2, N'D', 5, N'Asc', N'G', 2, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (1, 2, 2, N'D', 7, N'Asc', N'A', 3, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (1, 2, 2, N'D', 9, N'Asc', N'B', 4, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (1, 2, 3, N'A', 3, N'Asc', N'C', 1, 1, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (1, 2, 3, N'A', 5, N'Asc', N'D', 2, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (1, 2, 3, N'A', 7, N'Asc', N'E', 3, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (1, 2, 3, N'A', 8, N'Asc', N'F', 4, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (1, 2, 4, N'E', 3, N'Asc', N'G', 1, 1, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (1, 2, 4, N'E', 5, N'Asc', N'A', 2, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (1, 2, 4, N'E', 7, N'Asc', N'B', 3, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (1, 2, 4, N'E', 8, N'Asc', N'C', 4, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 1, N'G', 0, N'Asc', N'G', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 1, N'G', 2, N'Asc', N'A', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 1, N'G', 4, N'Asc', N'B', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 1, N'G', 5, N'Asc', N'C', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 2, N'D', 0, N'Asc', N'D', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 2, N'D', 2, N'Asc', N'E', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 2, N'D', 4, N'Asc', N'F#', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 2, N'D', 5, N'Asc', N'G', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 3, N'A', 0, N'Asc', N'A', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 3, N'A', 2, N'Asc', N'B', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 3, N'A', 3, N'Asc', N'C', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 4, N'A', 5, N'Asc', N'D', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 4, N'A', 7, N'Asc', N'E', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 4, N'A', 9, N'Asc', N'F#', 3, 3, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 4, N'A', 10, N'Asc', N'G', 4, 4, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 5, N'E', 5, N'Asc', N'A', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 5, N'E', 7, N'Asc', N'B', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 6, N'E', 8, N'Asc', N'C', 1, 1, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 6, N'E', 10, N'Asc', N'D', 2, 2, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 6, N'E', 12, N'Asc', N'E', 3, 3, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 6, N'E', 14, N'Asc', N'F#', 4, 4, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 6, N'E', 15, N'Asc', N'G', 5, 4, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 7, N'G', 0, N'Desc', N'G', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 7, N'G', 2, N'Desc', N'A', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 7, N'G', 4, N'Desc', N'B', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 7, N'G', 5, N'Desc', N'C', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 8, N'D', 0, N'Desc', N'D', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 8, N'D', 2, N'Desc', N'E', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 8, N'D', 4, N'Desc', N'F#', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 8, N'D', 5, N'Desc', N'G', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 9, N'A', 0, N'Desc', N'A', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 9, N'A', 2, N'Desc', N'B', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 9, N'A', 3, N'Desc', N'C', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 9, N'A', 5, N'Desc', N'D', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 10, N'E', 0, N'Desc', N'E', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 10, N'E', 2, N'Desc', N'F#', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 10, N'E', 3, N'Desc', N'G', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 10, N'E', 5, N'Desc', N'A', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 10, N'E', 7, N'Desc', N'B', 5, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 11, N'E', 8, N'Desc', N'C', 1, 1, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 11, N'E', 10, N'Desc', N'D', 2, 2, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 11, N'E', 12, N'Desc', N'E', 3, 3, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 11, N'E', 14, N'Desc', N'F#', 4, 4, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (2, 3, 11, N'E', 15, N'Desc', N'G', 5, 4, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (3, 2, 1, N'D', 0, N'Asc', N'D', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (3, 2, 1, N'D', 2, N'Asc', N'E', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (3, 2, 1, N'D', 4, N'Asc', N'F#', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (3, 2, 1, N'D', 5, N'Asc', N'G', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (3, 2, 2, N'A', 0, N'Asc', N'A', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (3, 2, 2, N'A', 2, N'Asc', N'B', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (3, 2, 2, N'A', 4, N'Asc', N'C#', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (3, 2, 3, N'A', 5, N'Asc', N'D', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (3, 2, 3, N'A', 7, N'Asc', N'E', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (3, 2, 3, N'A', 9, N'Asc', N'F#', 3, 3, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (3, 2, 3, N'A', 10, N'Asc', N'G', 4, 4, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (3, 2, 4, N'E', 5, N'Asc', N'A', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (3, 2, 4, N'E', 7, N'Asc', N'B', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (3, 2, 4, N'E', 9, N'Asc', N'C#', 3, 3, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (3, 2, 4, N'E', 10, N'Asc', N'D', 4, 4, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (4, 3, 1, N'A', 9, N'Asc', N'F#', 4, 1, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (4, 3, 1, N'C', 1, N'Asc', N'C#', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (4, 3, 1, N'D', 14, N'Asc', N'E', 3, 1, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (4, 3, 1, N'G', 18, N'Asc', N'C#', 2, 1, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (4, 3, 2, N'A', 11, N'Desc', N'G#', 4, 1, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (4, 3, 2, N'C', 1, N'Desc', N'C#', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (4, 3, 2, N'D', 7, N'Desc', N'A', 3, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (4, 3, 2, N'G', 6, N'Desc', N'C#', 2, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (5, 2, 201, N'D', 2, N'Asc', N'E', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (5, 2, 201, N'D', 4, N'Asc', N'F#', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (5, 2, 201, N'D', 6, N'Asc', N'G#', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (5, 2, 201, N'D', 7, N'Asc', N'A', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (5, 2, 202, N'A', 2, N'Asc', N'B', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (5, 2, 202, N'A', 4, N'Asc', N'C#', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (5, 2, 202, N'A', 6, N'Asc', N'D#', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (5, 2, 203, N'A', 7, N'Asc', N'E', 1, 1, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (5, 2, 203, N'A', 9, N'Asc', N'F#', 2, 2, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (5, 2, 203, N'A', 11, N'Asc', N'G#', 3, 3, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (5, 2, 203, N'A', 12, N'Asc', N'A', 4, 4, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (5, 2, 204, N'E', 7, N'Asc', N'B', 1, 1, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (5, 2, 204, N'E', 9, N'Asc', N'C#', 2, 2, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (5, 2, 204, N'E', 11, N'Asc', N'D#', 3, 3, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (5, 2, 204, N'E', 12, N'Asc', N'E', 4, 4, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 1, N'D', 4, N'Asc', N'F#', 1, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 1, N'D', 6, N'Asc', N'G#', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 1, N'D', 8, N'Asc', N'A#', 3, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 2, N'A', 2, N'Asc', N'B', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 2, N'A', 4, N'Asc', N'C#', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 3, N'A', 6, N'Asc', N'D#', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 3, N'A', 8, N'Asc', N'E#', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 3, N'A', 9, N'Asc', N'F#', 3, 3, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 3, N'A', 11, N'Asc', N'G#', 4, 4, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 4, N'E', 6, N'Asc', N'A#', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 4, N'E', 7, N'Asc', N'B', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 5, N'E', 9, N'Asc', N'C#', 1, 1, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 5, N'E', 11, N'Asc', N'D#', 2, 2, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 5, N'E', 13, N'Asc', N'E#', 3, 3, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 5, N'E', 14, N'Asc', N'F#', 4, 4, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 6, N'D', 4, N'Desc', N'F#', 1, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 6, N'D', 6, N'Desc', N'G#', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 6, N'D', 8, N'Desc', N'A#', 3, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 7, N'A', 2, N'Desc', N'B', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 7, N'A', 4, N'Desc', N'C#', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 7, N'A', 6, N'Desc', N'D#', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 7, N'A', 8, N'Desc', N'E#', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 8, N'E', 2, N'Desc', N'F#', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 8, N'E', 4, N'Desc', N'G#', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 8, N'E', 6, N'Desc', N'A#', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 8, N'E', 7, N'Desc', N'B', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 9, N'E', 9, N'Desc', N'C#', 1, 1, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 9, N'E', 11, N'Desc', N'D#', 2, 2, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 9, N'E', 13, N'Desc', N'E#', 3, 3, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (7, 2, 9, N'E', 14, N'Desc', N'F#', 4, 4, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (8, 2, 1, N'G', 6, N'Asc', N'C#', 1, 2, N'2.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (8, 2, 1, N'G', 8, N'Asc', N'D#', 2, 3, N'2.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (8, 2, 1, N'G', 10, N'Asc', N'E#', 3, 4, N'2.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (8, 2, 2, N'D', 4, N'Asc', N'F#', 1, 1, N'2.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (8, 2, 2, N'D', 6, N'Asc', N'G#', 2, 2, N'2.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (8, 2, 2, N'D', 8, N'Asc', N'A#', 3, 3, N'2.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (8, 2, 2, N'D', 10, N'Asc', N'B#', 4, 4, N'2.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (8, 2, 3, N'A', 4, N'Asc', N'C#', 1, 1, N'2.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (8, 2, 3, N'A', 6, N'Asc', N'D#', 2, 2, N'2.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (8, 2, 3, N'A', 8, N'Asc', N'E#', 3, 3, N'2.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (8, 2, 3, N'A', 9, N'Asc', N'F#', 4, 4, N'2.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (8, 2, 4, N'E', 4, N'Asc', N'G#', 1, 1, N'2.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (8, 2, 4, N'E', 6, N'Asc', N'A#', 2, 2, N'2.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (8, 2, 4, N'E', 8, N'Asc', N'B#', 3, 3, N'2.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (8, 2, 4, N'E', 9, N'Asc', N'C#', 4, 4, N'2.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 1, N'D', 3, N'Asc', N'F', 1, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 1, N'D', 5, N'Asc', N'G', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 1, N'D', 7, N'Asc', N'A', 3, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 2, N'A', 1, N'Asc', N'Bb', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 2, N'A', 3, N'Asc', N'C', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 3, N'A', 5, N'Asc', N'D', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 3, N'A', 7, N'Asc', N'E', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 3, N'A', 8, N'Asc', N'F', 3, 3, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 3, N'A', 10, N'Asc', N'G', 4, 4, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 4, N'E', 5, N'Asc', N'A', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 4, N'E', 6, N'Asc', N'Bb', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 5, N'E', 8, N'Asc', N'C', 1, 1, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 5, N'E', 10, N'Asc', N'D', 2, 2, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 5, N'E', 12, N'Asc', N'E', 3, 3, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 5, N'E', 13, N'Asc', N'F', 4, 4, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 6, N'D', 3, N'Desc', N'F', 1, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 6, N'D', 5, N'Desc', N'G', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 7, N'A', 0, N'Desc', N'A', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 7, N'A', 1, N'Desc', N'Bb', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 7, N'A', 3, N'Desc', N'C', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 7, N'A', 5, N'Desc', N'D', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 8, N'E', 0, N'Desc', N'E', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 8, N'E', 1, N'Desc', N'F', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 8, N'E', 3, N'Desc', N'G', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 8, N'E', 5, N'Desc', N'A', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 8, N'E', 6, N'Desc', N'Bb', 5, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 9, N'E', 8, N'Desc', N'C', 1, 1, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 9, N'E', 10, N'Desc', N'D', 2, 2, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 9, N'E', 12, N'Desc', N'E', 3, 3, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (9, 2, 9, N'E', 13, N'Desc', N'F', 4, 4, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 2, 1, N'G', 3, N'Asc', N'Bb', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 2, 1, N'G', 5, N'Asc', N'C', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 2, 2, N'D', 0, N'Asc', N'D', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 2, 2, N'D', 1, N'Asc', N'Eb', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 2, 2, N'D', 3, N'Asc', N'F', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 2, 2, N'D', 5, N'Asc', N'G', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 2, 3, N'A', 0, N'Asc', N'A', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 2, 3, N'A', 1, N'Asc', N'Bb', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 2, 3, N'A', 3, N'Asc', N'C', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 2, 3, N'A', 5, N'Asc', N'D', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 2, 3, N'A', 6, N'Asc', N'Eb', 5, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 2, 4, N'E', 1, N'Asc', N'F', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 2, 4, N'E', 3, N'Asc', N'G', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 2, 4, N'E', 5, N'Asc', N'A', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 2, 4, N'E', 6, N'Asc', N'Bb', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 1, N'G', 3, N'Asc', N'Bb', 1, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 1, N'G', 5, N'Asc', N'C', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 2, N'D', 0, N'Asc', N'D', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 2, N'D', 1, N'Asc', N'Eb', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 2, N'D', 3, N'Asc', N'F', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 2, N'D', 5, N'Asc', N'G', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 3, N'A', 0, N'Asc', N'A', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 3, N'A', 1, N'Asc', N'Bb', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 3, N'A', 3, N'Asc', N'C', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 4, N'A', 5, N'Asc', N'D', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 4, N'A', 6, N'Asc', N'Eb', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 4, N'A', 8, N'Asc', N'F', 3, 3, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 4, N'A', 10, N'Asc', N'G', 4, 4, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 5, N'E', 5, N'Asc', N'A', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 5, N'E', 6, N'Asc', N'Bb', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 6, N'E', 8, N'Asc', N'C', 1, 1, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 6, N'E', 10, N'Asc', N'D', 2, 2, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 7, N'E', 11, N'Asc', N'Eb', 1, 1, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 7, N'E', 13, N'Asc', N'F', 2, 2, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 7, N'E', 15, N'Asc', N'G', 3, 3, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 7, N'E', 17, N'Asc', N'A', 4, 4, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 7, N'E', 18, N'Asc', N'Bb', 5, 4, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 8, N'G', 3, N'Desc', N'Bb', 1, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 8, N'G', 5, N'Desc', N'C', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 9, N'D', 0, N'Desc', N'D', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 9, N'D', 1, N'Desc', N'Eb', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 9, N'D', 3, N'Desc', N'F', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 9, N'D', 5, N'Desc', N'G', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 10, N'A', 0, N'Desc', N'A', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 10, N'A', 1, N'Desc', N'Bb', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 10, N'A', 3, N'Desc', N'C', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 10, N'A', 5, N'Desc', N'D', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 10, N'A', 6, N'Desc', N'Eb', 5, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 11, N'E', 1, N'Desc', N'F', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 11, N'E', 3, N'Desc', N'G', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 11, N'E', 5, N'Desc', N'A', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 12, N'E', 6, N'Desc', N'Bb', 1, 1, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 12, N'E', 8, N'Desc', N'C', 2, 2, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 12, N'E', 10, N'Desc', N'D', 3, 3, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 13, N'E', 11, N'Desc', N'Eb', 1, 1, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 13, N'E', 13, N'Desc', N'F', 2, 2, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 13, N'E', 15, N'Desc', N'G', 3, 3, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 13, N'E', 17, N'Desc', N'A', 4, 4, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (10, 3, 13, N'E', 18, N'Desc', N'Bb', 5, 4, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (11, 2, 1, N'D', 1, N'Asc', N'Eb', 1, 1, N'0.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (11, 2, 1, N'D', 3, N'Asc', N'F', 2, 2, N'0.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (11, 2, 1, N'D', 5, N'Asc', N'G', 3, 3, N'0.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (11, 2, 1, N'D', 6, N'Asc', N'Ab', 4, 4, N'0.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (11, 2, 2, N'A', 1, N'Asc', N'Bb', 1, 1, N'0.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (11, 2, 2, N'A', 3, N'Asc', N'C', 2, 2, N'0.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (11, 2, 2, N'A', 5, N'Asc', N'D', 3, 3, N'0.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (11, 2, 3, N'A', 6, N'Asc', N'Eb', 1, 1, N'3.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (11, 2, 3, N'A', 8, N'Asc', N'F', 2, 2, N'3.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (11, 2, 3, N'A', 10, N'Asc', N'G', 3, 3, N'3.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (11, 2, 3, N'A', 11, N'Asc', N'Ab', 4, 4, N'3.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (11, 2, 4, N'E', 6, N'Asc', N'Bb', 1, 1, N'3.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (11, 2, 4, N'E', 8, N'Asc', N'C', 2, 2, N'3.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (11, 2, 4, N'E', 10, N'Asc', N'D', 3, 3, N'3.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (11, 2, 4, N'E', 11, N'Asc', N'Eb', 4, 4, N'3.5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (12, 2, 1, N'G', 1, N'Asc', N'Ab', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (12, 2, 1, N'G', 3, N'Asc', N'Bb', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (12, 2, 1, N'G', 5, N'Asc', N'C', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (12, 2, 1, N'G', 6, N'Asc', N'Db', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (12, 2, 2, N'D', 1, N'Asc', N'Eb', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (12, 2, 2, N'D', 3, N'Asc', N'F', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (12, 2, 2, N'D', 5, N'Asc', N'G', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (12, 2, 2, N'D', 6, N'Asc', N'Ab', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (12, 2, 3, N'A', 1, N'Asc', N'Bb', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (12, 2, 3, N'A', 3, N'Asc', N'C', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (12, 2, 3, N'A', 4, N'Asc', N'Db', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (12, 2, 3, N'A', 6, N'Asc', N'Eb', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (12, 2, 4, N'E', 1, N'Asc', N'F', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (12, 2, 4, N'E', 3, N'Asc', N'G', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (12, 2, 4, N'E', 4, N'Asc', N'Ab', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 1, N'G', 2, N'Asc', N'A', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 1, N'G', 4, N'Asc', N'B', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 1, N'G', 5, N'Asc', N'C', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 2, N'D', 0, N'Asc', N'D', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 2, N'D', 2, N'Asc', N'E', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 2, N'D', 3, N'Asc', N'F', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 2, N'D', 6, N'Asc', N'G#', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 3, N'A', 0, N'Asc', N'A', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 3, N'A', 2, N'Asc', N'B', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 3, N'A', 3, N'Asc', N'C', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 4, N'A', 5, N'Asc', N'D', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 4, N'A', 7, N'Asc', N'E', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 4, N'A', 8, N'Asc', N'F', 3, 3, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 4, N'A', 11, N'Asc', N'G#', 4, 4, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 5, N'E', 5, N'Asc', N'A', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 5, N'E', 7, N'Asc', N'B', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 6, N'E', 8, N'Asc', N'C', 1, 1, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 6, N'E', 10, N'Asc', N'D', 2, 2, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 7, N'E', 12, N'Asc', N'E', 1, 1, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 7, N'E', 13, N'Asc', N'F', 2, 2, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 7, N'E', 16, N'Asc', N'G#', 3, 3, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 7, N'E', 17, N'Asc', N'A', 4, 4, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 8, N'G', 2, N'Desc', N'A', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 8, N'G', 4, N'Desc', N'B', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 8, N'G', 5, N'Desc', N'C', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 9, N'D', 0, N'Desc', N'D', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 9, N'D', 2, N'Desc', N'E', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 9, N'D', 3, N'Desc', N'F', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 9, N'D', 6, N'Desc', N'G#', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 10, N'A', 0, N'Desc', N'A', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 10, N'A', 2, N'Desc', N'B', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 10, N'A', 3, N'Desc', N'C', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 10, N'A', 5, N'Desc', N'D', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 11, N'E', 0, N'Desc', N'E', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 11, N'E', 1, N'Desc', N'F', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 11, N'E', 4, N'Desc', N'G#', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 11, N'E', 5, N'Desc', N'A', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 12, N'E', 7, N'Desc', N'B', 1, 1, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 12, N'E', 8, N'Desc', N'C', 2, 2, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 12, N'E', 10, N'Desc', N'D', 3, 3, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 13, N'E', 12, N'Desc', N'E', 1, 1, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 13, N'E', 13, N'Desc', N'F', 2, 2, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 13, N'E', 16, N'Desc', N'G#', 3, 3, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (16, 3, 13, N'E', 17, N'Desc', N'A', 4, 4, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (17, 2, 1, N'D', 2, N'Asc', N'E', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (17, 2, 1, N'D', 4, N'Asc', N'F#', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (17, 2, 1, N'D', 5, N'Asc', N'G', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (17, 2, 1, N'D', 7, N'Asc', N'A', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (17, 2, 2, N'A', 2, N'Asc', N'B', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (17, 2, 2, N'A', 3, N'Asc', N'C', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (17, 2, 2, N'A', 6, N'Asc', N'D#', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (17, 2, 3, N'A', 7, N'Asc', N'E', 1, 1, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (17, 2, 3, N'A', 9, N'Asc', N'F#', 2, 2, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (17, 2, 3, N'A', 10, N'Asc', N'G', 3, 3, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (17, 2, 3, N'A', 12, N'Asc', N'A', 4, 4, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (17, 2, 4, N'E', 7, N'Asc', N'B', 1, 1, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (17, 2, 4, N'E', 8, N'Asc', N'C', 2, 2, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (17, 2, 4, N'E', 11, N'Asc', N'D#', 3, 3, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (17, 2, 4, N'E', 12, N'Asc', N'E', 4, 4, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (18, 2, 1, N'G', 4, N'Asc', N'B', 1, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (18, 2, 1, N'G', 6, N'Asc', N'C#', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (18, 2, 1, N'G', 7, N'Asc', N'D', 3, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (18, 2, 2, N'D', 2, N'Asc', N'E', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (18, 2, 2, N'D', 4, N'Asc', N'F#', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (18, 2, 2, N'D', 5, N'Asc', N'G', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (18, 2, 2, N'D', 8, N'Asc', N'A#', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (18, 2, 3, N'A', 2, N'Asc', N'B', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (18, 2, 3, N'A', 4, N'Asc', N'C#', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (18, 2, 3, N'A', 5, N'Asc', N'D', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (18, 2, 3, N'A', 7, N'Asc', N'E', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (18, 2, 4, N'E', 2, N'Asc', N'F#', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (18, 2, 4, N'E', 3, N'Asc', N'G', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (18, 2, 4, N'E', 6, N'Asc', N'A#', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (18, 2, 4, N'E', 7, N'Asc', N'B', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 1, N'D', 4, N'Asc', N'F#', 1, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 1, N'D', 6, N'Asc', N'G#', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 1, N'D', 7, N'Asc', N'A', 3, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 2, N'A', 2, N'Asc', N'B', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 2, N'A', 4, N'Asc', N'C#', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 3, N'A', 5, N'Asc', N'D', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 3, N'A', 8, N'Asc', N'E#', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 3, N'A', 9, N'Asc', N'F#', 3, 3, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 3, N'A', 11, N'Asc', N'G#', 4, 4, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 4, N'E', 5, N'Asc', N'A', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 4, N'E', 7, N'Asc', N'B', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 5, N'E', 9, N'Asc', N'C#', 1, 1, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 5, N'E', 10, N'Asc', N'D', 2, 2, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 5, N'E', 13, N'Asc', N'E#', 3, 3, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 5, N'E', 14, N'Asc', N'F#', 4, 4, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 6, N'D', 4, N'Desc', N'F#', 1, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 6, N'D', 6, N'Desc', N'G#', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 6, N'D', 7, N'Desc', N'A', 3, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 7, N'A', 2, N'Desc', N'B', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 7, N'A', 4, N'Desc', N'C#', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 7, N'A', 5, N'Desc', N'D', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 7, N'A', 8, N'Desc', N'E#', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 8, N'E', 2, N'Desc', N'F#', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 8, N'E', 4, N'Desc', N'G#', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 8, N'E', 5, N'Desc', N'A', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 8, N'E', 7, N'Desc', N'B', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 9, N'E', 9, N'Desc', N'C#', 1, 1, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 9, N'E', 10, N'Desc', N'D', 2, 2, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 9, N'E', 13, N'Desc', N'E#', 3, 3, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (19, 2, 9, N'E', 14, N'Desc', N'F#', 4, 4, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (20, 2, 1, N'G', 6, N'Asc', N'C#', 1, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (20, 2, 1, N'G', 8, N'Asc', N'D#', 2, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (20, 2, 1, N'G', 9, N'Asc', N'E', 3, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (20, 2, 2, N'D', 4, N'Asc', N'F#', 1, 1, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (20, 2, 2, N'D', 6, N'Asc', N'G#', 2, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (20, 2, 2, N'D', 7, N'Asc', N'A', 3, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (20, 2, 2, N'D', 10, N'Asc', N'B#', 4, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (20, 2, 3, N'A', 4, N'Asc', N'C#', 1, 1, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (20, 2, 3, N'A', 6, N'Asc', N'D#', 2, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (20, 2, 3, N'A', 7, N'Asc', N'E', 3, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (20, 2, 3, N'A', 9, N'Asc', N'F#', 4, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (20, 2, 4, N'E', 4, N'Asc', N'G#', 1, 1, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (20, 2, 4, N'E', 5, N'Asc', N'A', 2, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (20, 2, 4, N'E', 8, N'Asc', N'B#', 3, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (20, 2, 4, N'E', 9, N'Asc', N'C#', 4, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (24, 2, 1, N'D', 0, N'Asc', N'D', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (24, 2, 1, N'D', 2, N'Asc', N'E', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (24, 2, 1, N'D', 3, N'Asc', N'F', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (24, 2, 1, N'D', 5, N'Asc', N'G', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (24, 2, 2, N'A', 0, N'Asc', N'A', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (24, 2, 2, N'A', 1, N'Asc', N'Bb', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (24, 2, 2, N'A', 4, N'Asc', N'C#', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (24, 2, 3, N'A', 5, N'Asc', N'D', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (24, 2, 3, N'A', 7, N'Asc', N'E', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (24, 2, 3, N'A', 8, N'Asc', N'F', 3, 3, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (24, 2, 3, N'A', 10, N'Asc', N'G', 4, 4, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (24, 2, 4, N'E', 5, N'Asc', N'A', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (24, 2, 4, N'E', 6, N'Asc', N'Bb', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (24, 2, 4, N'E', 9, N'Asc', N'C#', 3, 3, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (24, 2, 4, N'E', 10, N'Asc', N'D', 4, 4, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 1, N'G', 0, N'Asc', N'G', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 1, N'G', 2, N'Asc', N'A', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 1, N'G', 3, N'Asc', N'Bb', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 1, N'G', 5, N'Asc', N'C', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 2, N'D', 0, N'Asc', N'D', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 2, N'D', 1, N'Asc', N'Eb', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 2, N'D', 4, N'Asc', N'F#', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 2, N'D', 5, N'Asc', N'G', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 3, N'A', 0, N'Asc', N'A', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 3, N'A', 1, N'Asc', N'Bb', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 3, N'A', 3, N'Asc', N'C', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 4, N'A', 5, N'Asc', N'D', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 4, N'A', 6, N'Asc', N'Eb', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 4, N'A', 9, N'Asc', N'F#', 3, 3, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 4, N'A', 10, N'Asc', N'G', 4, 4, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 5, N'E', 5, N'Asc', N'A', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 5, N'E', 6, N'Asc', N'Bb', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 6, N'E', 8, N'Asc', N'C', 1, 1, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 6, N'E', 10, N'Asc', N'D', 2, 2, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 6, N'E', 11, N'Asc', N'Eb', 3, 3, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 6, N'E', 14, N'Asc', N'F#', 4, 4, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 6, N'E', 15, N'Asc', N'G', 5, 4, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 7, N'G', 0, N'Desc', N'G', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 7, N'G', 2, N'Desc', N'A', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 7, N'G', 3, N'Desc', N'Bb', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 7, N'G', 5, N'Desc', N'C', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 8, N'D', 0, N'Desc', N'D', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 8, N'D', 1, N'Desc', N'Eb', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 8, N'D', 4, N'Desc', N'F#', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 8, N'D', 5, N'Desc', N'G', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 9, N'A', 0, N'Desc', N'A', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 9, N'A', 1, N'Desc', N'Bb', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 9, N'A', 3, N'Desc', N'C', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 9, N'A', 5, N'Desc', N'D', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 9, N'A', 6, N'Desc', N'Eb', 5, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 10, N'E', 2, N'Desc', N'F#', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 10, N'E', 3, N'Desc', N'G', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 10, N'E', 5, N'Desc', N'A', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 10, N'E', 6, N'Desc', N'Bb', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 11, N'E', 8, N'Desc', N'C', 1, 1, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 11, N'E', 10, N'Desc', N'D', 2, 2, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 11, N'E', 11, N'Desc', N'Eb', 3, 3, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 11, N'E', 14, N'Desc', N'F#', 4, 4, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (25, 3, 11, N'E', 15, N'Desc', N'G', 5, 4, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (26, 2, 1, N'G', 5, N'Asc', N'C', 1, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (26, 2, 1, N'G', 7, N'Asc', N'D', 2, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (26, 2, 1, N'G', 8, N'Asc', N'Eb', 3, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (26, 2, 2, N'D', 3, N'Asc', N'F', 1, 1, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (26, 2, 2, N'D', 5, N'Asc', N'G', 2, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (26, 2, 2, N'D', 6, N'Asc', N'Ab', 3, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (26, 2, 2, N'D', 9, N'Asc', N'B', 4, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (26, 2, 3, N'A', 3, N'Asc', N'C', 1, 1, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (26, 2, 3, N'A', 5, N'Asc', N'D', 2, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (26, 2, 3, N'A', 6, N'Asc', N'Eb', 3, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (26, 2, 3, N'A', 8, N'Asc', N'F', 4, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (26, 2, 4, N'E', 3, N'Asc', N'G', 1, 1, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (26, 2, 4, N'E', 4, N'Asc', N'Ab', 2, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (26, 2, 4, N'E', 7, N'Asc', N'B', 3, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (26, 2, 4, N'E', 8, N'Asc', N'C', 4, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 1, N'G', 3, N'Asc', N'Bb', 1, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 1, N'G', 5, N'Asc', N'C', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 1, N'G', 6, N'Asc', N'Db', 3, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 2, N'D', 1, N'Asc', N'Eb', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 2, N'D', 3, N'Asc', N'F', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 2, N'D', 4, N'Asc', N'Gb', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 2, N'D', 7, N'Asc', N'A', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 3, N'A', 1, N'Asc', N'Bb', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 3, N'A', 3, N'Asc', N'C', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 4, N'A', 4, N'Asc', N'Db', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 4, N'A', 6, N'Asc', N'Eb', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 4, N'A', 8, N'Asc', N'F', 3, 3, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 4, N'A', 9, N'Asc', N'Gb', 4, 4, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 5, N'E', 5, N'Asc', N'A', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 5, N'E', 6, N'Asc', N'Bb', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 6, N'E', 8, N'Asc', N'C', 1, 1, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 6, N'E', 9, N'Asc', N'Db', 2, 2, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 7, N'E', 11, N'Asc', N'Eb', 1, 1, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 7, N'E', 13, N'Asc', N'F', 2, 2, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 7, N'E', 14, N'Asc', N'Gb', 3, 3, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 7, N'E', 17, N'Asc', N'A', 4, 4, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 7, N'E', 18, N'Asc', N'Bb', 5, 4, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 8, N'G', 3, N'Desc', N'Bb', 1, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 8, N'G', 5, N'Desc', N'C', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 8, N'G', 6, N'Desc', N'Db', 3, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 9, N'D', 1, N'Desc', N'Eb', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 9, N'D', 3, N'Desc', N'F', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 9, N'D', 4, N'Desc', N'Gb', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 9, N'D', 7, N'Desc', N'A', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 10, N'A', 1, N'Desc', N'Bb', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 10, N'A', 3, N'Desc', N'C', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 10, N'A', 4, N'Desc', N'Db', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 10, N'A', 6, N'Desc', N'Eb', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 11, N'E', 1, N'Desc', N'F', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 11, N'E', 2, N'Desc', N'Gb', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 11, N'E', 5, N'Desc', N'A', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 12, N'E', 6, N'Desc', N'Bb', 1, 1, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 12, N'E', 8, N'Desc', N'C', 2, 2, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 12, N'E', 9, N'Desc', N'Db', 3, 3, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 13, N'E', 11, N'Desc', N'Eb', 1, 1, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 13, N'E', 13, N'Desc', N'F', 2, 2, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 13, N'E', 14, N'Desc', N'Gb', 3, 3, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 13, N'E', 17, N'Desc', N'A', 4, 4, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (28, 3, 13, N'E', 18, N'Desc', N'Bb', 5, 4, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (29, 2, 1, N'D', 1, N'Asc', N'Eb', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (29, 2, 1, N'D', 3, N'Asc', N'F', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (29, 2, 1, N'D', 4, N'Asc', N'Gb', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (29, 2, 1, N'D', 6, N'Asc', N'Ab', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (29, 2, 2, N'A', 1, N'Asc', N'Bb', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (29, 2, 2, N'A', 2, N'Asc', N'Cb', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (29, 2, 2, N'A', 5, N'Asc', N'D', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (29, 2, 3, N'A', 6, N'Asc', N'Eb', 1, 1, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (29, 2, 3, N'A', 8, N'Asc', N'F', 2, 2, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (29, 2, 3, N'A', 9, N'Asc', N'Gb', 3, 3, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (29, 2, 3, N'A', 11, N'Asc', N'Ab', 4, 4, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (29, 2, 4, N'E', 6, N'Asc', N'Bb', 1, 1, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (29, 2, 4, N'E', 7, N'Asc', N'Cb', 2, 2, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (29, 2, 4, N'E', 10, N'Asc', N'D', 3, 3, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (29, 2, 4, N'E', 11, N'Asc', N'Eb', 4, 4, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 1, N'D', 2, N'Asc', N'E', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 1, N'D', 4, N'Asc', N'F#', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 1, N'D', 5, N'Asc', N'G', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 1, N'D', 7, N'Asc', N'A', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 2, N'A', 2, N'Asc', N'B', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 2, N'A', 4, N'Asc', N'C#', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 2, N'A', 6, N'Asc', N'D#', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 3, N'A', 7, N'Asc', N'E', 1, 1, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 3, N'A', 9, N'Asc', N'F#', 2, 2, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 3, N'A', 10, N'Asc', N'G', 3, 3, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 3, N'A', 12, N'Asc', N'A', 4, 4, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 4, N'E', 7, N'Asc', N'B', 1, 1, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 4, N'E', 9, N'Asc', N'C#', 2, 2, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 4, N'E', 11, N'Asc', N'D#', 3, 3, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 4, N'E', 12, N'Asc', N'E', 4, 4, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 5, N'D', 2, N'Desc', N'E', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 5, N'D', 4, N'Desc', N'F#', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 5, N'D', 5, N'Desc', N'G', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 5, N'D', 7, N'Desc', N'A', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 6, N'A', 2, N'Desc', N'B', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 6, N'A', 3, N'Desc', N'C', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 6, N'A', 5, N'Desc', N'D', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 6, N'A', 7, N'Desc', N'E', 4, 1, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 7, N'A', 9, N'Desc', N'F#', 1, 2, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 7, N'A', 10, N'Desc', N'G', 2, 3, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 7, N'A', 12, N'Desc', N'A', 3, 4, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 8, N'E', 7, N'Desc', N'B', 1, 1, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 8, N'E', 8, N'Desc', N'C', 2, 2, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 8, N'E', 10, N'Desc', N'D', 3, 3, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (32, 2, 8, N'E', 12, N'Desc', N'E', 4, 4, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 1, N'G', 4, N'Asc', N'B', 1, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 1, N'G', 6, N'Asc', N'C#', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 1, N'G', 7, N'Asc', N'D', 3, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 2, N'D', 2, N'Asc', N'E', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 2, N'D', 4, N'Asc', N'F#', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 2, N'D', 6, N'Asc', N'G#', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 2, N'D', 8, N'Asc', N'A#', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 3, N'A', 2, N'Asc', N'B', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 3, N'A', 4, N'Asc', N'C#', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 3, N'A', 5, N'Asc', N'D', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 3, N'A', 7, N'Asc', N'E', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 4, N'E', 2, N'Asc', N'F#', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 4, N'E', 4, N'Asc', N'G#', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 4, N'E', 6, N'Asc', N'A#', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 4, N'E', 7, N'Asc', N'B', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 5, N'G', 4, N'Desc', N'B', 1, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 5, N'G', 6, N'Desc', N'C#', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 5, N'G', 7, N'Desc', N'D', 3, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 6, N'D', 2, N'Desc', N'E', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 6, N'D', 4, N'Desc', N'F#', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 6, N'D', 5, N'Desc', N'G', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 6, N'D', 7, N'Desc', N'A', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 7, N'A', 2, N'Desc', N'B', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 7, N'A', 4, N'Desc', N'C#', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 7, N'A', 5, N'Desc', N'D', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 7, N'A', 7, N'Desc', N'E', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 8, N'E', 2, N'Desc', N'F#', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 8, N'E', 3, N'Desc', N'G', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 8, N'E', 5, N'Desc', N'A', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (33, 2, 8, N'E', 7, N'Desc', N'B', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 1, N'D', 4, N'Asc', N'F#', 1, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 1, N'D', 6, N'Asc', N'G#', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 1, N'D', 7, N'Asc', N'A', 3, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 2, N'A', 2, N'Asc', N'B', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 2, N'A', 4, N'Asc', N'C#', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 3, N'A', 6, N'Asc', N'D#', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 3, N'A', 8, N'Asc', N'E#', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 3, N'A', 9, N'Asc', N'F#', 3, 3, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 3, N'A', 11, N'Asc', N'G#', 4, 4, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 4, N'E', 5, N'Asc', N'A', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 4, N'E', 7, N'Asc', N'B', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 5, N'E', 9, N'Asc', N'C#', 1, 1, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 5, N'E', 11, N'Asc', N'D#', 2, 2, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 5, N'E', 13, N'Asc', N'E#', 3, 3, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 5, N'E', 14, N'Asc', N'F#', 4, 4, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 6, N'D', 4, N'Desc', N'F#', 1, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 6, N'D', 6, N'Desc', N'G#', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 6, N'D', 7, N'Desc', N'A', 3, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 7, N'A', 2, N'Desc', N'B', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 7, N'A', 4, N'Desc', N'C#', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 7, N'A', 5, N'Desc', N'D', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 7, N'A', 7, N'Desc', N'E', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 8, N'E', 2, N'Desc', N'F#', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 8, N'E', 4, N'Desc', N'G#', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 8, N'E', 5, N'Desc', N'A', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 8, N'E', 7, N'Desc', N'B', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 9, N'E', 9, N'Desc', N'C#', 1, 1, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 9, N'E', 10, N'Desc', N'D', 2, 2, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 9, N'E', 12, N'Desc', N'E', 3, 3, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (34, 2, 9, N'E', 14, N'Desc', N'F#', 4, 4, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 1, N'G', 6, N'Asc', N'C#', 1, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 1, N'G', 8, N'Asc', N'D#', 2, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 1, N'G', 9, N'Asc', N'E', 3, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 2, N'D', 4, N'Asc', N'F#', 1, 1, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 2, N'D', 6, N'Asc', N'G#', 2, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 2, N'D', 8, N'Asc', N'A#', 3, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 2, N'D', 10, N'Asc', N'B#', 4, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 3, N'A', 4, N'Asc', N'C#', 1, 1, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 3, N'A', 6, N'Asc', N'D#', 2, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 3, N'A', 7, N'Asc', N'E', 3, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 3, N'A', 9, N'Asc', N'F#', 4, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 4, N'E', 4, N'Asc', N'G#', 1, 1, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 4, N'E', 6, N'Asc', N'A#', 2, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 4, N'E', 8, N'Asc', N'B#', 3, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 4, N'E', 9, N'Asc', N'C#', 4, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 5, N'G', 6, N'Desc', N'C#', 1, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 5, N'G', 8, N'Desc', N'D#', 2, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 5, N'G', 9, N'Desc', N'E', 3, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 6, N'D', 4, N'Desc', N'F#', 1, 1, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 6, N'D', 6, N'Desc', N'G#', 2, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 6, N'D', 7, N'Desc', N'A', 3, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 6, N'D', 9, N'Desc', N'B', 4, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 7, N'A', 4, N'Desc', N'C#', 1, 1, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 7, N'A', 6, N'Desc', N'D#', 2, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 7, N'A', 7, N'Desc', N'E', 3, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 7, N'A', 9, N'Desc', N'F#', 4, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 8, N'E', 4, N'Desc', N'G#', 1, 1, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 8, N'E', 5, N'Desc', N'A', 2, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 8, N'E', 7, N'Desc', N'B', 3, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (35, 2, 8, N'E', 9, N'Desc', N'C#', 4, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 1, N'D', 0, N'Asc', N'D', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 1, N'D', 2, N'Asc', N'E', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 1, N'D', 3, N'Asc', N'F', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 1, N'D', 5, N'Asc', N'G', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 2, N'A', 0, N'Asc', N'A', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 2, N'A', 2, N'Asc', N'B', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 2, N'A', 4, N'Asc', N'C#', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 3, N'A', 5, N'Asc', N'D', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 3, N'A', 7, N'Asc', N'E', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 3, N'A', 8, N'Asc', N'F', 3, 3, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 3, N'A', 10, N'Asc', N'G', 4, 4, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 4, N'E', 5, N'Asc', N'A', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 4, N'E', 7, N'Asc', N'B', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 4, N'E', 9, N'Asc', N'C#', 3, 3, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 4, N'E', 10, N'Asc', N'D', 4, 4, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 5, N'D', 0, N'Desc', N'D', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 5, N'D', 2, N'Desc', N'E', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 5, N'D', 3, N'Desc', N'F', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 5, N'D', 5, N'Desc', N'G', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 6, N'A', 0, N'Desc', N'A', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 6, N'A', 1, N'Desc', N'A#', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 6, N'A', 3, N'Desc', N'C', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 7, N'A', 5, N'Desc', N'D', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 7, N'A', 7, N'Desc', N'E', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 7, N'A', 8, N'Desc', N'F', 3, 3, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 7, N'A', 10, N'Desc', N'G', 4, 4, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 8, N'E', 5, N'Desc', N'A', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 8, N'E', 6, N'Desc', N'A#', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 8, N'E', 8, N'Desc', N'C', 3, 3, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (39, 2, 8, N'E', 10, N'Desc', N'D', 4, 4, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 1, N'G', 0, N'Asc', N'G', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 1, N'G', 2, N'Asc', N'A', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 1, N'G', 3, N'Asc', N'Bb', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 1, N'G', 5, N'Asc', N'C', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 2, N'D', 0, N'Asc', N'D', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 2, N'D', 2, N'Asc', N'E', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 2, N'D', 4, N'Asc', N'F#', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 2, N'D', 5, N'Asc', N'G', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 3, N'A', 0, N'Asc', N'A', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 3, N'A', 1, N'Asc', N'Bb', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 3, N'A', 3, N'Asc', N'C', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 4, N'A', 5, N'Asc', N'D', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 4, N'A', 7, N'Asc', N'E', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 4, N'A', 9, N'Asc', N'F#', 3, 3, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 4, N'A', 10, N'Asc', N'G', 4, 4, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 5, N'E', 5, N'Asc', N'A', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 5, N'E', 6, N'Asc', N'Bb', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 6, N'E', 8, N'Asc', N'C', 1, 1, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 6, N'E', 10, N'Asc', N'D', 2, 2, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 6, N'E', 12, N'Asc', N'E', 3, 3, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 6, N'E', 14, N'Asc', N'F#', 4, 4, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 6, N'E', 15, N'Asc', N'G', 5, 4, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 7, N'G', 0, N'Desc', N'G', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 7, N'G', 2, N'Desc', N'A', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 7, N'G', 3, N'Desc', N'Bb', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 7, N'G', 5, N'Desc', N'C', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 8, N'D', 0, N'Desc', N'D', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 8, N'D', 1, N'Desc', N'Eb', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 8, N'D', 3, N'Desc', N'F', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 9, N'A', 0, N'Desc', N'A', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 9, N'A', 1, N'Desc', N'Bb', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 9, N'A', 3, N'Desc', N'C', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 9, N'A', 5, N'Desc', N'D', 4, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 9, N'A', 6, N'Desc', N'Eb', 5, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 10, N'E', 1, N'Desc', N'F', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 10, N'E', 3, N'Desc', N'G', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 10, N'E', 5, N'Desc', N'A', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 10, N'E', 6, N'Desc', N'Bb', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 11, N'E', 8, N'Desc', N'C', 1, 1, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 11, N'E', 10, N'Desc', N'D', 2, 2, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 11, N'E', 11, N'Desc', N'Eb', 3, 3, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 11, N'E', 13, N'Desc', N'F', 4, 4, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (40, 3, 11, N'E', 15, N'Desc', N'G', 5, 4, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 1, N'G', 5, N'Asc', N'C', 1, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 1, N'G', 7, N'Asc', N'D', 2, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 1, N'G', 8, N'Asc', N'Eb', 3, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 2, N'D', 3, N'Asc', N'F', 1, 1, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 2, N'D', 5, N'Asc', N'G', 2, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 2, N'D', 7, N'Asc', N'A', 3, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 2, N'D', 9, N'Asc', N'B', 4, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 3, N'A', 3, N'Asc', N'C', 1, 1, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 3, N'A', 5, N'Asc', N'D', 2, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 3, N'A', 6, N'Asc', N'Eb', 3, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 3, N'A', 8, N'Asc', N'F', 4, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 4, N'E', 3, N'Asc', N'G', 1, 1, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 4, N'E', 5, N'Asc', N'A', 2, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 4, N'E', 7, N'Asc', N'B', 3, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 4, N'E', 8, N'Asc', N'C', 4, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 5, N'G', 5, N'Desc', N'C', 1, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 5, N'G', 7, N'Desc', N'D', 2, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 5, N'G', 8, N'Desc', N'Eb', 3, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 6, N'D', 3, N'Desc', N'F', 1, 1, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 6, N'D', 5, N'Desc', N'G', 2, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 6, N'D', 6, N'Desc', N'Ab', 3, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 6, N'D', 8, N'Desc', N'Bb', 4, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 7, N'A', 3, N'Desc', N'C', 1, 1, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 7, N'A', 5, N'Desc', N'D', 2, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 7, N'A', 6, N'Desc', N'Eb', 3, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 7, N'A', 8, N'Desc', N'F', 4, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 8, N'E', 3, N'Desc', N'G', 1, 1, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 8, N'E', 4, N'Desc', N'Ab', 2, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 8, N'E', 6, N'Desc', N'Bb', 3, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (41, 2, 8, N'E', 8, N'Desc', N'C', 4, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 1, N'G', 3, N'Asc', N'Bb', 1, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 1, N'G', 5, N'Asc', N'C', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 1, N'G', 6, N'Asc', N'Db', 3, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 2, N'D', 1, N'Asc', N'Eb', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 2, N'D', 3, N'Asc', N'F', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 2, N'D', 5, N'Asc', N'G', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 2, N'D', 7, N'Asc', N'A', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 3, N'A', 1, N'Asc', N'Bb', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 3, N'A', 3, N'Asc', N'C', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 4, N'A', 4, N'Asc', N'Db', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 4, N'A', 6, N'Asc', N'Eb', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 4, N'A', 8, N'Asc', N'F', 3, 3, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 4, N'A', 10, N'Asc', N'G', 4, 4, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 5, N'E', 5, N'Asc', N'A', 1, 1, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 5, N'E', 6, N'Asc', N'Bb', 2, 2, N'3rd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 6, N'E', 8, N'Asc', N'C', 1, 1, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 6, N'E', 9, N'Asc', N'Db', 2, 2, N'5th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 7, N'E', 11, N'Asc', N'Eb', 1, 1, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 7, N'E', 13, N'Asc', N'F', 2, 2, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 7, N'E', 15, N'Asc', N'G', 3, 3, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 7, N'E', 17, N'Asc', N'A', 4, 4, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 7, N'E', 18, N'Asc', N'Bb', 5, 4, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 8, N'G', 3, N'Desc', N'Bb', 1, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 8, N'G', 5, N'Desc', N'C', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 8, N'G', 6, N'Desc', N'Db', 3, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 9, N'D', 1, N'Desc', N'Eb', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 9, N'D', 3, N'Desc', N'F', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 9, N'D', 4, N'Desc', N'Gb', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 9, N'D', 6, N'Desc', N'Ab', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 10, N'A', 1, N'Desc', N'Bb', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 10, N'A', 3, N'Desc', N'C', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 10, N'A', 4, N'Desc', N'Db', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 10, N'A', 6, N'Desc', N'Eb', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 11, N'E', 1, N'Desc', N'F', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 11, N'E', 2, N'Desc', N'Gb', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 11, N'E', 4, N'Desc', N'Ab', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 12, N'E', 6, N'Desc', N'Bb', 1, 1, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 12, N'E', 8, N'Desc', N'C', 2, 2, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 12, N'E', 9, N'Desc', N'Db', 3, 3, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 13, N'E', 11, N'Desc', N'Eb', 1, 1, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 13, N'E', 13, N'Desc', N'F', 2, 2, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 13, N'E', 14, N'Desc', N'Gb', 3, 3, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 13, N'E', 16, N'Desc', N'Ab', 4, 4, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (43, 3, 13, N'E', 18, N'Desc', N'Bb', 5, 4, N'7th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 1, N'D', 1, N'Asc', N'Eb', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 1, N'D', 3, N'Asc', N'F', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 1, N'D', 4, N'Asc', N'Gb', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 1, N'D', 6, N'Asc', N'Ab', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 2, N'A', 1, N'Asc', N'Bb', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 2, N'A', 3, N'Asc', N'C', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 2, N'A', 5, N'Asc', N'D', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 3, N'A', 6, N'Asc', N'Eb', 1, 1, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 3, N'A', 8, N'Asc', N'F', 2, 2, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 3, N'A', 9, N'Asc', N'Gb', 3, 3, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 3, N'A', 11, N'Asc', N'Ab', 4, 4, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 4, N'E', 6, N'Asc', N'Bb', 1, 1, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 4, N'E', 8, N'Asc', N'C', 2, 2, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 4, N'E', 10, N'Asc', N'D', 3, 3, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 4, N'E', 11, N'Asc', N'Eb', 4, 4, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 5, N'D', 1, N'Desc', N'Eb', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 5, N'D', 3, N'Desc', N'F', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 5, N'D', 4, N'Desc', N'Gb', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 5, N'D', 6, N'Desc', N'Ab', 4, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 6, N'A', 1, N'Desc', N'Bb', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 6, N'A', 2, N'Desc', N'Cb', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 6, N'A', 4, N'Desc', N'Db', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 7, N'A', 6, N'Desc', N'Eb', 1, 1, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 7, N'A', 8, N'Desc', N'F', 2, 2, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 7, N'A', 9, N'Desc', N'Gb', 3, 3, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 7, N'A', 11, N'Desc', N'Ab', 4, 4, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 8, N'E', 6, N'Desc', N'Bb', 1, 1, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 8, N'E', 7, N'Desc', N'Cb', 2, 2, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 8, N'E', 9, N'Desc', N'Db', 3, 3, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (44, 2, 8, N'E', 11, N'Desc', N'Eb', 4, 4, N'4th')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (91, 2, 1, N'G', 0, N'Asc', N'G', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (91, 2, 1, N'G', 4, N'Asc', N'B', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (91, 2, 2, N'D', 0, N'Asc', N'D', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (91, 2, 2, N'D', 3, N'Asc', N'F', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (91, 2, 2, N'D', 5, N'Asc', N'G', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (91, 2, 3, N'A', 2, N'Asc', N'B', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (91, 2, 3, N'A', 5, N'Asc', N'D', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (91, 2, 4, N'E', 1, N'Asc', N'F', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (91, 2, 4, N'E', 3, N'Asc', N'G', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (91, 2, 5, N'G', 4, N'Desc', N'B', 1, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (91, 2, 5, N'G', 5, N'Desc', N'C', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (91, 2, 6, N'D', 0, N'Desc', N'D', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (91, 2, 6, N'D', 3, N'Desc', N'F', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (91, 2, 6, N'D', 5, N'Desc', N'G', 3, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (91, 2, 7, N'A', 2, N'Desc', N'B', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (91, 2, 7, N'A', 5, N'Desc', N'D', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (91, 2, 8, N'E', 1, N'Desc', N'F', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (99, 2, 1, N'G', 5, N'Asc', N'C', 1, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (99, 2, 1, N'G', 9, N'Asc', N'E', 2, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (99, 2, 2, N'D', 5, N'Asc', N'G', 1, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (99, 2, 2, N'D', 8, N'Asc', N'Bb', 2, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (99, 2, 3, N'A', 3, N'Asc', N'C', 1, 1, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (99, 2, 3, N'A', 7, N'Asc', N'E', 2, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (99, 2, 4, N'E', 3, N'Asc', N'G', 1, 1, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (99, 2, 4, N'E', 6, N'Asc', N'Bb', 2, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (99, 2, 4, N'E', 8, N'Asc', N'C', 3, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (99, 2, 5, N'D', 2, N'Desc', N'E', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (99, 2, 5, N'D', 3, N'Desc', N'F', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (99, 2, 5, N'D', 5, N'Desc', N'G', 3, 2, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (99, 2, 5, N'D', 8, N'Desc', N'Bb', 4, 4, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (99, 2, 6, N'A', 3, N'Desc', N'C', 1, 1, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (99, 2, 6, N'A', 7, N'Desc', N'E', 2, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (99, 2, 7, N'E', 3, N'Desc', N'G', 1, 1, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (99, 2, 7, N'E', 6, N'Desc', N'Bb', 2, 3, N'2nd')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (101, 2, 1, N'G', 3, N'Asc', N'Bb', 1, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (101, 2, 2, N'D', 0, N'Asc', N'D', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (101, 2, 2, N'D', 3, N'Asc', N'F', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (101, 2, 2, N'D', 6, N'Asc', N'Ab', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (101, 2, 3, N'A', 1, N'Asc', N'Bb', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (101, 2, 3, N'A', 5, N'Asc', N'D', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (101, 2, 4, N'E', 1, N'Asc', N'F', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (101, 2, 4, N'E', 4, N'Asc', N'Ab', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (101, 2, 4, N'E', 6, N'Asc', N'Bb', 3, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (101, 2, 5, N'D', 0, N'Desc', N'D', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (101, 2, 5, N'D', 1, N'Desc', N'Eb', 2, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (101, 2, 5, N'D', 3, N'Desc', N'F', 3, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (101, 2, 5, N'D', 6, N'Desc', N'Ab', 4, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (101, 2, 6, N'A', 1, N'Desc', N'Bb', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (101, 2, 6, N'A', 5, N'Desc', N'D', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (101, 2, 7, N'E', 1, N'Desc', N'F', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (101, 2, 7, N'E', 4, N'Desc', N'Ab', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (109, 2, 1, N'G', 3, N'Asc', N'Bb', 1, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (109, 2, 1, N'G', 6, N'Asc', N'Db', 2, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (109, 2, 2, N'D', 2, N'Asc', N'E', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (109, 2, 2, N'D', 5, N'Asc', N'G', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (109, 2, 3, N'A', 1, N'Asc', N'Bb', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (109, 2, 3, N'A', 4, N'Asc', N'Db', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (109, 2, 4, N'E', 0, N'Asc', N'E', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (109, 2, 4, N'E', 3, N'Asc', N'G', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (109, 2, 4, N'E', 6, N'Asc', N'Bb', 3, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (110, 2, 1, N'G', 5, N'Asc', N'C', 1, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (110, 2, 2, N'D', 1, N'Asc', N'Eb', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (110, 2, 2, N'D', 4, N'Asc', N'Gb', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (110, 2, 3, N'A', 0, N'Asc', N'A', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (110, 2, 3, N'A', 3, N'Asc', N'C', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (110, 2, 3, N'A', 6, N'Asc', N'Eb', 3, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (110, 2, 4, N'E', 2, N'Asc', N'Gb', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (110, 2, 4, N'E', 5, N'Asc', N'A', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (110, 2, 4, N'E', 8, N'Asc', N'C', 3, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (116, 2, 1, N'G', 0, N'Asc', N'G', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (116, 2, 1, N'G', 3, N'Asc', N'Bb', 2, 2, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (116, 2, 1, N'G', 6, N'Asc', N'Db', 3, 4, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (116, 2, 2, N'D', 2, N'Asc', N'E', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (116, 2, 2, N'D', 5, N'Asc', N'G', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (116, 2, 3, N'A', 1, N'Asc', N'Bb', 1, 1, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (116, 2, 3, N'A', 4, N'Asc', N'Db', 2, 3, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (116, 2, 4, N'E', 0, N'Asc', N'E', 1, 0, N'1st')
GO
INSERT [dbo].[FingerBlocks] ([Scale], [Octaves], [FingerBlock], [String], [Fret], [Direction], [Note], [NotePosition], [Finger], [CelloPosition]) VALUES (116, 2, 4, N'E', 3, N'Asc', N'G', 2, 2, N'1st')
GO
