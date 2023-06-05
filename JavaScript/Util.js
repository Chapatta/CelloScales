import * as DAL from './DataAccessLayer.js'
import * as VS from './ViolinScales.js'

export const NumNoteDetails = 3;
export const NumStrings = 4;

//Violin
export const RowAscStart = 1;
export const RowAscEnd = RowAscStart + NumStrings * NumNoteDetails - 1; //12

export const RowDescStart = 15;
export const RowDescEnd = RowDescStart + NumStrings * NumNoteDetails - 1; //26

//cello
export const ColAscStart = 1;
export const ColAscEnd = ColAscStart + NumStrings * NumNoteDetails - 1; //12

export const ColDescStart = 14;
export const ColDescEnd = ColDescStart + NumStrings * NumNoteDetails - 1; //25

export const ColDirOffset = ColDescStart - ColAscStart;
export const StringRow = 1;
export const FretsRowStart = StringRow + 1;

export const Empty = "&nbsp;";

//export const NoteFrets = DAL.GetNoteFrets();
export function SetDropDown(dropdown,text)
{
    //var el = document.getElementById("mydropdown");
    for(var i=0; i<dropdown.options.length; i++) 
    {
        if (dropdown.options[i].text.includes(text)) 
        {
            dropdown.selectedIndex = i;
            return dropdown.value;
            break;
        }
    }
}

export var DoesCellHaveElement = (cell,element) => {
    return cell.innerHTML.toLowerCase().indexOf('<' + element) >= 0;
}; 

export function EmptyCell(cellValue)
{
    if (cellValue === undefined )
    {
        return true;
    }
    if (cellValue == Empty )
    {
        return true;
    }
    if (cellValue == "")
    {
        return true;
    }

   return false;
}

export function EmptyCellNumber(cellValue)
{
    if (cellValue === undefined )
    {
        return true;
    }
    if (cellValue == Empty )
    {
        return true;
    }

   return false;
}

export function CellIndexPosition(violin,rowIndex,cellIndex)
{
    //This takes the cell index and pushes it back one if it is a Violine position row
    //This is because this is because the other two rows not and finger don't count as they are merged 
    //into the position row
    if (PositionRow(violin,rowIndex))
    {
        cellIndex = cellIndex + 1;
    }

    return cellIndex;
}

export function RowStartCell(violin,r)
{
    let startCell = 0;
    if (PositionRow(violin,r)){startCell = 1;}
    return startCell;
}

function PositionRow(violin,rowIndex)
{
    return violin.rows[rowIndex].className == "position";
}

export function NoteRow(violin,rowIndex)
{
    return violin.rows[rowIndex].className == "note";
}

export function GetNoteCol(colIndex)
{
    let colNote;
    if (CellDirection(colIndex) == "Asc")
    {
        colNote = Math.floor((colIndex-ColAscStart)/NumNoteDetails)  * NumNoteDetails + ColAscStart;
    }
    else
    {
        colNote = Math.floor((colIndex-ColDescStart)/NumNoteDetails)  * NumNoteDetails + ColDescStart;
    }
    return colNote;
}

export function GetScaleNotes(scaleNotes)
{
    let text = scaleNotes;
    text.replace("("," ");
    text.replace(")"," ");

    return text.split(" ");
}

export function RowTemplate(rowIndex)
{
    let rowTemplate = '<td>' + rowIndex + '</td>';
    const string = '<td class="note"></td><td class="finger"></td><td class="position">';

    //Ascending
    for (let i=1;i <= NumStrings;i++)
    {
        rowTemplate = rowTemplate + string;
    }

    rowTemplate = rowTemplate + '<td class="ViolinSpacer"></td>'

    //Descending
    for (let i=1;i <= NumStrings;i++)
    {
        rowTemplate = rowTemplate + string;
    }
    return rowTemplate;
}

function CellDirection(cellIndex)
{
    if (cellIndex >= ColDescStart)
    {
        return "Desc";
    }
    else
    {
        return "Asc";
    }
}

export function GetStringFromNoteCell(violin,cell)
{
    let stringCellIndex, colOffset,stringColOffset;
    if (CellDirection(cell.cellIndex) == "Asc")
    {
        colOffset = ColAscStart;
        stringColOffset = 1;
    }
    else
    {
        colOffset = ColDescStart;
        stringColOffset = 6;
    }

    stringCellIndex = stringColOffset + ((cell.cellIndex - colOffset) / NumNoteDetails) 
    return violin.rows[StringRow].cells[stringCellIndex].innerHTML;
}

export function GetFretFromCell(cell)
{
    return cell.parentElement.rowIndex - FretsRowStart;
}