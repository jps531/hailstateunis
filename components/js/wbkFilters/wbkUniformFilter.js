import * as tbl from '../wbkBuildTable.js';
import * as sit from '../situationFunctions.js';

//-----------
// Load Uniform Filter
$(function(){ $("#wbkUniformA").selectpicker('render'); })
//-----------

//-----------
// Uniform Select
var wbkuOptSelected = [];

$(document).ready(function(){
  $("#wbkUniformA").on("change", function() {
    var searchTerm = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );
    
    // Uniform Colors
    if (searchTerm.includes('White')||
        searchTerm.includes('Maroon')||
        searchTerm.includes('Black')||
        searchTerm.includes('Pink')||
        searchTerm.includes('Gray')||
        searchTerm.includes('Cream')){
      tbl.wbkTable.column(4).search(searchTerm, true, false).draw();
      wbkuOptSelected.push(0);
    }
    else{
      sit.situationToggleElse(0,4,wbkuOptSelected,tbl.wbkTable);
    }
  });
});

$(function() {
  $('#wbkUniformAClear').click(function() {
    $("#wbkUniformA").val('').trigger('change');
  });
});
//-----------