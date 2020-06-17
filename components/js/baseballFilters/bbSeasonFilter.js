import * as tbl from '../bbBuildTable.js';

//-----------
// Load Season and Opponent Filters
$(function(){ $("#bbSelectYear").selectpicker('render'); })
$(function(){ $("#bbOpponent").selectpicker('render'); })
$.fn.selectpicker.Constructor.DEFAULTS.multipleSeparator = ' | ';

window.onload = function(){
    if ($("#bbSelectYear").val().length){
        $("#bbSelectYear").val('').trigger('change');
    }
    if ($("#bbOpponent").val().length){
      $("#bbOpponent").val('').trigger('change');
  }
};
//-----------

//-----------
// Season Select
var pageLengthSzn;
var resetLengthSzn = true;

$(document).ready(function(){
  $("#bbSelectYear").on("change", function() {
    var regEx = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );
    tbl.baseballTable.column(0).search(regEx, true, false).draw();

    if (this.value != ''){
      if (resetLengthSzn){
        pageLengthSzn = tbl.baseballTable.page.len();
        resetLengthSzn = false;
      }
      tbl.baseballTable.page.len(-1).draw();
    }
    else if (tbl.baseballTable.page.len() == -1){
      tbl.baseballTable.page.len(pageLengthSzn).draw();
    }
  });
});

$(function() {
  $('#bbSeasonClear').click(function() {
    $("#bbSelectYear").val('').trigger('change');
  });
});
//-----------