import * as tbl from '../fbBuildTable.js';

//-----------
// Load Season Filter
$(function(){ $("#selectYear").selectpicker('render'); })
$.fn.selectpicker.Constructor.DEFAULTS.multipleSeparator = ' | ';

window.onload = function(){
  if ($("#selectYear").val().length){
    $("#selectYear").val('').trigger('change');
  }
};
//-----------

//-----------
// Season Select
var pageLengthSzn;
var resetLengthSzn = true;

$(document).ready(function(){
  $("#selectYear").on("change", function() {
    var regEx = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );
    tbl.table.column(0).search(regEx, true, false).draw();

    if (this.value != ''){
      if (resetLengthSzn){
        pageLengthSzn = tbl.table.page.len();
        resetLengthSzn = false;
      }
      tbl.table.page.len(-1).draw();
    }
    else if (tbl.table.page.len() == -1){
      tbl.table.page.len(pageLengthSzn).draw();
    }
  });
});

$(function() {
  $('#seasonClear').click(function() {
    $("#selectYear").val('').trigger('change');
  });
});
//-----------