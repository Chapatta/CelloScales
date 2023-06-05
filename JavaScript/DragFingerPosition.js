import * as UT from './Util.js'
import * as ES from './EditScale.js'
import * as DV from './DisplayCello.js'

export function SetDraggable(cell,toggle)
{
    cell.setAttribute("draggable", toggle);
    if (toggle)
    {
        cell.addEventListener('dragstart', dragStart);
    }
    else
    {
        cell.removeEventListener('dragstart', dragStart);
    }
    //cell.addEventListener('dragend', dragEnd);
}

function dragStart(evt) 
{
    const Cello  = document.getElementById("Cello");
    ES.CommitChanges(Cello);

    const cell = evt.target.closest('td');
    const noteCell = ES.GetCurrentCell(Cello,cell);
    ES.SetFingerPositionCell(noteCell);

    //evt.dataTransfer.setData('FingerPositionCell', ES.FingerPositionCell);

    evt.dataTransfer.setData('Finger', ES.FingerPositionCell.Finger);
    evt.dataTransfer.setData('Position', ES.FingerPositionCell.Position);
    //console.log('drag started');
}

// function dragEnd(evt) 
// {
//     //delete old
//     ES.FingerPositionDelete(ES.FingerPositionCell)

//     //Add new
//     ES.SetFingerPositionCell(evt);
//     ES.FingerPositionUpdate(ES.FingerPositionCell)
// }

export function SetupDraggingRows()
{
    const Cello  = document.getElementById("Cello");
    let row;
    for (let rowIndex = UT.RowAscStart;rowIndex <= UT.RowAscEnd; rowIndex += UT.NumNoteDetails)
    {
        row = Cello.rows[rowIndex+2];
        SetupDraggingRow(row);
    }

    for (let rowIndex = UT.RowDescStart;rowIndex <= UT.RowDescEnd; rowIndex += UT.NumNoteDetails)
    {
        row = Cello.rows[rowIndex+2];
        SetupDraggingRow(row);        
    }
}

function SetupDraggingRow(row)
{
    row.addEventListener('dragover', dragOver);
    // row.addEventListener('dragenter', dragEnter);
    // row.addEventListener('dragleave', dragLeave);
    row.addEventListener('drop', dragDrop);
}

function dragOver(evt) 
{
    const cell = evt.target.closest('td');
    const noteInScale = cell.getAttribute('scaleNote');

    if (noteInScale) 
    {
        evt.preventDefault();
    }
    //console.log('drag over');
}
// function dragEnter() {
//     console.log('drag entered');
// }
// function dragLeave() {
//     console.log('drag left');
// }
function dragDrop(evt) {
    //console.log('drag dropped')

    ES.FingerPositionDelete();

    const Cello  = document.getElementById("Cello");
    const noteCell = ES.GetCurrentCell(Cello,evt.target.closest('td'));
    ES.SetFingerPositionCell(noteCell);
    ES.FingerPositionCell.Finger = evt.dataTransfer.getData('Finger');
    ES.FingerPositionCell.Position = evt.dataTransfer.getData('Position');

    ES.EditCell(Cello,noteCell);     
}