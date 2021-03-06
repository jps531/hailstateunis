import * as tbl from '../wbkBuildTable.js';
import * as sit from '../uniformGameFunctions.js';
import * as wlt from '../tableFunctions.js';

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

    // Add to URL
    wlt.setURL(searchTerm,'uniform');
    
    // Uniform Colors
    wbkuOptSelected = sit.searchTable(0,tbl.wbkTable,searchTerm,wbkuOptSelected,0,4);
  });
});

$(function() {
  $('#wbkUniformAClear').click(function() {
    $("#wbkUniformA").val('').trigger('change');
  });
});
//-----------

//-----------
// Auto Load URL Parameters
$(document).ready(function(){
  wlt.urlTrigger('uniform','#wbkUniformA');
});
//-----------

//-----------
// Set Filters for Mobile
if( /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ) {
  $('#wbkUniformA').selectpicker('mobile');
}
//-----------
