import scaleTypesJSON from '../JSON/ScaleTypes.json' assert { type: "json" };
import scalesJSON from '../JSON/Scales.json' assert { type: "json" };
import fingerPositionJSON from '../JSON/FingerPositions.json' assert { type: "json" };
import keySignaturesJSON from '../JSON/KeySignatures.json' assert { type: "json" };
import keyScalesJSON from '../JSON/KeyScales.json' assert { type: "json" };
import violinNoteJSON from '../JSON/ViolinNotes.json' assert { type: "json" };
import noteFretsJSON from '../JSON/NoteFrets.json' assert { type: "json" };

export function GetScaleTypes()
{
    return scaleTypesJSON;
}

export function GetScales(scaleType)
{
    return scalesJSON.filter(item => {return item.ScaleType == scaleType}).sort((r1, r2) => (r1.StartingNote > r2.StartingNote) ? 1 : (r1.StartingNote < r2.StartingNote) ? -1 : 0);
}

export function GetMaxFret()
{
    return 18;
    // return fingerPositionJSON.reduce((a,b)=>a.Fret>b.Fret?a:b).Fret;
}

export function GetKeys()
{
    return keySignaturesJSON;
}

export function GetKeyScales(keyNotes)
{
    return keyScalesJSON.filter(item => {return item.KeyNotes == keyNotes}).sort((r1, r2) => (r1.ScaleType > r2.ScaleType) ? 1 : (r1.ScaleType < r2.ScaleType) ? -1 : 0);
}

export function GetScale(scaleID)
{
    return scalesJSON.find(item => {return item.ID == scaleID})
}

export function GetFingerPositions(scaleID,octaves)
{
    return fingerPositionJSON.filter(item => {return item.Scale == scaleID && item.Octaves == octaves})
}

export function GetViolinNotes(string,fret)
{
    return violinNoteJSON.filter(item => {return item.String == string && item.Fret == fret})
}

export function GetNoteFrets()
{
    const noteFretsJS = noteFretsJSON.sort((r1, r2) => (r1.Fret > r2.Fret) ? 1 : (r1.Fret < r2.Fret) ? -1 : 0);
    const noteFretsArr = [];
    for(let i in noteFretsJS) { 
        noteFretsArr.push([i,noteFretsJS[i]]); 
     }; 
     return noteFretsArr;
}

