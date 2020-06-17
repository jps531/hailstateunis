import * as tbl from '../wbkBuildTable.js';

//-----------
// Load Season and Opponent Filters
$(function(){ $("#wbkSelectYear").selectpicker('render'); })
$(function(){ $("#wbkOpponent").selectpicker('render'); })
$.fn.selectpicker.Constructor.DEFAULTS.multipleSeparator = ' | ';

window.onload = function(){
    if ($("#wbkSelectYear").val().length){
        $("#wbkSelectYear").val('').trigger('change');
    }
    if ($("#wbkOpponent").val().length){
      $("#wbkOpponent").val('').trigger('change');
  }
};
//-----------

//-----------
// Season Select
var pageLengthSzn;
var resetLengthSzn = true;

$(document).ready(function(){
  $("#wbkSelectYear").on("change", function() {
    var regEx = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );
    tbl.wbkTable.column(0).search(regEx, true, false).draw();

    if (this.value != ''){
      if (resetLengthSzn){
        pageLengthSzn = tbl.wbkTable.page.len();
        resetLengthSzn = false;
      }
      tbl.wbkTable.page.len(-1).draw();
    }
    else if (tbl.wbkTable.page.len() == -1){
      tbl.wbkTable.page.len(pageLengthSzn).draw();
    }
  });
});

$(function() {
  $('#wbkSeasonClear').click(function() {
    $("#wbkSelectYear").val('').trigger('change');
  });
});
//-----------