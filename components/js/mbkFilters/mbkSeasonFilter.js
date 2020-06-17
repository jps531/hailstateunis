import * as tbl from '../mbkBuildTable.js';

//-----------
// Load Season and Opponent Filters
$(function(){ $("#mbkSelectYear").selectpicker('render'); })
$(function(){ $("#mbkOpponent").selectpicker('render'); })
$.fn.selectpicker.Constructor.DEFAULTS.multipleSeparator = ' | ';

window.onload = function(){
    if ($("#mbkSelectYear").val().length){
        $("#mbkSelectYear").val('').trigger('change');
    }
    if ($("#mbkOpponent").val().length){
      $("#mbkOpponent").val('').trigger('change');
  }
};
//-----------

//-----------
// Season Select
var pageLengthSzn;
var resetLengthSzn = true;

$(document).ready(function(){
  $("#mbkSelectYear").on("change", function() {
    var regEx = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );
    tbl.mbkTable.column(0).search(regEx, true, false).draw();

    if (this.value != ''){
      if (resetLengthSzn){
        pageLengthSzn = tbl.mbkTable.page.len();
        resetLengthSzn = false;
      }
      tbl.mbkTable.page.len(-1).draw();
    }
    else if (tbl.mbkTable.page.len() == -1){
      tbl.mbkTable.page.len(pageLengthSzn).draw();
    }
  });
});

$(function() {
  $('#mbkSeasonClear').click(function() {
    $("#mbkSelectYear").val('').trigger('change');
  });
});
//-----------