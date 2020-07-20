import * as sit from '../uniformGameFunctions.js';
import * as wlt from '../tableFunctions.js';

// Define Groups
export var months = ["February","March","April","May","June"];
export var days = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"];
export var headCoaches = ["Paul Gregory","Pat McMahon","Ron Polk","John Cohen","Andy Cannizaro","Gary Henderson","Chris Lemonis"];
export var dh = ["Doubleheader"];
export var sbw = ["Super Bulldog Weekend"];
export var gameLocation = ["Home","Road","Neutral","Starkville","Omaha","Atlanta","Baton Rouge","Charlottesville","Clemson",
                    "Columbus","Coral Gables","Fullerton","Gainesville","Hattiesburg","Lafayette","Nashville","Tallahassee"];
export var gameType = ["Midweek","Non-Conference Game 1","Non-Conference Game 2","Non-Conference Game 3","Non-Conference Game 4",
                "SEC Game 1","SEC Game 2","SEC Game 3","SEC","NCAA Tournament","SEC Tournament","National Championship Series",
                "College World Series","Super Regional","Regional","National Championship Game 1","National Championship Game 2",
                "CWS Opening Game","CWS Elimination Game","CWS Winners Bracket Game","CWS Bracket Championship Game",
                "CWS Bracket Championship Game 7","Super Regional Game 1","Super Regional Game 2","Super Regional Game 3",
                "Regional Opening Game","Regional Elimination Game","Regional Winners Bracket Game","Regional Championship Game",
                "Regional Championship Game 7","SECT Play-In Game","SECT Bracket Game 1","SECT Elimination Game","SECT Winners Bracket Game",
                "SECT Semifinal Game","SECT Championship Game"];

// Load game Filters
$(function(){ $("#bbGameA").selectpicker('render'); })
$(function(){ $("#bbGameB").selectpicker('render'); })
$(function(){ $("#bbGameC").selectpicker('render'); })

// 2: Visible and has a value
// 1: Visible but has no value
// 0: Not visible
var testSelects = {A: 1, B: 0, C: 0};

// 1: Enabled
// 0: Disabled
var enabled = {A: 1, B: 1, C: 1, D: 1, E: 1, F: 1, G: 1};

// 6: Group 6 Selected
// 5: Group 5 Selected
// 4: Group 4 Selected
// 3: Group 3 Selected
// 2: Group 2 Selected
// 1: Group 1 Selected
// 0: Group 0 Selected
// -1: No Group Selected
var selected = {A: -1, B: -1, C: -1};

// Select A
$(document).ready(function (){
    $("#bbGameA").on("change", function() {

        // If Select A has no value or just replaced a value
        if(!this.value || testSelects.A == 2){
            // Identify Option Group that was just cleared
            if (selected.A == 0){
                enabled.A = 1;
            }
            else if (selected.A == 1){
                enabled.B = 1;
            }
            else if (selected.A == 2){
                enabled.C = 1;
            }
            else if (selected.A == 3){
                enabled.D = 1;
            }
            else if (selected.A == 4){
                enabled.E = 1;
            }
            else if (selected.A == 5){
                enabled.F = 1;
            }
            else if (selected.A == 5){
                enabled.G = 1;
            }

            // Reset selected.A
            selected.A = -1;
        }

        // If Select A has a value
        if(this.value){
            testSelects.A = 2;
            
            // If Select B isn't visible, make it visible
            if(!testSelects.B){
                testSelects.B = 1;
                $('#gameB').show();
            }

            // If Select C isn't visible and Select B has a value, make Select C visible
            else if(!testSelects.C && testSelects.B == 2){
                testSelects.C = 1;
                $('#gameC').show();
            }

            // Classify value by Option Group
            if(jQuery.inArray(this.value, months) !== -1){
                enabled.A = 0;
                selected.A = 0;
            }
            else if(jQuery.inArray(this.value, days) !== -1){
                enabled.B = 0;
                selected.A = 1;
            }
            else if(jQuery.inArray(this.value, headCoaches) !== -1){
                enabled.C = 0;
                selected.A = 2;
            }
            else if(jQuery.inArray(this.value, dh) !== -1){
                enabled.D = 0;
                selected.A = 3;
            }
            else if(jQuery.inArray(this.value, sbw) !== -1){
                enabled.E = 0;
                selected.A = 4;
            }
            else if(jQuery.inArray(this.value, gameLocation) !== -1){
                enabled.F = 0;
                selected.A = 5;
            }
            else if(jQuery.inArray(this.value, gameType) !== -1){
                enabled.G = 0;
                selected.A = 6;
            }
        }

        // Enable and Disable appropriate Option Groups
        sit.enableDisableGroups(enabled,selected,"bbGameA","bbGameB","bbGameC",0);
    });
});
  
// Select A Clear
$(function() {
    $('#bbGameAClear').click(function() {

        // Clear A
        $("#bbGameA").val('').trigger('change');
        testSelects.A = 1;

        // Hide B if B is empty and C is hidden
        if (testSelects.B == 1 && testSelects.C == 0){
            $("#gameB").hide();
            testSelects.B = 0;
        }

        // Hide C if B is selected and C is empty
        if (testSelects.B == 2 && testSelects.C == 1){
            $("#gameC").hide();
            testSelects.C = 0;
        }
    });
});

