import * as sit from '../uniformGameFunctions.js';
import * as wlt from '../tableFunctions.js';

// Define Groups
export var gameType = ["Home", "Road", "Neutral","All Playoffs","First Round","Second Round","Third Round","South State","State Championship"];
export var months = ["August","September","October","November","December"];
export var days = ["Thursday","Friday","Saturday"];
export var homecoming = ["Homecoming"];
export var headCoaches = ["Doug Merchant","Marcus Boyles","Shannon White","Bud Blackledge","Matt Caldwell","Chuck Robertson","Mitch Evans","Jay Blackledge","Seth McDonald", "Drew Granger"];

// Load Game Type Filters
$(function(){ $("#ttGameA").selectpicker('render'); })
$(function(){ $("#ttGameB").selectpicker('render'); })
$(function(){ $("#ttGameC").selectpicker('render'); })

// 2: Visible and has a value
// 1: Visible but has no value
// 0: Not visible
var testSelects = {A: 1, B: 0, C: 0};

// 1: Enabled
// 0: Disabled
var enabled = {A: 1, B: 1, C: 1, D: 1, E: 1};

// 3: Group 3 Selected
// 2: Group 2 Selected
// 1: Group 1 Selected
// 0: Group 0 Selected
// -1: No Group Selected
var selected = {A: -1, B: -1, C: -1};

// Select A
$(document).ready(function (){
    $("#ttGameA").on("change", function() {

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
            if(jQuery.inArray(this.value, gameType) !== -1){
                enabled.A = 0;
                selected.A = 0;
            }
            else if(jQuery.inArray(this.value, months) !== -1){
                enabled.B = 0;
                selected.A = 1;
            }
            else if(jQuery.inArray(this.value, days) !== -1){
                enabled.C = 0;
                selected.A = 2;
            }
            else if(jQuery.inArray(this.value, homecoming) !== -1){
                enabled.D = 0;
                selected.A = 3;
            }
            else if(jQuery.inArray(this.value, headCoaches) !== -1){
                enabled.E = 0;
                selected.A = 4;
            }
        }

        // Enable and Disable appropriate Option Groups
        sit.enableDisableGroups(enabled,selected,"ttGameA","ttGameB","ttGameC",0);
    });
});
  
// Select A Clear
$(function() {
    $('#ttGameAClear').click(function() {

        // Clear A
        $("#ttGameA").val('').trigger('change');
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
    $("#ttGameB").on("change", function() {

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
            if(jQuery.inArray(this.value, gameType) !== -1){
                enabled.A = 0;
                selected.B = 0;
            }
            else if(jQuery.inArray(this.value, months) !== -1){
                enabled.B = 0;
                selected.B = 1;
            }
            else if(jQuery.inArray(this.value, days) !== -1){
                enabled.C = 0;
                selected.B = 2;
            }
            else if(jQuery.inArray(this.value, homecoming) !== -1){
                enabled.D = 0;
                selected.B = 3;
            }
            else if(jQuery.inArray(this.value, headCoaches) !== -1){
                enabled.E = 0;
                selected.B = 4;
            }
        }

        // Enable and Disable appropriate Option Groups
        sit.enableDisableGroups(enabled,selected,"ttGameA","ttGameB","ttGameC",1);
    });
});
  
// Select B Clear
$(function() {
    $('#ttGameBClear').click(function() {

        // Clear B
        $("#ttGameB").val('').trigger('change');
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
    $("#ttGameC").on("change", function() {

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

            // Reset selected.C
            selected.C = -1;
        }

        // If Select C has a value
        if(this.value){
            testSelects.C = 2;
            $('#gameC').show();

            // Classify value by Option Group
            if(jQuery.inArray(this.value, gameType) !== -1){
                enabled.A = 0;
                selected.C = 0;
            }
            else if(jQuery.inArray(this.value, months) !== -1){
                enabled.B = 0;
                selected.C = 1;
            }
            else if(jQuery.inArray(this.value, days) !== -1){
                enabled.C = 0;
                selected.C = 2;
            }
            else if(jQuery.inArray(this.value, homecoming) !== -1){
                enabled.D = 0;
                selected.C = 3;
            }
            else if(jQuery.inArray(this.value, headCoaches) !== -1){
                enabled.E = 0;
                selected.C = 4;
            }
        }

        // Enable and Disable appropriate Option Groups
        sit.enableDisableGroups(enabled,selected,"ttGameA","ttGameB","ttGameC",2);
    });
});
  
// Select C Clear
$(function() {
    $('#ttGameCClear').click(function() {

        // Clear C
        $("#ttGameC").val('').trigger('change');
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
    wlt.urlTrigger('gameA','#ttGameA');
    wlt.urlTrigger('gameB','#ttGameB');
    wlt.urlTrigger('gameC','#ttGameC');
});
//-----------

//-----------
// Set Filters for Mobile
if( /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ) {
    $('#ttGameA').selectpicker('mobile');
    $('#ttGameB').selectpicker('mobile');
    $('#ttGameC').selectpicker('mobile');
  }
//-----------
