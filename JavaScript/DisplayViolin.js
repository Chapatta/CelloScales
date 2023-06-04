import * as DAL from './DataAccessLayer.js'
import * as UT from './Util.js'
import * as DFP from './DragFingerPosition.js'
import * as VS from './ViolinScales.js'

export function ShowFingerBlocks(scale)
{
    RefreshViolin();
    let fingerPosition;
    const fingerPositions = DAL.GetFingerPositions(scale.Scale,scale.Octaves);

    let currentViolinPos = {string: "", position : ""}
    const violin  = document.getElementById("Violin");

    const startingNote = scale.StartingNote
    let octaveStartIndex;
    for (var i = 0; i < fingerPositions.length; i++) 
    {
        fingerPosition = fingerPositions[i];

        if (fingerPosition.Note == startingNote )
        {
            octaveStartIndex = i;
        }
        
        ViolinAddNote(violin,fingerPosition,currentViolinPos)
    }
}

function ViolinAddNote(violin,fingerPosition,currentViolinPos)
{
    let violinCoords,cell;
    violinCoords = GetViolinCoords(fingerPosition);

    cell = violin.rows[violinCoords.row].cells;
    cell[violinCoords.col].innerHTML = fingerPosition.Note;
    SetupNoteCell(cell[violinCoords.col],true);

    cell = violin.rows[violinCoords.row - 1].cells;
    cell[violinCoords.col].innerHTML = fingerPosition.Finger;

    //Process the ViolinPosition only set if changed
    if (currentViolinPos.string != fingerPosition.String || currentViolinPos.position != fingerPosition.ViolinPosition)
    {
        cell = violin.rows[violinCoords.row - 2].cells;
        cell[violinCoords.col+1].innerHTML = fingerPosition.ViolinPosition;

        currentViolinPos.string = fingerPosition.String;
        currentViolinPos.position = fingerPosition.ViolinPosition;
    }
}

function GetViolinCoords(fingerPosition)
{
    let row,col,directionOffSet;
    if (fingerPosition.Direction == "Asc" )
    {
        directionOffSet = 0;
    }
    else
    {
        directionOffSet = UT.NumStrings * UT.NumNoteDetails + 2;
    }

    row = directionOffSet + GetStringOffset(fingerPosition.String);
    col = fingerPosition.Fret;

    return {row: row, col: col};
}

function GetStringOffset(violinString)
{
    let stringOffset;
    switch(violinString) 
    {
        case "E":
            stringOffset = 3;
            break;
        case "A":
            stringOffset = 6;
            break;
        case "D":
            stringOffset = 9;
            break;
        case "G":
            stringOffset = 12;
            break;
        default:
        // code block
      }
    return stringOffset;
}

function RefreshViolin()
{
    RefreshViolinDirection(UT.RowAscStart)
    RefreshViolinDirection(UT.RowDescStart)
}

export function RefreshViolinDirection(rowStart)
{
    let cell,startCell;
    const violin  = document.getElementById("Violin");
    let noteRow;
    for (var r = rowStart; r <= rowStart + UT.NumStrings * UT.NumNoteDetails - 1; r++) 
    {
        cell = violin.rows[r].cells;
        startCell = UT.RowStartCell(violin,r);
        noteRow = UT.NoteRow(violin,r);
        for (var c = startCell; c < cell.length; c++) 
        {
            cell[c].innerHTML = UT.Empty;
            if (noteRow)
            {
                SetupNoteCell(cell[c],false);
            }
        }
    } 
}

export function SetupNoteCell(cell,hasNote)
{
    DFP.SetDraggable(cell,hasNote);
    SetupToolTip(cell,hasNote);

    SetNoteAttributes(cell);
}

function GetNoteFromScale(violinNotes)
{
    let note,noteFound;
    for (let n=0;n < violinNotes.length;n++)
    {
        note = violinNotes[n].Note;
        noteFound = VS.CurrentScaleNotes.find(item => {return item == note});
        if (noteFound !== undefined)
        {
            return noteFound;
        }
    }
    return undefined;
}

function SetNoteAttributes(cell)
{
    const violin  = document.getElementById("Violin");   
    const string = violin.rows[parseInt(cell.parentElement.rowIndex)-2].cells[0].innerHTML;

    const violinNotes = DAL.GetViolinNotes(string,cell.cellIndex);

    const noteFromScale = GetNoteFromScale(violinNotes);   
    if (noteFromScale !== undefined)
    {
        //This is a note from the scale
        cell.setAttribute('note',noteFromScale);
        cell.setAttribute('scaleNote',"true");
    }
    else
    {
        cell.setAttribute('scaleNote',"false");

        //This is a NOT note from the scale
        if (violinNotes.length == 1)
        {
            cell.setAttribute('note',violinNotes[0].Note);
        }
        else
        {
            //display both enharmonic notes
            cell.setAttribute('note', violinNotes[0].Note + "/" + violinNotes[1].Note);
        }
    }
}

function SetupToolTip(cell,hasNote)
{
    //const target = document.getElementById("tooltip-button");
    //const tooltip = document.getElementById("tooltip-text");

    if (!hasNote)
    {
        cell.addEventListener('mouseover', OnCell_Mouseover,false);       
        cell.addEventListener('mouseleave', OnCell_Mouseleave,false);
      }
    else
    {
        cell.removeEventListener('mouseover',OnCell_Mouseover);
        cell.removeEventListener('mouseleave',OnCell_Mouseleave);
        document.getElementById("tooltip-text").innerHTML = UT.Empty;
    }
}

function OnCell_Mouseover(evt)
{

    //anonymous function not great with remove listener which needs a function name
    //cell.addEventListener('mouseover', () => {tooltip.style.display = 'block';}, false); 
    // change display to 'block' on mouseover
    //const violin  = document.getElementById("Violin");   
    //const noteCell = ES.GetCurrentCell(violin,evt.target.closest('td'));
    const cell = evt.target.closest('td');
    const noteInScale = cell.getAttribute('scaleNote');
    const note = cell.getAttribute('note');

    const toolTip = document.getElementById("tooltip-text");
    toolTip.innerHTML = note;
    document.getElementById("tooltip-text").style.display = 'block';

    if (noteInScale == "true")
    {
        //This is a note from the scale so higlight green and set the note
        toolTip.style.background = "#00732c";
    }
    else
    {
        toolTip.style.background = "#FF0000";
    }
}

function OnCell_Mouseleave()
{
    // change display to 'none' on mouseleave
    document.getElementById("tooltip-text").style.display = 'none';
}