// Select B
$(document).ready(function (){
    $("#bbGameB").on("change", function() {

        // If Select B has no value or just replaced a value
        if(!this.value || testSelects.B == 2){
            // Identify Option Group that was just cleared
            if (selected.B == 0){
                enabled.A = 1;
            }
            else if (selected.B == 1){
                enabled.B = 1;
            }
            else if (selected.B == 2){
                enabled.C = 1;
            }
            else if (selected.B == 3){
                enabled.D = 1;
            }
            else if (selected.B == 4){
                enabled.E = 1;
            }
            else if (selected.B == 5){
                enabled.F = 1;
            }
            else if (selected.B == 5){
                enabled.G = 1;
            }

            // Reset selected.B
            selected.B = -1;
        }

        // If Select B has a value
        if(this.value){
            testSelects.B = 2;
            $('#gameB').show();

            // If Select C isn't visible and Select A has a value, make Select C visible
            if(!testSelects.C && testSelects.A == 2){
                testSelects.C = 1;
                $('#gameC').show();
            }

            // Classify value by Option Group
            if(jQuery.inArray(this.value, months) !== -1){
                enabled.A = 0;
                selected.B = 0;
            }
            else if(jQuery.inArray(this.value, days) !== -1){
                enabled.B = 0;
                selected.B = 1;
            }
            else if(jQuery.inArray(this.value, headCoaches) !== -1){
                enabled.C = 0;
                selected.B = 2;
            }
            else if(jQuery.inArray(this.value, dh) !== -1){
                enabled.D = 0;
                selected.B = 3;
            }
            else if(jQuery.inArray(this.value, sbw) !== -1){
                enabled.E = 0;
                selected.B = 4;
            }
            else if(jQuery.inArray(this.value, gameLocation) !== -1){
                enabled.F = 0;
                selected.B = 5;
            }
            else if(jQuery.inArray(this.value, gameType) !== -1){
                enabled.G = 0;
                selected.B = 6;
            }
        }

        // Enable and Disable appropriate Option Groups
        sit.enableDisableGroups(enabled,selected,"bbGameA","bbGameB","bbGameC",1);
    });
});
  
// Select B Clear
$(function() {
    $('#bbGameBClear').click(function() {

        // Clear B
        $("#bbGameB").val('').trigger('change');
        testSelects.B = 1;

        // Hide B if A is empty
        if (testSelects.A == 1){
            $("#gameB").hide();
            testSelects.B = 0;
        }

        // Hide C if C is empty
        if (testSelects.C == 1){
            $("#gameC").hide();
            testSelects.C = 0;
        }
    });
});

// Select C
$(document).ready(function (){
    $("#bbGameC").on("change", function() {

        // If Select C has no value or just replaced a value
        if(!this.value || testSelects.C == 2){
            // Identify Option Group that was just cleared
            if (selected.C == 0){
                enabled.A = 1;
            }
            else if (selected.C == 1){
                enabled.B = 1;
            }
            else if (selected.C == 2){
                enabled.C = 1;
            }
            else if (selected.C == 3){
                enabled.D = 1;
            }
            else if (selected.C == 4){
                enabled.E = 1;
            }
            else if (selected.C == 5){
                enabled.F = 1;
            }
            else if (selected.C == 5){
                enabled.G = 1;
            }

            // Reset selected.C
            selected.C = -1;
        }

        // If Select C has a value
        if(this.value){
            testSelects.C = 2;
            $('#gameC').show();

            // Classify value by Option Group
            if(jQuery.inArray(this.value, months) !== -1){
                enabled.A = 0;
                selected.C = 0;
            }
            else if(jQuery.inArray(this.value, days) !== -1){
                enabled.B = 0;
                selected.C = 1;
            }
            else if(jQuery.inArray(this.value, headCoaches) !== -1){
                enabled.C = 0;
                selected.C = 2;
            }
            else if(jQuery.inArray(this.value, dh) !== -1){
                enabled.D = 0;
                selected.C = 3;
            }
            else if(jQuery.inArray(this.value, sbw) !== -1){
                enabled.E = 0;
                selected.C = 4;
            }
            else if(jQuery.inArray(this.value, gameLocation) !== -1){
                enabled.F = 0;
                selected.C = 5;
            }
            else if(jQuery.inArray(this.value, gameType) !== -1){
                enabled.G = 0;
                selected.C = 6;
            }
        }

        // Enable and Disable appropriate Option Groups
        sit.enableDisableGroups(enabled,selected,"bbGameA","bbGameB","bbGameC",2);
    });
});
  
// Select C Clear
$(function() {
    $('#bbGameCClear').click(function() {

        // Clear C
        $("#bbGameC").val('').trigger('change');
        testSelects.C = 1;

        // Hide C if A or B are empty
        if (testSelects.A == 1 || testSelects.B == 1){
            $("#gameC").hide();
            testSelects.C = 0;
        }
    });
});

//-----------
// Auto Load URL Parameters
$(document).ready(function(){
    wlt.urlTrigger('gameA','#bbGameA');
    wlt.urlTrigger('gameB','#bbGameB');
    wlt.urlTrigger('gameC','#bbGameC');
});
//-----------

console.log($('#bbGameA').val);
if(!$('#bbGameA').val()){
    document.getElementById('#bbGameA').setAttribute('title', 'Game A');
}

//-----------
// Set Filters for Mobile
if( /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ) {
    $('#bbGameA').selectpicker('mobile');
    $('#bbGameB').selectpicker('mobile');
    $('#bbGameC').selectpicker('mobile');
    $('#bbGameA').selectpicker('render');
    $('#bbGameB').selectpicker('render');
    $('#bbGameC').selectpicker('render');

    if(!$('#bbGameA').val()){
        document.getElementById('#bbGameA').setAttribute('title', 'Game A');
    }
  }
//-----------
