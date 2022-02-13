import * as sit from '../uniformGameFunctions.js';
import * as wlt from '../tableFunctions.js';

// Define Groups
export var colors = ["White","Maroon","Black","Pink","Gray","Cream"];
export var designs = ["STATE","Banner","Split","Bulldogs", "Starkvegas"];

// Load Uniform Filters
$(function(){ $("#wbkUniformA").selectpicker('render'); })
$(function(){ $("#wbkUniformB").selectpicker('render'); })

// 2: Visible and has a value
// 1: Visible but has no value
// 0: Not visible
var testSelects = {A: 1, B: 0};

// 1: Enabled
// 0: Disabled
var enabled = {A: 1, B: 1};

// 1: Group 1 Selected
// 0: Group 0 Selected
// -1: No Group Selected
var selected = {A: -1, B: -1};

// Select A
$(document).ready(function (){
    $("#wbkUniformA").on("change", function() {

        // If Select A has no value or just replaced a value
        if(!this.value || testSelects.A == 2){
            // Identify Option Group that was just cleared
            if (selected.A == 0){
                enabled.A = 1;
            }
            else if (selected.A == 1){
                enabled.B = 1;
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

            // Classify value by Option Group
            if(jQuery.inArray(this.value, colors) !== -1){
                enabled.A = 0;
                selected.A = 0;
            }
            else if(jQuery.inArray(this.value, designs) !== -1){
                enabled.B = 0;
                selected.A = 1;
            }
        }

        // Enable and Disable appropriate Option Groups
        sit.enableDisableGroups(enabled,selected,"wbkUniformA","wbkUniformB","",0);
    });
});
  
// Select A Clear
$(function() {
    $('#wbkUniformAClear').click(function() {

        // Clear A
        $("#wbkUniformA").val('').trigger('change');
        testSelects.A = 1;

        // Hide B if B is empty
        if (testSelects.B == 1){
            $("#uniformB").hide();
            testSelects.B = 0;
        }
    });
});

// Select B
$(document).ready(function (){
    $("#wbkUniformB").on("change", function() {

        // If Select B has no value or just replaced a value
        if(!this.value || testSelects.B == 2){
            // Identify Option Group that was just cleared
            if (selected.B == 0){
                enabled.A = 1;
            }
            else if (selected.B == 1){
                enabled.B = 1;
            }

            // Reset selected.B
            selected.B = -1;
        }

        // If Select B has a value
        if(this.value){
            testSelects.B = 2;
            $('#uniformB').show();

            // Classify value by Option Group
            if(jQuery.inArray(this.value, colors) !== -1){
                enabled.A = 0;
                selected.B = 0;
            }
            else if(jQuery.inArray(this.value, designs) !== -1){
                enabled.B = 0;
                selected.B = 1;
            }
        }

        // Enable and Disable appropriate Option Groups
        sit.enableDisableGroups(enabled,selected,"wbkUniformA","wbkUniformB","",1);
    });
});
  
// Select B Clear
$(function() {
    $('#wbkUniformBClear').click(function() {

        // Clear B
        $("#wbkUniformB").val('').trigger('change');
        testSelects.B = 1;

        // Hide B if A is empty
        if (testSelects.A == 1){
            $("#uniformB").hide();
            testSelects.B = 0;
        }
    });
});

//-----------
// Auto Load URL Parameters
$(document).ready(function(){
    wlt.urlTrigger('uniformA','#wbkUniformA');
    wlt.urlTrigger('uniformB','#wbkUniformB');
  });
//-----------

//-----------
// Set Filters for Mobile
if( /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ) {
    $('#wbkUniformA').selectpicker('mobile');
    $('#wbkUniformB').selectpicker('mobile');
  }
//-----------
