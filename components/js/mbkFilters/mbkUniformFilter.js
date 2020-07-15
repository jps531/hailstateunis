import * as tbl from '../mbkBuildTable.js';
import * as sit from '../uniformGameFunctions.js';
import * as wlt from '../tableFunctions.js';

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

    // Add to URL
    wlt.setURL(searchTerm,'uniform');
    
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

//-----------
// Auto Load URL Parameters
$(document).ready(function(){
  wlt.urlTrigger('uniform','#mbkUniformA');
});
//-----------

//-----------
// Set Filters for Mobile
if( /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ) {
  $('#mbkUniformA').selectpicker('mobile');
}
//-----------