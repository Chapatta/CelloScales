import * as VS from './ViolinScales.js'
import * as UT from './Util.js'
import * as DV from './DisplayViolin.js'
import * as ES from './EditScale.js'

export let FingerPositionCell = {
    StringCol: 0,
    Fret: 0,
    String: "",
    Note: "",
    Finger: 0,
    Position: ""
}

export function OnViolinClicked(evt)
{
    if (VS.CurrentScaleID == 0)
    {
        alert("Please select a scale");
        return;
    }    

    const cell = evt.target.closest('td');
    if (cell === null) //undefined
    {
        return;
    }

    if (!UT.EmptyCell(cell.innerHTML))
    {
        if (UT.DoesCellHaveElement(cell,"input"))
        {
            return;
        }
    }

    if (cell.getAttribute('scaleNote') == "false")
    {
        alert("Note not in scale");
        return;
    }

    //Fill back in the old cells
    const violin = document.getElementById("Violin"); 
    CommitChanges(violin);   

    const noteCell = GetCurrentCell(violin,cell);
    SetFingerPositionCell(noteCell);

    EditCell(violin,noteCell);
}

export function EditCell(violin,noteCell)
{
    violin.rows[noteCell.parentElement.rowIndex].cells[noteCell.cellIndex].innerHTML = FingerPositionCell.Note;
    SetupEditors(noteCell);
}

export function SetFingerPositionCell(noteCell)
{
    const violin = document.getElementById("Violin");

    FingerPositionCell.StringCol = noteCell.cellIndex;
    FingerPositionCell.Fret = UT.GetFretFromCell(noteCell);

    const noteRow = noteCell.parentElement;

    FingerPositionCell.String = UT.GetStringFromNoteCell(violin,noteCell);
    FingerPositionCell.Note = noteCell.getAttribute('note'); //cellNotes[FingerPositionCell.Fret].innerHTML;
   
    //SetupEditFingerPositionButtons(violin);

    const note = violin.rows[FingerPositionCell.Fret + UT.FretsRowStart].cells[FingerPositionCell.StringCol].innerHTML;

    if (UT.EmptyCell(note))
    {
        //ie we are adding
        PrefillAdd(noteCell);
    }
    else
    {
        //otherwise editing just get whatever's there
        FingerPositionCell.Finger = noteRow.cells[noteCell.cellIndex + 1].innerHTML;
        FingerPositionCell.Position = noteRow.cells[noteCell.cellIndex + 2].innerHTML;
    }

    FingerPositionCell.Finger = UT.EmptyCellNumber(FingerPositionCell.Finger) ? "": FingerPositionCell.Finger;
    FingerPositionCell.Position = UT.EmptyCell(FingerPositionCell.Position) ? "": FingerPositionCell.Position;    
}

export function GetCurrentCell(violin,cell)
{
    if (!cell) {return;} // Quit, not clicked on a cell
  
    const row = cell.parentElement;
    return violin.rows[row.rowIndex].cells[UT.GetNoteCol(cell.cellIndex)];
}

function SetupEditors(noteCell)
{
    const editFinger = document.getElementById("EditFinger");
    const editPosition = document.getElementById("EditPosition");

    const cellRow = noteCell.parentElement;

    const cellFinger = cellRow.cells[parseInt(noteCell.cellIndex) + 1];
    const cellPosition = cellRow.cells[parseInt(noteCell.cellIndex) + 2];

    cellFinger.innerHTML = "";
    cellPosition.innerHTML = "";
   
    editFinger.value = FingerPositionCell.Finger
    editPosition.value = FingerPositionCell.Position

    cellFinger.appendChild(editFinger);
    cellPosition.appendChild(editPosition);

    editFinger.focus();
    editFinger.select();
}

function PrefillAdd(noteCell)
{
    let finger,position = "";
    if (FingerPositionCell.Fret == 0)
    {
        FingerPositionCell.Finger = 0;
        FingerPositionCell.Position = "1st";
        return;
    }

    let note, found = false,row;
    const violin = document.getElementById("Violin");
    
    //find preceding 1 and add 1 OR if frist set to 1
    for (let r = FingerPositionCell.Fret - 1; r >= 0 ; r--)
    {
        row = violin.rows[r + UT.FretsRowStart];
        note = row.cells[noteCell.cellIndex].innerHTML;
        if (!UT.EmptyCell(note))
        {
            found = true;
            finger = parseInt(row.cells[noteCell.cellIndex + 1].innerHTML) + 1;
            position = row.cells[noteCell.cellIndex + 2].innerHTML;
            break;
        }
    }
    if (!found)
    {
        finger = 1;
    }

    FingerPositionCell.Finger = finger;

    if (position != "")
    {
        FingerPositionCell.Position = "";
    }
    else
    {
        if (finger == 1)
        {
            FingerPositionCell.Position = ViolinPosition(FingerPositionCell.Fret);
        }            
    }
}

function ViolinPosition(fret)
{
    let position;
    if (fret < 4)
        return "1st";
    if (fret < 8)
        return "3rd";
    if (fret < 11)
        return "5th";
    return "7th";
}

export function CommitChanges(violin)
{
    if (UT.EmptyCell(FingerPositionCell.Note))
    {
        return;
    }
    MoveEditToSafety();
    UpdateViolinCell(violin);
}

export function UpdateViolinCell(violin)
{
    const row = violin.rows[FingerPositionCell.Fret + UT.FretsRowStart];
    row.cells[FingerPositionCell.StringCol].innerHTML = FingerPositionCell.Note;
    row.cells[parseInt(FingerPositionCell.StringCol) + 1].innerHTML = FingerPositionCell.Finger;
    row.cells[parseInt(FingerPositionCell.StringCol) + 2].innerHTML = FingerPositionCell.Position;

    DV.SetupNoteCell(row.cells[FingerPositionCell.StringCol],true);
}

function MoveEditToSafety()
{
    const editSafety = document.getElementById("editSafety");

    const editFinger = document.getElementById("EditFinger");
    const editPosition = document.getElementById("EditPosition");

    //record 
    FingerPositionCell.Finger = editFinger.value;
    FingerPositionCell.Position = editPosition.value;

    editSafety.appendChild(editFinger);
    editSafety.appendChild(editPosition);
}

export function FingerPositionDelete()
{
    if (UT.EmptyCell(FingerPositionCell.Note))
    {
        return;
    }
    MoveEditToSafety();
    const violin = document.getElementById("Violin");
    const row = violin.rows[FingerPositionCell.Fret + UT.FretsRowStart];

    row.cells[FingerPositionCell.StringCol].innerHTML = UT.Empty;
    row.cells[parseInt(FingerPositionCell.StringCol) + 1].innerHTML = UT.Empty;
    row.cells[parseInt(FingerPositionCell.StringCol) + 2].innerHTML = UT.Empty;

    DV.SetupNoteCell(row.cells[FingerPositionCell.StringCol],false);

    RefreshFingerPositionCell();
}

function RefreshFingerPositionCell()
{
    FingerPositionCell.StringCol = 0;
    FingerPositionCell.Fret = 0;
    FingerPositionCell.String = "";
    FingerPositionCell.Note = "";
    FingerPositionCell.Finger = 0;
    FingerPositionCell.Position = "";
}
