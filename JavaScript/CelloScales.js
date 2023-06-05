// Need to move back out of the JavaScript folder from where this is run
import * as DAL from './DataAccessLayer.js'
import * as DV from './DisplayCello.js'
import * as UT from './Util.js'
import * as EXP from './Export.js'
import * as ES from './EditScale.js'
import * as DFP from './DragFingerPosition.js'
// import {ShowFingerBlocks} from './DisplayCello.js'

window.addEventListener("load", SetUpPage,false);
export let CurrentScaleID = 0;
export let CurrentScaleNotes;

function SetUpPage() 
{
    SetupScaleTypesDropdown();

    const dropdown = document.getElementById('Scales-dropdown');
    dropdown.onchange = OnScales_Change;
    dropdown.addEventListener('change', OnScales_Change);

    SetupKeysDropdown();

    AddFrets();

    const keyTable = document.getElementById('Key');
    let row;
    for (var rowIndex = 1; rowIndex <= 3; rowIndex++) 
    {
        row = keyTable.rows[rowIndex];
        row.onclick = OnKeyScaleRow_Click;       
    }

    var button = document.getElementById('Export-button');
    button.onclick = OnExport_Click;

    button = document.getElementById('CopyAsc-button');
    button.onclick = OnCopyAsc_Click;

    button = document.getElementById('Export-Tab');
    button.onclick = OnTab_Click;

    button = document.getElementById('Cello-Tab');
    button.onclick = OnTab_Click;
    button.click();

    const Cello = document.getElementById('Cello');
    Cello.onclick = ES.OnCelloClicked;

    //DFP.SetupDraggingRows();

    document.addEventListener("keydown", KeyCheck);  //or however you are calling your method
}


function OnKey_Change() 
{
    const keyNotes = document.getElementById('Key-dropdown').value;
   
    let scaleName,scaleNotes,row,scaleIndex,scale;
    const scales = DAL.GetKeyScales(keyNotes)
    
    const keyTable = document.getElementById('Key');
    for (var rowIndex = 1; rowIndex <= 3; rowIndex++) 
    {
        row = keyTable.rows[rowIndex];
        scaleIndex = rowIndex - 1;
        if (scaleIndex < scales.length)
        {
            scale = scales[scaleIndex];
            scaleName = scale.StartingNote + " " + scale.ScaleType;
            scaleNotes = scale.Notes
        }
        else
        {
            scaleName = "&nbsp;";
            scaleNotes = "&nbsp;";
        }
        row.cells[0].innerHTML = scaleName;
        row.cells[2].innerHTML = scaleNotes;
    }
}

function OnKeyScaleRow_Click()
{
    const ScaleTypeDropDown = document.getElementById("ScaleType-dropdown");
    const scale = this.cells[0].innerHTML;

    const scaleTypeID = GetScaleTypeFromScaleName(scale);
    const scaleType = UT.SetDropDown(ScaleTypeDropDown,scaleTypeID)
    PopulateScalesDropDown(scaleType);

    const ScalesDropDown = document.getElementById("Scales-dropdown");
    CurrentScaleID = UT.SetDropDown(ScalesDropDown,scale)
    ShowScale(CurrentScaleID);
}

function OnScaleTypes_Change() 
{
    const scaleType = document.getElementById('ScaleType-dropdown').value;
    PopulateScalesDropDown(scaleType);
}

function OnScales_Change() 
{
    CurrentScaleID = document.getElementById('Scales-dropdown').value;
    ShowScale(CurrentScaleID);
    Tab_Click('Cello-Tab');
}

function OnExport_Click()
{
    if (CurrentScaleID == 0)
    {
        alert("Please choose a scale");
        return;
    }
  
    EXP.Export();
    Tab_Click('Export-Tab');

    var modal = document.getElementById("FingerPosition-modal");
    modal.style.display = "none";
}

function OnCopyAsc_Click()
{
    EXP.CopyAscending();
}

function OnTab_Click() 
{
  Tab_Click(this.id);
}

function GetScaleTypeFromScaleName(scaleName)
{
    return scaleName.substring(scaleName.indexOf(' ') + 1); 
}

function AddFrets()
{        
    const Cello  = document.getElementById("Cello");
    const maxFret = DAL.GetMaxFret();
    let row;

    const template = Cello.rows[2].innerHTML;

    for (var r = 1; r <= maxFret; r++) 
    {
        row =  document.createElement("tr");
        row.innerHTML = template.replace("0",r);
        Cello.appendChild(row);
    }
}

