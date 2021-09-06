import * as sit from '../uniformGameFunctions.js';
import * as wlt from '../tableFunctions.js';

// Define Groups
export var helmets = ["Black Helmets","White Helmets","Gold Helmets","Gloss Black Helmets","Matte Black Helmets","2015 Helmet Design","2003 Helmet Design","1980 Helmet Design","American Flag Helmets"];
export var jerseys = ["Black Jerseys","White Jerseys","Gold Jerseys","Heather Gray Jerseys"];
export var pants = ["Black Pants","White Pants","Gold Pants","Heather Gray Pants"];

// Load Uniform Filters
$(function(){ $("#usmUniformA").selectpicker('render'); })
$(function(){ $("#usmUniformB").selectpicker('render'); })
$(function(){ $("#usmUniformC").selectpicker('render'); })

// 2: Visible and has a value
// 1: Visible but has no value
// 0: Not visible
var testSelects = {A: 1, B: 0, C: 0};

// 1: Enabled
// 0: Disabled
var enabled = {A: 1, B: 1, C: 1};

// 4: Group 4 Selected
// 3: Group 3 Selected
// 2: Group 2 Selected
// 1: Group 1 Selected
// 0: Group 0 Selected
// -1: No Group Selected
var selected = {A: -1, B: -1, C: -1};

// Select A
$(document).ready(function (){
    $("#usmUniformA").on("change", function() {

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
            if(jQuery.inArray(this.value, helmets) !== -1){
                enabled.A = 0;
                selected.A = 0;
            }
            else if(jQuery.inArray(this.value, jerseys) !== -1){
                enabled.B = 0;
                selected.A = 1;
            }
            else if(jQuery.inArray(this.value, pants) !== -1){
                enabled.C = 0;
                selected.A = 2;
            }
        }

        // Enable and Disable appropriate Option Groups
        sit.enableDisableGroups(enabled,selected,"usmUniformA","usmUniformB","usmUniformC",0);
    });
});
  
// Select A Clear
$(function() {
    $('#usmUniformAClear').click(function() {

        // Clear A
        $("#usmUniformA").val('').trigger('change');
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
    $("#usmUniformB").on("change", function() {

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
            if(jQuery.inArray(this.value, helmets) !== -1){
                enabled.A = 0;
                selected.B = 0;
            }
            else if(jQuery.inArray(this.value, jerseys) !== -1){
                enabled.B = 0;
                selected.B = 1;
            }
            else if(jQuery.inArray(this.value, pants) !== -1){
                enabled.C = 0;
                selected.B = 2;
            }
        }

        // Enable and Disable appropriate Option Groups
        sit.enableDisableGroups(enabled,selected,"usmUniformA","usmUniformB","usmUniformC",1);
    });
});
  
// Select B Clear
$(function() {
    $('#usmUniformBClear').click(function() {

        // Clear B
        $("#usmUniformB").val('').trigger('change');
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
    $("#usmUniformC").on("change", function() {

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

            // Reset selected.C
            selected.C = -1;
        }

        // If Select C has a value
        if(this.value){
            testSelects.C = 2;
            $('#uniformC').show();

            // Classify value by Option Group
            if(jQuery.inArray(this.value, helmets) !== -1){
                enabled.A = 0;
                selected.C = 0;
            }
            else if(jQuery.inArray(this.value, jerseys) !== -1){
                enabled.B = 0;
                selected.C = 1;
            }
            else if(jQuery.inArray(this.value, pants) !== -1){
                enabled.C = 0;
                selected.C = 2;
            }
        }

        // Enable and Disable appropriate Option Groups
        sit.enableDisableGroups(enabled,selected,"usmUniformA","usmUniformB","usmUniformC",2);
    });
});
  
// Select C Clear
$(function() {
    $('#usmUniformCClear').click(function() {

        // Clear C
        $("#usmUniformC").val('').trigger('change');
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
    wlt.urlTrigger('uniformA','#usmUniformA');
    wlt.urlTrigger('uniformB','#usmUniformB');
    wlt.urlTrigger('uniformC','#usmUniformC');
  });
//-----------

//-----------
// Set Filters for Mobile
if( /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ) {
    $('#usmUniformA').selectpicker('mobile');
    $('#usmUniformB').selectpicker('mobile');
    $('#usmUniformC').selectpicker('mobile');
  }
//-----------
