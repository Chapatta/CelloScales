declare @StartingNote varchar(100) = 'C#'
/* Major : 1, Minor Harmonic : 2, Minor Melodic : 3*/
declare @ScaleType int = 2
declare @O int = 2  --Octaves
declare @Grade int = 5

declare @scalename varchar(200)
declare @err varchar(200)
select @scalename = concat(@StartingNote, ' ' , [Name], ' ', @O, ' octaves')
from ScaleTypes
where ID = @ScaleType

select @scalename,@StartingNote StartingNote, @ScaleType ScaleType, @O Octaves, @Grade Grade

declare @S int
select @S = ID
from [dbo].[Scales]
where StartingNote = @StartingNote
and ScaleType = @ScaleType

select @S Scale, @O Octaves

declare @ABRSMScaleID int
select @ABRSMScaleID = ID
from [dbo].[ABRSMScales]
where Grade = @Grade
and Scale = @S
and Octaves = @O

if @ABRSMScaleID is null
begin
	declare @ABRSMID int
	select @ABRSMID = max(ID) + 1 from [ABRSMScales]
	INSERT INTO [dbo].[ABRSMScales] ([Grade],[Scale],[Octaves],[ID])
    VALUES(@Grade,@S,@O,@ABRSMID)
end

--delete from FingerBlocks where Scale = @S and Octaves = @O

if exists (select * from [dbo].FingerBlocks where Scale = @S and Octaves = @O)
begin
	set @err = concat('Finger blocks already exist for ', @scalename )
	select @err
	--raiserror (@err,10,1)
end
else
begin

--select * from FingerBlocks where Scale = 35 and Octaves = 2


select @S Scale, @O Octaves
insert into FingerBlocks values (@S,@O,1,'G',6,'Asc','C#',1,2,'2nd')
insert into FingerBlocks values (@S,@O,1,'G',8,'Asc','D#',2,3,'2nd')
insert into FingerBlocks values (@S,@O,1,'G',9,'Asc','E',3,4,'2nd')
insert into FingerBlocks values (@S,@O,2,'D',4,'Asc','F#',1,1,'2nd')
insert into FingerBlocks values (@S,@O,2,'D',6,'Asc','G#',2,2,'2nd')
insert into FingerBlocks values (@S,@O,2,'D',7,'Asc','A',3,3,'2nd')
insert into FingerBlocks values (@S,@O,2,'D',10,'Asc','B#',4,4,'2nd')
insert into FingerBlocks values (@S,@O,3,'A',4,'Asc','C#',1,1,'2nd')
insert into FingerBlocks values (@S,@O,3,'A',6,'Asc','D#',2,2,'2nd')
insert into FingerBlocks values (@S,@O,3,'A',7,'Asc','E',3,3,'2nd')
insert into FingerBlocks values (@S,@O,3,'A',9,'Asc','F#',4,4,'2nd')
insert into FingerBlocks values (@S,@O,4,'E',4,'Asc','G#',1,1,'2nd')
insert into FingerBlocks values (@S,@O,4,'E',5,'Asc','A',2,2,'2nd')
insert into FingerBlocks values (@S,@O,4,'E',8,'Asc','B#',3,3,'2nd')
insert into FingerBlocks values (@S,@O,4,'E',9,'Asc','C#',4,4,'2nd')

end