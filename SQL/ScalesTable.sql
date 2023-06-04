USE [Scales]
GO
/****** Object:  Table [dbo].[Scales]    Script Date: 03/06/2023 08:21:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scales](
	[ID] [tinyint] NOT NULL,
	[StartingNote] [varchar](2) NOT NULL,
	[ScaleType] [tinyint] NOT NULL,
	[Notes] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (1, N'C', 1, N'C D E F G A B C')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (2, N'G', 1, N'G A B C D E F# G')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (3, N'D', 1, N'D E F# G A B C# D')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (4, N'A', 1, N'A B C# D E F# G# A')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (5, N'E', 1, N'E F# G# A B C# D# E')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (6, N'B', 1, N'B C# D# E F# G# A# B')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (7, N'F#', 1, N'F# G# A# B C# D# E# F#')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (8, N'C#', 1, N'C# D# E# F# G# A# B# C#')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (9, N'F', 1, N'F G A Bb C D E F')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (10, N'Bb', 1, N'Bb C D Eb F G A Bb')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (11, N'Eb', 1, N'Eb F G Ab Bb C D Eb')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (12, N'Ab', 1, N'Ab Bb C Db Eb F G Ab')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (13, N'Db', 1, N'Db Eb F Gb Ab Bb C Db')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (14, N'Gb', 1, N'Gb Ab Bb Cb Db Eb F Gb')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (15, N'Cb', 1, N'Cb Db Eb Fb Gb Ab Bb Cb')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (16, N'A', 2, N'A B C D E F G# A')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (17, N'E', 2, N'E F# G A B C D# E')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (18, N'B', 2, N'B C# D E F# G A# B')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (19, N'F#', 2, N'F# G# A B C# D E# F#')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (20, N'C#', 2, N'C# D# E F# G# A B# C#')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (21, N'G#', 2, N'G# A# B C# D# E F G#')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (22, N'D#', 2, N'D# E# F# G# A# B C## D#')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (23, N'A#', 2, N'A# B# C# D# E# F# G# A#')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (24, N'D', 2, N'D E F G A Bb C# D')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (25, N'G', 2, N'G A Bb C D Eb F# G')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (26, N'C', 2, N'C D Eb F G Ab B C')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (27, N'F', 2, N'F G Ab Bb C Db E F')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (28, N'Bb', 2, N'Bb C Db Eb F Gb A Bb')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (29, N'Eb', 2, N'Eb F Gb Ab Bb Cb D Eb')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (30, N'Ab', 2, N'Ab Bb Cb Db Eb Fb Gb Ab')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (31, N'A', 3, N'A B C D E F# G# A, A B C D E F G A')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (32, N'E', 3, N'E F# G A B C# D# E, E F# G A B C D E')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (33, N'B', 3, N'B C# D E F# G# A# B, B C# D E F# G A B')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (34, N'F#', 3, N'F# G# A B C# D# E# F#, F# G# A B C# D E F#')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (35, N'C#', 3, N'C# D# E F# G# A# B# C#,C# D# E F# G# A B C#')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (36, N'G#', 3, N'G# A# B C# D# E# F## G#,G# A# B C# D# E F# G#')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (37, N'D#', 3, N'D# E# F# G# A# B# C## D#,D# E# F# G# A B C## D#')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (38, N'A#', 3, N'A# B# C# D# E# F## G## A#,A# B# C# D# E# F# G# A#')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (39, N'D', 3, N'D E F G A B C# D,D E F G A Bb C D')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (40, N'G', 3, N'G A Bb C D E F# G, G A Bb C D Eb F G')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (41, N'C', 3, N'C D Eb F G A B C, C D Eb F G Ab Bb C')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (42, N'F', 3, N'F G Ab Bb C D E F,F G Ab Bb C Db Eb F')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (43, N'Bb', 3, N'Bb C Db Eb F G A Bb , Bb C Db Eb F Gb Ab Bb')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (44, N'Eb', 3, N'Eb F Gb Ab Bb C D Eb, Eb F Gb Ab Bb Cb Db Eb')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (45, N'Ab', 3, N'Ab Bb Cb Db Eb F G Ab,Ab Bb Cb Db Eb Fb Gb Ab')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (46, N'A', 0, N'A B C D E F G A')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (47, N'E', 0, N'E F# G A B C D E')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (48, N'B', 0, N'B C# D E F# G A B')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (49, N'F#', 0, N'F# G# A B C# D E F#')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (50, N'C#', 0, N'C# D# E F# G# A B C#')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (51, N'G#', 0, N'TBD')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (52, N'D#', 0, N'TBD')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (53, N'A#', 0, N'TBD')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (54, N'D', 0, N'TBD')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (55, N'G', 0, N'G A Bb C D Eb F G')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (56, N'C', 0, N'C D Eb F G Ab Bb C')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (57, N'F', 0, N'TBD')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (58, N'Bb', 0, N'Bb C Db Eb F Gb Ab Bb')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (59, N'Eb', 0, N'Eb F Gb Ab Bb Cb Db Eb')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (60, N'Ab', 0, N'TBD')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (61, N'C', 4, N'C E G C')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (62, N'G', 4, N'G B D G')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (63, N'D', 4, N'D F# A D')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (64, N'A', 4, N'A C# E A')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (65, N'E', 4, N'E G# B E')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (66, N'B', 4, N'B D# F# B')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (67, N'F#', 4, N'F# A# C# F#')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (68, N'C#', 4, N'C# E# G# C#')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (69, N'F', 4, N'F A C F')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (70, N'Bb', 4, N'Bb D F Bb')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (71, N'Eb', 4, N'Eb G Bb Eb')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (72, N'Ab', 4, N'Ab C Eb Ab')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (73, N'Db', 4, N'Db F Ab Db')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (74, N'Gb', 4, N'Gb Bb Db Gb')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (75, N'Cb', 4, N'Cb Eb Gb Cb')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (76, N'A', 5, N'A C E A')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (77, N'E', 5, N'E G B E')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (78, N'B', 5, N'B D F# B')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (79, N'F#', 5, N'F# A C# F#')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (80, N'C#', 5, N'C# E G# C#')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (81, N'G#', 5, N'G# B D# G#')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (82, N'D#', 5, N'D# F# A# D#')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (83, N'A#', 5, N'A# C# E# A#')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (84, N'D', 5, N'D F A D')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (85, N'G', 5, N'G Bb D G')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (86, N'C', 5, N'C Eb G C')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (87, N'F', 5, N'F Ab C F')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (88, N'Bb', 5, N'Bb Db F Bb')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (89, N'Eb', 5, N'Eb Gb Bb Eb')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (90, N'Ab', 5, N'Ab Cb Eb Ab')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (91, N'C', 6, N'G B D F C')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (92, N'G', 6, N'D F# A C G')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (93, N'D', 6, N'A C# E G D')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (94, N'A', 6, N'E G# B D A')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (95, N'E', 6, N'B D# F# A E')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (96, N'B', 6, N'F# A# C# E B')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (97, N'F#', 6, N'C# E# (F) G# B F#')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (98, N'C#', 6, N'G# B# (C) D# F# C#')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (99, N'F', 6, N'C E G Bb F')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (100, N'Bb', 6, N'F A C Eb Bb')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (101, N'Eb', 6, N'A# C## (D) E# (F) G# Eb')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (102, N'Ab', 6, N'D# F## (G) A# C# Ab')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (103, N'Db', 6, N'G# B# (C) D# F# Db')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (104, N'Gb', 6, N'C# E# (F) G# B Gb')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (105, N'Cb', 6, N'Bb Eb Ab Db Gb Cb Fb')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (106, N'A', 7, N'A C D# F#')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (107, N'Ab', 7, N'Ab B D F')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (108, N'B', 7, N'B D F G#')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (109, N'Bb', 7, N'Bb C# E G')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (110, N'C', 7, N'C D# F# A')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (111, N'D', 7, N'D F G# B')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (112, N'Db', 7, N'Db E G A#')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (113, N'E', 7, N'E G A# C#')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (114, N'Eb', 7, N'Eb F# A C')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (115, N'F', 7, N'F G# B D')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (116, N'G', 7, N'G A# C# E')
GO
INSERT [dbo].[Scales] ([ID], [StartingNote], [ScaleType], [Notes]) VALUES (117, N'Gb', 7, N'Gb A C D#')
GO
