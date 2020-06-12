import * as tbl from '../mbkBuildTable.js';

//-----------
// Load Opponent Filter
$(function(){ $("#mbkOpponent").selectpicker('render'); })
$.fn.selectpicker.Constructor.DEFAULTS.multipleSeparator = ' | ';

window.onload = function(){
    if ($("#mbkOpponent").val().length){
        $("#mbkOpponent").val('').trigger('change');
    }
};
//-----------

//-----------
// Opponent Select
var pageLengthOpp;
var resetLengthOpp = true;

$(document).ready(function(){
  $("#mbkOpponent").on("change", function() {
    if (this.value == ""){
      tbl.mbkTable.columns(8).search(this.value).draw();
    }
    else{
      var regEx = $(this).find(':selected').map(function() {
        return "^" + $( this ).text() + "$";
      })
      .get()
      .join( "|" );
      tbl.mbkTable.column(8).search(regEx, true, false).draw();
    }

    if (this.value != ''){
      if (resetLengthOpp){
        pageLengthOpp = tbl.mbkTable.page.len();
        resetLengthOpp = false;
      }
      tbl.mbkTable.page.len(-1).draw();
    }
    else if (tbl.mbkTable.page.len() == -1){
      tbl.mbkTable.page.len(pageLengthOpp).draw();
    }
  });
});

$(function() {
  $('#mbkOpponentClear').click(function() {
    $("#mbkOpponent").val('').trigger('change');
  });
});