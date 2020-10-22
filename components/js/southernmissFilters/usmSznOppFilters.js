import * as tbl from '../usmBuildTable.js';
import * as wlt from '../tableFunctions.js';

//-----------
// Load Season and Opponent Filters
$(function(){ $("#usmSelectYear").selectpicker('render'); })
$(function(){ $("#usmSelectOpponent").selectpicker('render'); })
$.fn.selectpicker.Constructor.DEFAULTS.multipleSeparator = ' | ';
//-----------

//-----------
// Season Select
var pageLengthSzn;
var filterTriggeredSzn = false;

$(document).ready(function(){
  $("#usmSelectYear").on("change", function() {
    var searchTerm = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );
    tbl.southernmissTable.column(0).search(searchTerm, true, false).draw();

    // Add to URL
    wlt.setURL(searchTerm,'season');

    // Toggle Page Size
    [filterTriggeredSzn,pageLengthSzn] = wlt.togglePageSize(filterTriggeredSzn,filterTriggeredOpp,pageLengthSzn,pageLengthOpp,tbl.southernmissTable,this.value);
  });
});

$(function() {
  $('#usmSeasonClear').click(function() {
    $("#usmSelectYear").val('').trigger('change');
  });
});
//-----------

//-----------
// Opponent Select
var pageLengthOpp;
var filterTriggeredOpp = false;

$(document).ready(function(){
  $("#usmSelectOpponent").on("change", function() {
    if (this.value == ""){
      tbl.southernmissTable.columns(12).search(this.value).draw();
    }
    else{
      var searchTerm = $(this).find(':selected').map(function() {
        return "^" + $( this ).text() + "$";
      })
      .get()
      .join( "|" );
      tbl.southernmissTable.column(12).search(searchTerm, true, false).draw();
    }

    // Add to URL
    wlt.setURL(searchTerm,'opponent');

    // Toggle Page Size
    [filterTriggeredOpp,pageLengthOpp] = wlt.togglePageSize(filterTriggeredOpp,filterTriggeredSzn,pageLengthOpp,pageLengthSzn,tbl.southernmissTable,this.value);
  });
});

$(function() {
  $('#usmOpponentClear').click(function() {
    $("#usmSelectOpponent").val('').trigger('change');
  });
});
//-----------

//-----------
// Auto Load URL Parameters
$(document).ready(function(){
  wlt.urlTrigger('season','#usmSelectYear');
  wlt.urlTrigger('opponent','#usmSelectOpponent');
});
//-----------

//-----------
// Set Filters for Mobile
if( /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ) {
  $('#usmSelectYear').selectpicker('mobile');
  $('#usmSelectOpponent').selectpicker('mobile');
}
//-----------
