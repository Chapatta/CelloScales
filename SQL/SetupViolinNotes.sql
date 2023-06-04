USE [Scales]
GO

/****** Object:  Table [dbo].[Violin]    Script Date: 23/05/2023 20:13:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ViolinNotes](
	[String] [char](1) NOT NULL,
	[Fret] [tinyint] NOT NULL,
	[Note] [varchar](2) NOT NULL
) ON [PRIMARY]
GO

/*
Position	GNote	DNote	ANote	ENote
0	G	D	A	E
1	G#/Ab	D#/Eb	A#/Bb	F
2	A	E	B	F#/Gb
3	A#/Bb	F	C	G
4	B	F#/Gb	C#/Db	G#/Ab
5	C	G	D	A
*/

/*G*/
insert into [ViolinNotes]
select 'G',Position,GNote 
from [dbo].[ViolinPivoted]
where CHARINDEX('/', GNote) = 0;

insert into [ViolinNotes]
select 'G',Position,left(GNote,CHARINDEX('/', GNote) - 1)
from [dbo].[ViolinPivoted]
where CHARINDEX('/', GNote) <> 0;

insert into [ViolinNotes]
select 'G',Position,substring(GNote,CHARINDEX('/', GNote) + 1,2)
from [dbo].[ViolinPivoted]
where CHARINDEX('/', GNote) <> 0;

/*D*/
insert into [ViolinNotes]
select 'D',Position,DNote 
from [dbo].[ViolinPivoted]
where CHARINDEX('/', DNote) = 0;

insert into [ViolinNotes]
select 'D',Position,left(DNote,CHARINDEX('/', DNote) - 1)
from [dbo].[ViolinPivoted]
where CHARINDEX('/', DNote) <> 0;

insert into [ViolinNotes]
select 'D',Position,substring(DNote,CHARINDEX('/', DNote) + 1,2)
from [dbo].[ViolinPivoted]
where CHARINDEX('/', DNote) <> 0;

/*A*/
insert into [ViolinNotes]
select 'A',Position,ANote 
from [dbo].[ViolinPivoted]
where CHARINDEX('/', ANote) = 0;

insert into [ViolinNotes]
select 'A',Position,left(ANote,CHARINDEX('/', ANote) - 1)
from [dbo].[ViolinPivoted]
where CHARINDEX('/', ANote) <> 0;

insert into [ViolinNotes]
select 'A',Position,substring(ANote,CHARINDEX('/', ANote) + 1,2)
from [dbo].[ViolinPivoted]
where CHARINDEX('/', ANote) <> 0;

/*E*/
insert into [ViolinNotes]
select 'E',Position,ENote 
from [dbo].[ViolinPivoted]
where CHARINDEX('/', ENote) = 0;

insert into [ViolinNotes]
select 'E',Position,left(ENote,CHARINDEX('/', ENote) - 1)
from [dbo].[ViolinPivoted]
where CHARINDEX('/', ENote) <> 0;

insert into [ViolinNotes]
select 'E',Position,substring(ENote,CHARINDEX('/', ENote) + 1,2)
from [dbo].[ViolinPivoted]
where CHARINDEX('/', ENote) <> 0;

