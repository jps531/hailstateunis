//-----------
// Uniform / Game Filter Functions

// Function: searchTable
// Purpose: Searches the Table
// Input(s): optGroupIndex: integer; index of option group which is selected
//           table: DataTable; table object that is being searched
//           searchTerm: string; term being searched
//           optSelect: array; list of option groups that are currently being searched
//           groupNumber: integer; index of option group that is being checked
//           columnNumber: integer; index of column being searched
// Output(s): optSelect: array
export function searchTable(optGroupIndex,table,searchTerm,optSelect,groupNumber,columnNumber){
    if(optGroupIndex == groupNumber){
        table.column(columnNumber).search(searchTerm, true, false).draw();
        optSelect.push(groupNumber);
    }
    else{
        if (optSelect.includes(groupNumber)){
            table.columns(columnNumber).search('').draw();
            for (var z=0;z<optSelect.length;z++){
                if(optSelect[z] == groupNumber){
                    optSelect.splice(z,1);
                }
            }
        }
    }
    return optSelect;
};

// Function: searchTableB
// Purpose: Searches the Table *** without specific regular expression ***
// Input(s): optGroupIndex: integer; index of option group which is selected
//           table: DataTable; table object that is being searched
//           searchTerm: string; term being searched
//           optSelect: array; list of option groups that are currently being searched
//           groupNumber: integer; index of option group that is being checked
//           columnNumber: integer; index of column being searched
// Output(s): optSelect: array
export function searchTableB(optGroupIndex,table,searchTerm,optSelect,groupNumber,columnNumber){
    if(optGroupIndex == groupNumber){
        table.column(columnNumber).search(searchTerm).draw();
        optSelect.push(groupNumber);
    }
    else{
        if (optSelect.includes(groupNumber)){
            table.columns(columnNumber).search('').draw();
            for (var z=0;z<optSelect.length;z++){
                if(optSelect[z] == columnNumber){
                    optSelect.splice(z,1);
                }
            }
        }
    }
    return optSelect;
};

// Function: enableDisableGroups
// Purpose: Enables/Disables All Appropirate Groups
// Input(s): enabled: array; list of option groups and whether they are enabled or disabled
//           selected: array; list of of selects and if and where they are selected
//           selectIDa: string; name of first select
//           selectIDb: string; name of second select
//           selectIDc: string; name of third select
//           selectCurrent: integer; index of current select
// Output(s): none
export function enableDisableGroups(enabled, selected, selectIDa, selectIDb, selectIDc, selectCurrent){
    var enabledKeys = Object.values(enabled);
    var selectIDcurrent;

    // If First Select
    if(selectCurrent == 0){
        selectIDcurrent = selectIDa;
    }

    // If Second Select
    else if(selectCurrent == 1){
        selectIDcurrent = selectIDb;
    }

    // If Third Select
    else if(selectCurrent == 2){
        selectIDcurrent = selectIDc;
    }

    // Loop through Option Groups
    for(var z=0; z < enabledKeys.length; z++){

        // Enable if not selected anywhere
        if(enabledKeys[z] !== 0){
            enableOptGroup(selectIDa, z);
            enableOptGroup(selectIDb, z);
            enableOptGroup(selectIDc, z);
        }

        else{

            // Disable if group select A if not selected there and A is not the current group
            if(selected.A !== z && selectIDa !== selectIDcurrent){
                disableOptGroup(selectIDa, z);
            }

            // Disable if group select B if not selected there and B is not the current group
            if(selected.B !== z && selectIDb !== selectIDcurrent){
                disableOptGroup(selectIDb, z);
            }

            // Disable if group select C if not selected there and C is not the current group
            if(selected.C !== z && selectIDc !== selectIDcurrent){
                disableOptGroup(selectIDc, z);
            }
        }
    }
}

// Function: disableOptGroup
// Purpose: Disables Option Group
// Input(s): selectID: string; name of select which is being partially disabled
//           optGroupIndex: integer; index of option group which is being disabled
// Output(s): none
function disableOptGroup(selectID, optGroupIndex){
    if (document.getElementById(selectID) != null)
    {
        var selectobject;
        selectobject = document.getElementById(selectID).getElementsByTagName("optgroup");
        selectobject[optGroupIndex].disabled = true;
        selectID = "#" + selectID;
        $(selectID).selectpicker('refresh');
    }
}
  
// Function: enableOptGroup
// Purpose: Re-enables Option Group
// Input(s): selectID: string; name of select which is being partially re-enabled
//           optGroupIndex: integer; index of option group which is being re-enabled
// Output(s): none
function enableOptGroup(selectID, optGroupIndex){
    if (document.getElementById(selectID) != null)
    {
        var selectobject;
        selectobject = document.getElementById(selectID).getElementsByTagName("optgroup");
        selectobject[optGroupIndex].disabled = false;
        selectID = "#" + selectID;
        $(selectID).selectpicker('refresh');
    }
}

//-----------
