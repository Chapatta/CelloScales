import * as DAL from './DataAccessLayer.js'
import * as UT from './Util.js'
import * as DFP from './DragFingerPosition.js'
import * as VS from './CelloScales.js'

export function ShowFingerBlocks(scale)
{
    RefreshCello();
    let fingerPosition;
    const fingerPositions = DAL.GetFingerPositions(scale.Scale,scale.Octaves);

    let currentCelloPos = {string: "", position : ""}
    const Cello  = document.getElementById("Cello");

    const startingNote = scale.StartingNote
    for (var i = 0; i < fingerPositions.length; i++) 
    {
        fingerPosition = fingerPositions[i];
        CelloAddNote(Cello,fingerPosition,currentCelloPos)
    }
}

function CelloAddNote(Cello,fingerPosition,currentCelloPos)
{
    let CelloCoords,cell;
    CelloCoords = GetCelloCoords(fingerPosition);

    cell = Cello.rows[CelloCoords.row].cells;
    cell[CelloCoords.col].innerHTML = fingerPosition.Note;
    SetupNoteCell(cell[CelloCoords.col],true);

    cell = Cello.rows[CelloCoords.row].cells;
    cell[CelloCoords.col + 1].innerHTML = fingerPosition.Finger;

    //Process the CelloPosition only set if changed
    if (currentCelloPos.string != fingerPosition.String || currentCelloPos.position != fingerPosition.CelloPosition)
    {
        cell = Cello.rows[CelloCoords.row].cells;
        cell[CelloCoords.col + 2].innerHTML = fingerPosition.CelloPosition;

        currentCelloPos.string = fingerPosition.String;
        currentCelloPos.position = fingerPosition.CelloPosition;
    }
}

function GetCelloCoords(fingerPosition)
{
    let row,col,directionOffSet;
    if (fingerPosition.Direction == "Asc" )
    {
        directionOffSet = 1;
    }
    else
    {
        directionOffSet = UT.NumStrings * UT.NumNoteDetails + 2;
    }

    col = directionOffSet + GetStringOffset(fingerPosition.String);
    row = fingerPosition.Fret + 2;

    return {row: row, col: col};
}

function GetStringOffset(CelloString)
{
    let stringOffset;
    switch(CelloString) 
    {
        case "C":
            stringOffset = 0;
            break;
        case "G":
            stringOffset = 3;
            break;
        case "D":
            stringOffset = 6;
            break;
        case "A":
            stringOffset = 9;
            break;
        default:
        // code block
      }
    return stringOffset;
}

function RefreshCello()
{
    const Cello  = document.getElementById("Cello");
    const maxFret = DAL.GetMaxFret();
    let row;

    for (let r=0; r<=maxFret; r++) 
    {
        row = Cello.rows[r + UT.FretsRowStart];
        row.innerHTML = UT.RowTemplate(r);

        for (var c = UT.ColAscStart; c < UT.ColAscEnd; c+=UT.NumNoteDetails) 
        {
            SetupNoteCell(row.cells[c],false);
        }

        for (var c = UT.ColDescStart; c < UT.ColDescEnd; c+=UT.NumNoteDetails) 
        {
            SetupNoteCell(row.cells[c],false);
        }
    }
}

export function SetupNoteCell(cell,hasNote)
{
    //DFP.SetDraggable(cell,hasNote);
    SetupToolTip(cell,hasNote);

    SetNoteAttributes(cell);
}

function GetNoteFromScale(CelloNotes)
{
    let note,noteFound;
    for (let n=0;n < CelloNotes.length;n++)
    {
        note = CelloNotes[n].Note;
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
    const Cello = document.getElementById("Cello");   
    const string = UT.GetStringFromNoteCell(Cello,cell);

    const CelloNotes = DAL.GetCelloNotes(string,UT.GetFretFromCell(cell));

    const noteFromScale = GetNoteFromScale(CelloNotes);   
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
        if (CelloNotes.length == 1)
        {
            cell.setAttribute('note',CelloNotes[0].Note);
        }
        else
        {
            //display both enharmonic notes
            cell.setAttribute('note', CelloNotes[0].Note + "/" + CelloNotes[1].Note);
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
    //const Cello  = document.getElementById("Cello");   
    //const noteCell = ES.GetCurrentCell(Cello,evt.target.closest('td'));
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

export function RefreshCelloDirection(colStart)
{
    const Cello  = document.getElementById("Cello");
    const maxFret = DAL.GetMaxFret();
    let row;

    for (let r=0; r<=maxFret; r++) 
    {
        row = Cello.rows[r + UT.FretsRowStart];
        for (var c = colStart; c < colStart + UT.NumStrings * UT.NumNoteDetails; c+=UT.NumNoteDetails) 
        {
            row.cells[c].innerHTML = UT.Empty;
            row.cells[c+1].innerHTML = UT.Empty;
            row.cells[c+2].innerHTML = UT.Empty;

            SetupNoteCell(row.cells[c],false);
        }
    }
}