function OnArpeggio_Click()
{
    ShowScale(CurrentScaleID);
}

function SetupScaleTypesDropdown()
{
    const dropdown = document.getElementById('ScaleType-dropdown');
    dropdown.length = 0;
    
    const defaultOption = document.createElement('option');
    defaultOption.text = 'Choose Scale type';
    
    dropdown.add(defaultOption);
    dropdown.selectedIndex = 0;
    
    let option,scaleType;

    var scaleTypes = DAL.GetScaleTypes();
    for (var i = 0; i < scaleTypes.length; i++) 
    {
      option = document.createElement('option');
      scaleType = scaleTypes[i];
      option.text = scaleType.Name;
      option.value = scaleType.ID;
      dropdown.add(option);
    }

    dropdown.addEventListener('change', OnScaleTypes_Change);
}

function SetupKeysDropdown()
{
    const dropdown = document.getElementById('Key-dropdown');
    dropdown.length = 0;
    
    const defaultOption = document.createElement('option');
    defaultOption.text = 'Choose Key';
    
    dropdown.add(defaultOption);
    dropdown.selectedIndex = 0;
    
    let option,key;

    var keys = DAL.GetKeys();
    for (var i = 0; i < keys.length; i++) 
    {
      option = document.createElement('option');
      key = keys[i];
      option.text = key.KeyNotes;
      option.value = key.KeyNotes;
      dropdown.add(option);
    }

    dropdown.addEventListener('change', OnKey_Change);
}

function ShowScale(scaleID)
{
    const currentScale = DAL.GetScale(scaleID);
    CurrentScaleNotes = UT.GetScaleNotes(currentScale.Notes);
    document.getElementById('ScaleName-label').innerText = GetScaleName(currentScale);
    document.getElementById('KeySignature-label').innerText = currentScale.KeyNotes;
    document.getElementById('Notes-label').innerText = currentScale.Notes;

    if (document.getElementById('LockCello').checked)
    {
        return;
    }

    DV.ShowFingerBlocks(currentScale);
}

function GetScaleName(Scale)
{
    let scaleName;
    switch (Scale.ScaleType)
    {
        case 6:
            //Dominant 7th
            scaleName = "Key of " + Scale.StartingNote + " " + Scale.Name + " " + Scale.Octaves + " octaves"
            break;
        case 7:
            //Diminished 7th
            scaleName = Scale.Name + " starting on " + Scale.StartingNote + " " + Scale.Octaves + " octaves"
            break;     
        default:
            scaleName = Scale.StartingNote + " " + Scale.Name + " " + Scale.Octaves + " octaves"
    }
    return scaleName;
}

function PopulateScalesDropDown(scaleType)
{
    const dropdown = document.getElementById('Scales-dropdown');
    dropdown.length = 0;
    
    const defaultOption = document.createElement('option');
    defaultOption.text = 'Choose Scale';
    
    dropdown.add(defaultOption);
    dropdown.selectedIndex = 0;
    
    let option,scale;

    var scales = DAL.GetScales(scaleType)
    for (var i = 0; i < scales.length; i++) 
    {
        scale = scales[i];
        option = document.createElement('option');
        option.text = scale.StartingNote + " " + scale.Name  + " (" + scale.Octaves + ")";
        option.value = scale.ID;
        dropdown.add(option);      
    }
}

function Tab_Click(tabButtonID)
{
    const modeName = tabButtonID.replace("Tab","Div");
    // Declare all variables
    var i, tabcontent, tablinks;
  
    // Get all elements with class="tabcontent" and hide them
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
    }
  
    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

    // Show the current tab, and add an "active" class to the button that opened the tab
    document.getElementById(modeName).style.display = "block";
    // this.style.display = "block";
    document.getElementById(tabButtonID).className += " active";
    
}

function KeyCheck(event)
{
    var KeyID = event.keyCode;
    switch(KeyID)
    {
        //case 8:
            //alert("backspace");
            //break; 
        case 46:
            ES.FingerPositionDelete()
            break;
        case 27:
            //Escape
            const Cello = document.getElementById("Cello");
            ES.CommitChanges(Cello);
        default:
        break;
    }
}