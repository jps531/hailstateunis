import * as tbl from '../bbBuildTable.js';
import * as wlt from '../tableFunctions.js';

//-----------
// Load Season and Opponent Filters
$(function(){ $("#bbSelectYear").selectpicker('render'); })
$(function(){ $("#bbSelectOpponent").selectpicker('render'); })
$.fn.selectpicker.Constructor.DEFAULTS.multipleSeparator = ' | ';
//-----------

//-----------
// Season Select
var pageLengthSzn;
var filterTriggeredSzn = false;

$(document).ready(function(){
  $("#bbSelectYear").on("change", function() {
    var searchTerm = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );
    tbl.baseballTable.column(0).search(searchTerm, true, false).draw();

    // Add to URL
    wlt.setURL(searchTerm,'season');

    [filterTriggeredSzn,pageLengthSzn] = wlt.togglePageSize(filterTriggeredSzn,filterTriggeredOpp,pageLengthSzn,pageLengthOpp,tbl.baseballTable,this.value);
  });
});

$(function() {
  $('#bbSeasonClear').click(function() {
    $("#bbSelectYear").val('').trigger('change');
  });
});
//-----------

//-----------
// Opponent Select
var pageLengthOpp;
var filterTriggeredOpp = false;

$(document).ready(function(){
  $("#bbSelectOpponent").on("change", function() {
    if (this.value == ""){
      tbl.baseballTable.columns(17).search(this.value).draw();
    }
    else{
      var searchTerm = $(this).find(':selected').map(function() {
        return "^" + $( this ).text() + "$";
      })
      .get()
      .join( "|" );
      tbl.baseballTable.column(17).search(searchTerm, true, false).draw();
    }

    // Add to URL
    wlt.setURL(searchTerm,'opponent');

    [filterTriggeredOpp,pageLengthOpp] = wlt.togglePageSize(filterTriggeredOpp,filterTriggeredSzn,pageLengthOpp,pageLengthSzn,tbl.baseballTable,this.value);
  });
});

$(function() {
  $('#bbOpponentClear').click(function() {
    $("#bbSelectOpponent").val('').trigger('change');
  });
});
//-----------

//-----------
// Auto Load URL Parameters
$(document).ready(function(){
  wlt.urlTrigger('season','#bbSelectYear');
  wlt.urlTrigger('opponent','#bbSelectOpponent');
});
//-----------