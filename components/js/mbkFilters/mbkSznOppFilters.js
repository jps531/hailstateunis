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
  
  // Clear filters if currently loaded
  if ($("#mbkSelectYear").val().length){
    $("#mbkSelectYear").val('').trigger('change');
  }
  if ($("#mbkOpponent").val().length){
    $("#mbkOpponent").val('').trigger('change');
  }

  // Load URL parameters into filters
  wlt.urlTrigger('season','#mbkSelectYear');
  wlt.urlTrigger('opponent','#mbkOpponent');
});
//-----------