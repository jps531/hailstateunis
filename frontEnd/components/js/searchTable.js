var active = ['','','',''];

function toggleTable(){
  $("#footballTableBody tr").filter(function() {
    $(this).toggle(
      $(this).text().toLowerCase().indexOf(active[0]) > -1 &&
      $(this).text().toLowerCase().indexOf(active[1]) > -1 &&
      $(this).text().toLowerCase().indexOf(active[2]) > -1 &&
      $(this).text().toLowerCase().indexOf(active[3]) > -1
    )
  });
}

//-----------
// Search Bar
$(document).ready(function(){
    $("#fbSearch").on("keyup", function() {
      active[0] = $(this).val().toLowerCase();
      toggleTable();
    });
  });

$(function() {
  $('#searchClear').click(function() {
    $("#fbSearch").val('').selectpicker('refresh');
    active[0] = "";
    toggleTable();
  });
});
//-----------

//-----------
// Opponent Select
$(document).ready(function(){
  $("#selectOpponent").on("change", function() {
    active[1] = $(this).val().toLowerCase();
    toggleTable();
  });
});

$(function() {
  $('#opponentClear').click(function() {
    $("#selectOpponent").val('').trigger('change');
    active[1] = "";
    toggleTable();
  });
});

//-----------
// Season Select
$(document).ready(function(){
  $("#selectYear").on("change", function() {
    active[2] = $(this).val().toLowerCase();
    toggleTable();
  });
});

$(function() {
  $('#seasonClear').click(function() {
    $("#selectYear").val('').trigger('change');
    active[2] = "";
    toggleTable();
  });
});
//-----------

//-----------
// Siutation Select
$(document).ready(function(){
  $("#selectSituation").on("change", function() {
    active[3] = $(this).val().toLowerCase();
    toggleTable();
  });
});

$(function() {
  $('#situationClear').click(function() {
    $("#selectSituation").val('').trigger('change');
    active[3] = "";
    toggleTable();
  });
});
//-----------