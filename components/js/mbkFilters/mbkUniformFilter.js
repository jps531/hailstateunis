import * as tbl from '../mbkBuildTable.js';
import * as sit from '../uniformGameFunctions.js';

//-----------
// Load Uniform Filter
$(function(){ $("#mbkUniformA").selectpicker('render'); })
//-----------

//-----------
// Uniform Select
var mbkuOptSelected = [];

$(document).ready(function(){
  $("#mbkUniformA").on("change", function() {
    var searchTerm = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );
    
    // Uniform Colors
    mbkuOptSelected = sit.searchTable(0,tbl.mbkTable,searchTerm,mbkuOptSelected,0,4);
  });
});

$(function() {
  $('#mbkUniformAClear').click(function() {
    $("#mbkUniformA").val('').trigger('change');
  });
});
//-----------