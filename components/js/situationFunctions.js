//-----------
// Situation Functions

// Function to disable optgroup
export function disableOptGroup(selectID, optGroupIndex){
    var selectobject;
    selectobject = document.getElementById(selectID).getElementsByTagName("optgroup");
    selectobject[optGroupIndex].disabled = true;
    selectID = "#" + selectID;
    $(selectID).selectpicker('refresh');
}
  
// Function to re-enable optgroup
export function enableOptGroup(selectID, optGroupIndex){
    var selectobject;
    selectobject = document.getElementById(selectID).getElementsByTagName("optgroup");
    selectobject[optGroupIndex].disabled = false;
    selectID = "#" + selectID;
    $(selectID).selectpicker('refresh');
}
  
// Situation Toggle Else Function
export function situationToggleElse(targetNumber,columnNumber,optSelect,table){
    if (optSelect.includes(targetNumber)){
        table.columns(columnNumber).search('').draw();
        for (var z=0;z<optSelect.length;z++){
            if(optSelect[z] == targetNumber){
                optSelect.splice(z,1);
            }
        }
    }
}

// Function that Enables/Disables All Appropirate Groups
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

//-----------