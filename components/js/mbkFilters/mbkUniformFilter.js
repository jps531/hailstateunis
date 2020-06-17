import * as tbl from '../mbkBuildTable.js';
import * as sit from '../situationFunctions.js';

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
    if (searchTerm.includes('White')||
        searchTerm.includes('Maroon')||
        searchTerm.includes('Black')||
        searchTerm.includes('Gray')||
        searchTerm.includes('Cream')){
      tbl.mbkTable.column(4).search(searchTerm, true, false).draw();
      mbkuOptSelected.push(0);
    }
    else{
      sit.situationToggleElse(0,4,mbkuOptSelected,tbl.mbkTable);
    }
  });
});

$(function() {
  $('#mbkUniformAClear').click(function() {
    $("#mbkUniformA").val('').trigger('change');
  });
});
//-----------