USE [Scales]
GO
/****** Object:  Table [dbo].[ABRSMScales]    Script Date: 28/05/2023 20:34:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABRSMScales](
	[Grade] [tinyint] NOT NULL,
	[Scale] [tinyint] NOT NULL,
	[Octaves] [tinyint] NOT NULL,
 CONSTRAINT [PK_ABRSMScales] PRIMARY KEY CLUSTERED 
(
	[Grade] ASC,
	[Scale] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (3, 3, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (3, 5, 1)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (3, 10, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (3, 11, 1)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (3, 12, 1)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (3, 16, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (3, 24, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (3, 31, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (3, 39, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (3, 63, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (3, 65, 1)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (3, 70, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (3, 71, 1)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (3, 72, 1)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (3, 76, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (3, 84, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (4, 1, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (4, 5, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (4, 6, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (4, 12, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (4, 18, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (4, 25, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (4, 26, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (4, 33, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (4, 40, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (4, 41, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (4, 61, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (4, 65, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (4, 66, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (4, 72, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (4, 78, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (4, 85, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (4, 86, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (4, 91, 1)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (4, 93, 1)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (5, 2, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (5, 4, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (5, 16, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (5, 17, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (5, 20, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (5, 21, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (5, 25, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (5, 31, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (5, 32, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (5, 35, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (5, 40, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (5, 62, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (5, 64, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (5, 69, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (5, 71, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (5, 73, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (5, 76, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (5, 77, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (5, 78, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (5, 80, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (5, 85, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (5, 91, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (5, 93, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (5, 100, 1)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (5, 111, 1)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (5, 116, 1)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 2, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 7, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 8, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 10, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 11, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 19, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 25, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 26, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 28, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 29, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 34, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 40, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 41, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 43, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 44, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 61, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 62, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 67, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 70, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 71, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 79, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 85, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 86, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 88, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 89, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 91, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 99, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 101, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 109, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 110, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (6, 116, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 3, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 4, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 6, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 7, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 9, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 16, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 18, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 19, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 24, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 27, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 31, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 33, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 34, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 39, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 42, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 63, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 64, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 66, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 67, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 69, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 76, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 78, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 79, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 84, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 87, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 92, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 93, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 95, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 100, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 106, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 108, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 111, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (7, 115, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 1, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 5, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 8, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 11, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 12, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 17, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 20, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 26, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 29, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 30, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 32, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 35, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 41, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 44, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 45, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 61, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 65, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 68, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 71, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 72, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 77, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 80, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 86, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 89, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 90, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 94, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 99, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 102, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 103, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 107, 3)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 110, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 113, 2)
GO
INSERT [dbo].[ABRSMScales] ([Grade], [Scale], [Octaves]) VALUES (8, 114, 2)
GO
