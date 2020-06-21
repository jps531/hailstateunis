import * as sit from '../uniformGameFunctions.js';
import * as wlt from '../tableFunctions.js';

// Define Groups
export var jerseyColor = ["White Jerseys","Maroon Jerseys","Gray Jerseys","Black Jerseys","Cream Jerseys","Camo Jerseys","Wool Jerseys","Teal Jerseys"];
export var jerseyType = ["Button-Up","Pullover","Two-Button","Vest"];
export var jerseyAttribute = ["Solid","Pinstripe"];
export var hats = ["Maroon Hats","Black Hats","Green Hats","Cream Hats","White Hats","Maroon + White Panel Hats","Black + White Panel Hats","Green + White Panel Hats"];
export var pants = ["Solid White Pants","Solid Gray Pants","White Pinstripe Pants","Gray Pinstripe Pants","Black Pants"];
export var jerseyDesigns = ["White 85","White MS","White State","White Hail State","White St. Pat's","White Mother's Day",
                     "Maroon 85","Maroon MS","Maroon State","Maroon Bulldogs","Gray 'State' Script","Gray 'Mississippi State' Script","Gray MS","Gray Hail State"];

// Load Uniform Filters
$(function(){ $("#bbUniformA").selectpicker('render'); })
$(function(){ $("#bbUniformB").selectpicker('render'); })
$(function(){ $("#bbUniformC").selectpicker('render'); })

// 2: Visible and has a value
// 1: Visible but has no value
// 0: Not visible
var testSelects = {A: 1, B: 0, C: 0};

// 1: Enabled
// 0: Disabled
var enabled = {A: 1, B: 1, C: 1, D: 1, E: 1, F: 1};

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
    $("#bbUniformA").on("change", function() {

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

            // Reset selected.A
            selected.A = -1;
        }

        // If Select A has a value
        if(this.value){
            testSelects.A = 2;
            
            // If Select B isn't visible, make it visible
            if(!testSelects.B){
                testSelects.B = 1;
                $('#uniformB').show();
            }

            // If Select C isn't visible and Select B has a value, make Select C visible
            else if(!testSelects.C && testSelects.B == 2){
                testSelects.C = 1;
                $('#uniformC').show();
            }

            // Classify value by Option Group
            if(jQuery.inArray(this.value, jerseyColor) !== -1){
                enabled.A = 0;
                selected.A = 0;
            }
            else if(jQuery.inArray(this.value, jerseyType) !== -1){
                enabled.B = 0;
                selected.A = 1;
            }
            else if(jQuery.inArray(this.value, jerseyAttribute) !== -1){
                enabled.C = 0;
                selected.A = 2;
            }
            else if(jQuery.inArray(this.value, hats) !== -1){
                enabled.D = 0;
                selected.A = 3;
            }
            else if(jQuery.inArray(this.value, pants) !== -1){
                enabled.E = 0;
                selected.A = 4;
            }
            else if(jQuery.inArray(this.value, jerseyDesigns) !== -1){
                enabled.F = 0;
                selected.A = 5;
            }
        }

        // Enable and Disable appropriate Option Groups
        sit.enableDisableGroups(enabled,selected,"bbUniformA","bbUniformB","bbUniformC",0);
    });
});
  
// Select A Clear
$(function() {
    $('#bbUniformAClear').click(function() {

        // Clear A
        $("#bbUniformA").val('').trigger('change');
        testSelects.A = 1;

        // Hide B if B is empty and C is hidden
        if (testSelects.B == 1 && testSelects.C == 0){
            $("#uniformB").hide();
            testSelects.B = 0;
        }

        // Hide C if B is selected and C is empty
        if (testSelects.B == 2 && testSelects.C == 1){
            $("#uniformC").hide();
            testSelects.C = 0;
        }
    });
});

// Select B
$(document).ready(function (){
    $("#bbUniformB").on("change", function() {

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

            // Reset selected.B
            selected.B = -1;
        }

        // If Select B has a value
        if(this.value){
            testSelects.B = 2;
            $('#uniformB').show();

            // If Select C isn't visible and Select A has a value, make Select C visible
            if(!testSelects.C && testSelects.A == 2){
                testSelects.C = 1;
                $('#uniformC').show();
            }

            // Classify value by Option Group
            if(jQuery.inArray(this.value, jerseyColor) !== -1){
                enabled.A = 0;
                selected.B = 0;
            }
            else if(jQuery.inArray(this.value, jerseyType) !== -1){
                enabled.B = 0;
                selected.B = 1;
            }
            else if(jQuery.inArray(this.value, jerseyAttribute) !== -1){
                enabled.C = 0;
                selected.B = 2;
            }
            else if(jQuery.inArray(this.value, hats) !== -1){
                enabled.D = 0;
                selected.B = 3;
            }
            else if(jQuery.inArray(this.value, pants) !== -1){
                enabled.E = 0;
                selected.B = 4;
            }
            else if(jQuery.inArray(this.value, jerseyDesigns) !== -1){
                enabled.F = 0;
                selected.B = 5;
            }
        }

        // Enable and Disable appropriate Option Groups
        sit.enableDisableGroups(enabled,selected,"bbUniformA","bbUniformB","bbUniformC",1);
    });
});
  
// Select B Clear
$(function() {
    $('#bbUniformBClear').click(function() {

        // Clear B
        $("#bbUniformB").val('').trigger('change');
        testSelects.B = 1;

        // Hide B if A is empty
        if (testSelects.A == 1){
            $("#uniformB").hide();
            testSelects.B = 0;
        }

        // Hide C if C is empty
        if (testSelects.C == 1){
            $("#uniformC").hide();
            testSelects.C = 0;
        }
    });
});

// Select C
$(document).ready(function (){
    $("#bbUniformC").on("change", function() {

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

            // Reset selected.C
            selected.C = -1;
        }

        // If Select C has a value
        if(this.value){
            testSelects.C = 2;
            $('#uniformC').show();

            // Classify value by Option Group
            if(jQuery.inArray(this.value, jerseyColor) !== -1){
                enabled.A = 0;
                selected.C = 0;
            }
            else if(jQuery.inArray(this.value, jerseyType) !== -1){
                enabled.B = 0;
                selected.C = 1;
            }
            else if(jQuery.inArray(this.value, jerseyAttribute) !== -1){
                enabled.C = 0;
                selected.C = 2;
            }
            else if(jQuery.inArray(this.value, hats) !== -1){
                enabled.D = 0;
                selected.C = 3;
            }
            else if(jQuery.inArray(this.value, pants) !== -1){
                enabled.E = 0;
                selected.C = 4;
            }
            else if(jQuery.inArray(this.value, jerseyDesigns) !== -1){
                enabled.F = 0;
                selected.C = 5;
            }
        }

        // Enable and Disable appropriate Option Groups
        sit.enableDisableGroups(enabled,selected,"bbUniformA","bbUniformB","bbUniformC",2);
    });
});
  
// Select C Clear
$(function() {
    $('#bbUniformCClear').click(function() {

        // Clear C
        $("#bbUniformC").val('').trigger('change');
        testSelects.C = 1;

        // Hide C if A or B are empty
        if (testSelects.A == 1 || testSelects.B == 1){
            $("#uniformC").hide();
            testSelects.C = 0;
        }
    });
});

//-----------
// Auto Load URL Parameters
$(document).ready(function(){
    wlt.urlTrigger('uniformA','#bbUniformA');
    wlt.urlTrigger('uniformB','#bbUniformB');
    wlt.urlTrigger('uniformC','#bbUniformC');
  });
  //-----------