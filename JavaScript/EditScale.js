import * as VS from './ViolinScales.js'
import * as UT from './Util.js'
import * as DV from './DisplayViolin.js'
import * as ES from './EditScale.js'

export let FingerPositionCell = {
    StringRow: 0,
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

    const violin = document.getElementById("Violin");
    const noteCell = GetCurrentCell(violin,cell);
    
    if (cell.getAttribute('scaleNote') == "false")
    {
        alert("Note not in scale");
        return;
    }

    //Fill back in the old cells
    CommitChanges(violin);   
    SetFingerPositionCell(noteCell);

    EditCell(violin,noteCell);
}

export function EditCell(violin,noteCell)
{
    violin.rows[noteCell.parentElement.rowIndex].cells[noteCell.cellIndex].innerHTML = FingerPositionCell.Note;
    SetupEditors(violin,noteCell);
}

export function SetFingerPositionCell(noteCell)
{
    const violin = document.getElementById("Violin");

    FingerPositionCell.StringRow = noteCell.parentElement.rowIndex;
    FingerPositionCell.Fret = noteCell.cellIndex;

    const cellFingers = violin.rows[FingerPositionCell.StringRow-1].cells;
    const cellViolinPositions = violin.rows[FingerPositionCell.StringRow-2].cells;

    FingerPositionCell.String = cellViolinPositions[0].innerHTML;

    FingerPositionCell.Note = noteCell.getAttribute('note'); //cellNotes[FingerPositionCell.Fret].innerHTML;
   
    //SetupEditFingerPositionButtons(violin);

    const note = violin.rows[FingerPositionCell.StringRow].cells[FingerPositionCell.Fret].innerHTML;

    if (UT.EmptyCell(note))
    {
        //ie we are adding
        PrefillAdd();
    }
    else
    {
        //otherwise editing just get whatever's there
        FingerPositionCell.Finger = cellFingers[FingerPositionCell.Fret].innerHTML;
        FingerPositionCell.Position = cellViolinPositions[FingerPositionCell.Fret+1].innerHTML;
    }

    FingerPositionCell.Finger = UT.EmptyCellNumber(FingerPositionCell.Finger) ? "": FingerPositionCell.Finger;
    FingerPositionCell.Position = UT.EmptyCell(FingerPositionCell.Position) ? "": FingerPositionCell.Position;    
}

export function GetCurrentCell(violin,cell)
{
    if (!cell) {return;} // Quit, not clicked on a cell
  
    const row = cell.parentElement;
    return violin.rows[UT.GetNoteRow(row.rowIndex)].cells[UT.CellIndex(violin,row.rowIndex,cell.cellIndex)];
}

export function HightlightFingerPosition(violin,fingerPositionCell,highlight)
{
    if (highlight)
    {
        violin.rows[fingerPositionCell.StringRow].cells[fingerPositionCell.Fret].classList.add("highlight");
        violin.rows[fingerPositionCell.StringRow-1].cells[fingerPositionCell.Fret].classList.add("highlight");
        violin.rows[fingerPositionCell.StringRow-2].cells[parseInt(fingerPositionCell.Fret)+1].classList.add("highlight");
    }
    else
    {
        if (fingerPositionCell.StringRow == 0 && fingerPositionCell.Fret == 0)
            return;
        violin.rows[fingerPositionCell.StringRow].cells[fingerPositionCell.Fret].classList.remove("highlight");
        violin.rows[fingerPositionCell.StringRow-1].cells[fingerPositionCell.Fret].classList.remove("highlight");
        violin.rows[fingerPositionCell.StringRow-2].cells[parseInt(fingerPositionCell.Fret)+1].classList.remove("highlight");
    }
}

function SetupEditors(violin,noteCell)
{
    const editFinger = document.getElementById("EditFinger");
    const editPosition = document.getElementById("EditPosition");

    const noteCellRowIndex = noteCell.parentElement.rowIndex;

    const cellFinger = violin.rows[noteCellRowIndex-1].cells[noteCell.cellIndex];
    const cellPosition = violin.rows[noteCellRowIndex-2].cells[parseInt(noteCell.cellIndex)+1];

    cellFinger.innerHTML = "";
    cellPosition.innerHTML = "";
   
    editFinger.value = FingerPositionCell.Finger
    editPosition.value = FingerPositionCell.Position

    cellFinger.appendChild(editFinger);
    cellPosition.appendChild(editPosition);

    editFinger.focus();
    editFinger.select();
}

function PrefillAdd()
{
    let finger,position = "";
    if (FingerPositionCell.Fret == 0)
    {
        FingerPositionCell.Finger = 0;
        FingerPositionCell.Position = "1st";
        return;
    }

    let note, found = false;
    const violin = document.getElementById("Violin");
    const row = violin.rows[FingerPositionCell.StringRow];
    //find preceding 1 and add 1 OR if frist set to 1
    for (let c = FingerPositionCell.Fret - 1; c >= 0 ; c--)
    {
        note = row.cells[c].innerHTML;
        if (!UT.EmptyCell(note))
        {
            found = true;
            finger = parseInt(violin.rows[FingerPositionCell.StringRow - 1].cells[c].innerHTML) + 1;
            position = violin.rows[FingerPositionCell.StringRow - 2].cells[c+1].innerHTML;
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
    if (fret < 5)
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
    violin.rows[FingerPositionCell.StringRow].cells[FingerPositionCell.Fret].innerHTML = FingerPositionCell.Note;
    violin.rows[FingerPositionCell.StringRow-1].cells[FingerPositionCell.Fret].innerHTML = FingerPositionCell.Finger;
    violin.rows[FingerPositionCell.StringRow-2].cells[parseInt(FingerPositionCell.Fret) + 1].innerHTML = FingerPositionCell.Position;

    DV.SetupNoteCell(violin.rows[FingerPositionCell.StringRow].cells[FingerPositionCell.Fret],true);
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
    violin.rows[FingerPositionCell.StringRow].cells[FingerPositionCell.Fret].innerHTML = UT.Empty;
    violin.rows[FingerPositionCell.StringRow-1].cells[FingerPositionCell.Fret].innerHTML = UT.Empty;
    violin.rows[FingerPositionCell.StringRow-2].cells[parseInt(FingerPositionCell.Fret) + 1].innerHTML = UT.Empty;

    DV.SetupNoteCell(violin.rows[FingerPositionCell.StringRow].cells[FingerPositionCell.Fret],false);

    RefreshFingerPositionCell();
}

function RefreshFingerPositionCell()
{
    FingerPositionCell.StringRow = 0;
    FingerPositionCell.Fret = 0;
    FingerPositionCell.String = "";
    FingerPositionCell.Note = "";
    FingerPositionCell.Finger = 0;
    FingerPositionCell.Position = "";
}
