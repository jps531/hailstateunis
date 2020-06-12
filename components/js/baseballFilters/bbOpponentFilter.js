import * as tbl from '../bbBuildTable.js';

//-----------
// Load Opponent Filter
$(function(){ $("#bbSelectOpponent").selectpicker('render'); })
$.fn.selectpicker.Constructor.DEFAULTS.multipleSeparator = ' | ';

window.onload = function(){
    if ($("#bbSelectOpponent").val().length){
        $("#bbSelectOpponent").val('').trigger('change');
    }
};
//-----------

//-----------
// Opponent Select
var pageLengthOpp;
var resetLengthOpp = true;

$(document).ready(function(){
  $("#bbSelectOpponent").on("change", function() {
    if (this.value == ""){
      tbl.baseballTable
      .columns(17)
      .search(this.value)
      .draw();
    }
    else{
      var regEx = $(this).find(':selected').map(function() {
        return "^" + $( this ).text() + "$";
      })
      .get()
      .join( "|" );
      tbl.baseballTable.column(17).search(regEx, true, false).draw();
    }

    if (this.value != ''){
      if (resetLengthOpp){
        pageLengthOpp = tbl.baseballTable.page.len();
        resetLengthOpp = false;
      }
      tbl.baseballTable.page.len(-1).draw();
    }
    else if (tbl.baseballTable.page.len() == -1){
      tbl.baseballTable.page.len(pageLengthOpp).draw();
    }
  });
});

$(function() {
  $('#bbOpponentClear').click(function() {
    $("#bbSelectOpponent").val('').trigger('change');
  });
});