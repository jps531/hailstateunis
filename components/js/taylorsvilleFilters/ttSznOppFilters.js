import * as tbl from '../ttBuildTable.js';
import * as wlt from '../tableFunctions.js';

//-----------
// Load Season and Opponent Filters
$(function(){ $("#ttSelectYear").selectpicker('render'); })
$(function(){ $("#ttSelectOpponent").selectpicker('render'); })
$.fn.selectpicker.Constructor.DEFAULTS.multipleSeparator = ' | ';
//-----------

//-----------
// Season Select
var pageLengthSzn;
var filterTriggeredSzn = false;

$(document).ready(function(){
  $("#ttSelectYear").on("change", function() {
    var searchTerm = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );
    tbl.taylorsvilleTable.column(0).search(searchTerm, true, false).draw();

    // Add to URL
    wlt.setURL(searchTerm,'season');

    // Toggle Page Size
    [filterTriggeredSzn,pageLengthSzn] = wlt.togglePageSize(filterTriggeredSzn,filterTriggeredOpp,pageLengthSzn,pageLengthOpp,tbl.taylorsvilleTable,this.value);
  });
});

$(function() {
  $('#ttSeasonClear').click(function() {
    $("#ttSelectYear").val('').trigger('change');
  });
});
//-----------

//-----------
// Opponent Select
var pageLengthOpp;
var filterTriggeredOpp = false;

$(document).ready(function(){
  $("#ttSelectOpponent").on("change", function() {
    if (this.value == ""){
      tbl.taylorsvilleTable.columns(12).search(this.value).draw();
    }
    else{
      var searchTerm = $(this).find(':selected').map(function() {
        return "^" + $( this ).text() + "$";
      })
      .get()
      .join( "|" );
      tbl.taylorsvilleTable.column(12).search(searchTerm, true, false).draw();
    }

    // Add to URL
    wlt.setURL(searchTerm,'opponent');

    // Toggle Page Size
    [filterTriggeredOpp,pageLengthOpp] = wlt.togglePageSize(filterTriggeredOpp,filterTriggeredSzn,pageLengthOpp,pageLengthSzn,tbl.taylorsvilleTable,this.value);
  });
});

$(function() {
  $('#ttOpponentClear').click(function() {
    $("#ttSelectOpponent").val('').trigger('change');
  });
});
//-----------

//-----------
// Auto Load URL Parameters
$(document).ready(function(){
  wlt.urlTrigger('season','#ttSelectYear');
  wlt.urlTrigger('opponent','#ttSelectOpponent');
});
//-----------

//-----------
// Set Filters for Mobile
if( /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ) {
  $('#ttSelectYear').selectpicker('mobile');
  $('#ttSelectOpponent').selectpicker('mobile');
}
//-----------