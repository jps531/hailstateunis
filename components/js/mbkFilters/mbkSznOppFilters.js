import * as tbl from '../mbkBuildTable.js';
import * as wlt from '../tableFunctions.js';

//-----------
// Load Season and Opponent Filters
$(function(){ $("#mbkSelectYear").selectpicker('render'); })
$(function(){ $("#mbkOpponent").selectpicker('render'); })
$.fn.selectpicker.Constructor.DEFAULTS.multipleSeparator = ' | ';
//-----------

//-----------
// Season Select
var pageLengthSzn;
var filterTriggeredSzn = false;

$(document).ready(function(){
  $("#mbkSelectYear").on("change", function() {
    var searchTerm = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );
    tbl.mbkTable.column(0).search(searchTerm, true, false).draw();

    // Add to URL
    wlt.setURL(searchTerm,'season');

    [filterTriggeredSzn,pageLengthSzn] = wlt.togglePageSize(filterTriggeredSzn,filterTriggeredOpp,pageLengthSzn,pageLengthOpp,tbl.mbkTable,this.value);
  });
});

$(function() {
  $('#mbkSeasonClear').click(function() {
    $("#mbkSelectYear").val('').trigger('change');
  });
});
//-----------

//-----------
// Opponent Select
var pageLengthOpp;
var filterTriggeredOpp = false;

$(document).ready(function(){
  $("#mbkOpponent").on("change", function() {
    if (this.value == ""){
      tbl.mbkTable.columns(8).search(this.value).draw();
    }
    else{
      var searchTerm = $(this).find(':selected').map(function() {
        return "^" + $( this ).text() + "$";
      })
      .get()
      .join( "|" );
      tbl.mbkTable.column(8).search(searchTerm, true, false).draw();
    }

    // Add to URL
    wlt.setURL(searchTerm,'opponent');

    [filterTriggeredOpp,pageLengthOpp] = wlt.togglePageSize(filterTriggeredOpp,filterTriggeredSzn,pageLengthOpp,pageLengthSzn,tbl.mbkTable,this.value);
  });
});

$(function() {
  $('#mbkOpponentClear').click(function() {
    $("#mbkOpponent").val('').trigger('change');
  });
});
//-----------

//-----------
// Auto Load URL Parameters
$(document).ready(function(){
  wlt.urlTrigger('season','#mbkSelectYear');
  wlt.urlTrigger('opponent','#mbkOpponent');
});
//-----------

//-----------
// Set Filters for Mobile
if( /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ) {
  $('#mbkSelectYear').selectpicker('mobile');
  $('#mbkOpponent').selectpicker('mobile');
}
//-----------