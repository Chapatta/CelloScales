update s
set notes = StartingNote + ' ' + dbo.fnAddSemitones(StartingNote,3) + ' ' + dbo.fnAddSemitones(StartingNote,6) + ' ' + dbo.fnAddSemitones(StartingNote,9)
from scales s
where scaletype = 7