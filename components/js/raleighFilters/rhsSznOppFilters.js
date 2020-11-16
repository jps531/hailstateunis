import * as tbl from '../rhsBuildTable.js';
import * as wlt from '../tableFunctions.js';

//-----------
// Load Season and Opponent Filters
$(function(){ $("#rhsSelectYear").selectpicker('render'); })
$(function(){ $("#rhsSelectOpponent").selectpicker('render'); })
$.fn.selectpicker.Constructor.DEFAULTS.multipleSeparator = ' | ';
//-----------

//-----------
// Season Select
var pageLengthSzn;
var filterTriggeredSzn = false;

$(document).ready(function(){
  $("#rhsSelectYear").on("change", function() {
    var searchTerm = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );
    tbl.raleighTable.column(0).search(searchTerm, true, false).draw();

    // Add to URL
    wlt.setURL(searchTerm,'season');

    // Toggle Page Size
    [filterTriggeredSzn,pageLengthSzn] = wlt.togglePageSize(filterTriggeredSzn,filterTriggeredOpp,pageLengthSzn,pageLengthOpp,tbl.raleighTable,this.value);
  });
});

$(function() {
  $('#rhsSeasonClear').click(function() {
    $("#rhsSelectYear").val('').trigger('change');
  });
});
//-----------

//-----------
// Opponent Select
var pageLengthOpp;
var filterTriggeredOpp = false;

$(document).ready(function(){
  $("#rhsSelectOpponent").on("change", function() {
    if (this.value == ""){
      tbl.raleighTable.columns(12).search(this.value).draw();
    }
    else{
      var searchTerm = $(this).find(':selected').map(function() {
        return "^" + $( this ).text() + "$";
      })
      .get()
      .join( "|" );
      tbl.raleighTable.column(12).search(searchTerm, true, false).draw();
    }

    // Add to URL
    wlt.setURL(searchTerm,'opponent');

    // Toggle Page Size
    [filterTriggeredOpp,pageLengthOpp] = wlt.togglePageSize(filterTriggeredOpp,filterTriggeredSzn,pageLengthOpp,pageLengthSzn,tbl.raleighTable,this.value);
  });
});

$(function() {
  $('#rhsOpponentClear').click(function() {
    $("#rhsSelectOpponent").val('').trigger('change');
  });
});
//-----------

//-----------
// Auto Load URL Parameters
$(document).ready(function(){
  wlt.urlTrigger('season','#rhsSelectYear');
  wlt.urlTrigger('opponent','#rhsSelectOpponent');
});
//-----------

//-----------
// Set Filters for Mobile
if( /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ) {
  $('#rhsSelectYear').selectpicker('mobile');
  $('#rhsSelectOpponent').selectpicker('mobile');
}
//-----------
