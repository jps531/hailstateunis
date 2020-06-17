import * as tbl from '../fbBuildTable.js';

//-----------
// Opponent Select
var pageLengthOpp;
var resetLengthOpp = true;

$(document).ready(function(){
  $("#selectOpponent").on("change", function() {
    if (this.value == ""){
      tbl.table.columns(12).search(this.value).draw();
    }
    else{
      var regEx = $(this).find(':selected').map(function() {
        return "^" + $( this ).text() + "$";
      })
      .get()
      .join( "|" );
      tbl.table.column(12).search(regEx, true, false).draw();
    }

    if (this.value != ''){
      if (resetLengthOpp){
        pageLengthOpp = tbl.table.page.len();
        resetLengthOpp = false;
      }
      tbl.table.page.len(-1).draw();
    }
    else if (tbl.table.page.len() == -1){
      tbl.table.page.len(pageLengthOpp).draw();
    }
  });
});

$(function() {
  $('#opponentClear').click(function() {
    $("#selectOpponent").val('').trigger('change');
  });
});