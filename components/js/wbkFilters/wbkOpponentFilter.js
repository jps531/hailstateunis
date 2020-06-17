import * as tbl from '../wbkBuildTable.js';

//-----------
// Opponent Select
var pageLengthOpp;
var resetLengthOpp = true;

$(document).ready(function(){
  $("#wbkOpponent").on("change", function() {
    if (this.value == ""){
      tbl.wbkTable.columns(8).search(this.value).draw();
    }
    else{
      var regEx = $(this).find(':selected').map(function() {
        return "^" + $( this ).text() + "$";
      })
      .get()
      .join( "|" );
      tbl.wbkTable.column(8).search(regEx, true, false).draw();
    }

    if (this.value != ''){
      if (resetLengthOpp){
        pageLengthOpp = tbl.wbkTable.page.len();
        resetLengthOpp = false;
      }
      tbl.wbkTable.page.len(-1).draw();
    }
    else if (tbl.wbkTable.page.len() == -1){
      tbl.wbkTable.page.len(pageLengthOpp).draw();
    }
  });
});

$(function() {
  $('#wbkOpponentClear').click(function() {
    $("#wbkOpponent").val('').trigger('change');
  });
});