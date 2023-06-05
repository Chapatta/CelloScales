import * as VS from './ViolinScales.js'
import * as DV from './DisplayViolin.js'
import * as UT from './Util.js'
import * as DAL from './DataAccessLayer.js'
import * as ES from './EditScale.js'

export function Export()
{
    const violin = document.getElementById("Violin");
    ES.CommitChanges(violin);

    const textArea = document.getElementById('Export-table');
    textArea.innerHTML = UT.Empty;

    let fingerBlock = 1;

    const scaleID = document.getElementById('Scales-dropdown').value;
    const currentScale = DAL.GetScale(scaleID);

    let stringExport = "declare @S int = " + currentScale.Scale + ",@O int = " + currentScale.Octaves + "\r\n";
    stringExport = stringExport + "delete from FingerBlocks where Scale = @S and Octaves = @O\r\n\r\n";

    var retObj = ExportDirection(UT.RowAscEnd,fingerBlock,'Asc');
    stringExport = stringExport + retObj.string

    fingerBlock = retObj.fingerBlock + 1;
    stringExport = stringExport + ExportDirection(UT.RowDescEnd,fingerBlock,'Desc') .string;

    textArea.innerHTML = stringExport;
}

export function CopyAscending()
{
    const violin = document.getElementById("Violin");
    ES.CommitChanges(violin);
    DV.RefreshViolinDirection(UT.ColDescStart)

    let note

    const maxFret = DAL.GetMaxFret();
    let row;

    for (let r=0; r<=maxFret; r++) 
    {
        row = violin.rows[r + UT.FretsRowStart];
        for (var c = UT.ColAscStart; c < UT.ColAscStart + UT.NumStrings * UT.NumNoteDetails; c+=UT.NumNoteDetails) 
        {
            note = row.cells[c].innerHTML;

            if (!(UT.EmptyCell(note)))
            {
                // console.log("note : " + note);
                ES.FingerPositionCell.StringCol = c + UT.ColDirOffset;
                ES.FingerPositionCell.Fret = r;
                ES.FingerPositionCell.String = UT.GetStringFromNoteCell(violin,row.cells[c]);
                ES.FingerPositionCell.Note = note;
                ES.FingerPositionCell.Finger = row.cells[c+1].innerHTML;
                ES.FingerPositionCell.Position = row.cells[c+2].innerHTML;
                ES.UpdateViolinCell(violin)
            }
        }
    }
}

function ExportDirection(rowStart,fingerBlock,direction)
{
    let cellNotes,cellFingers,cellViolinPositions,stringExport = "";
    const violin = document.getElementById("Violin");
    
    //Ascending
    // let scale,octaves,
    let string,fret,note,notePosition = 1,finger,violinPosition
    let lastFinger = -1,currentViolinPosition;

    for (let r = rowStart ; r >= rowStart - 9; r-=3) 
    {
        cellNotes = violin.rows[r].cells;
        cellFingers = violin.rows[r-1].cells;
        cellViolinPositions = violin.rows[r-2].cells;
        //console.log("r: " + r);

        string = cellViolinPositions[0].innerHTML;
        for (let c = 0; c < cellNotes.length; c++) 
        {
            //console.log("c: " + c);
            note = cellNotes[c].innerHTML;

            if (!(UT.EmptyCell(note)))
            {
                //console.log("note : " + note);
                finger = cellFingers[c].innerHTML;
                violinPosition = cellViolinPositions[c+1].innerHTML;

                fret = c;
    
                if (finger < lastFinger)
                {
                    fingerBlock = fingerBlock + 1;
                    notePosition = 1;
                }
    
                if (!(UT.EmptyCell(violinPosition)))
                {
                    currentViolinPosition = violinPosition;
                }
                else
                {
                    violinPosition = currentViolinPosition;
                }

                stringExport = stringExport + "insert into FingerBlocks values (@S,@O," + fingerBlock + "," + SQLString(string) + "," + fret + "," + 
                    SQLString(direction) + "," + SQLString(note)+ "," + notePosition+ "," + finger + "," + SQLString(violinPosition) + ")\r\n";

                notePosition = notePosition + 1;
                lastFinger = finger;
            }
        }
    } 
    return {string: stringExport,fingerBlock: fingerBlock};
}

function SQLString(string)
{
    return "'" + string + "'";
}

function AddRow(exportTable,text) 
{
    const cell = document.createElement("td");
    cell.innerHTML=text;

    const row = document.createElement("tr");
    row.appendChild(cell);

    exportTable.appendChild(row);   
    
        // // Insert a row at the end of table
        // var newRow = tbodyRef.insertRow();
    
        // // Insert a cell at the end of the row
        // var newCell = newRow.insertCell();
        
        // // Append a text node to the cell
        // var newText = document.createTextNode('new row');
        // newCell.appendChild(newText);
}
