//-----------
// Initialising Table
var table = $('#footballTable').DataTable( {
                "lengthMenu": [ [10, 2, 11, 12, 13, 14, 15, -1], [10, 2, 11, 12, 13, 14, 15, "All"] ],
                responsive: {
                  breakpoints: [
                    {name: 'xl', width: Infinity},
                    {name: 'lg', width: 1150},
                    {name: 'md', width: 992},
                    {name: 'sm', width: 768},
                    {name: 'xs', width: 550},
                    {name: 'xxs', width: 375}
                  ]
                },
                "columnDefs": [
                  { "orderable": false, 'targets': [2,3,4,5,6,7] },
                  {"className": "all", 'targets': [0,4,8,11]},
                  {"className": "min-lg", 'targets': [5,6,7]},
                  {"className": "min-md", 'targets': [2,3]},
                  {"className": "min-sm", 'targets': [9,10]},
                  {"className": "min-xs", 'targets': [1]},
                  { type: 'title-string', targets: 1 }
                ],
                "order": [[ 1, 'desc' ]],
                searching: true,
                dom: 'ltipr'
              });
//-----------

//-----------
// Search Bar
$(document).ready(function(){
    $("#fbSearch").on("keyup", function() {
      table.search( this.value ).draw();
    });
  });

$(function() {
  $('#searchClear').click(function() {
    $("#fbSearch").val('').trigger('keyup');
  });
});
//-----------

//-----------
// Opponent Select
$(document).ready(function(){
  $("#selectOpponent").on("change", function() {
    table
        .columns( 11 )
        .search( this.value )
        .draw();
  });
});

$(function() {
  $('#opponentClear').click(function() {
    $("#selectOpponent").val('').trigger('change');
  });
});

//-----------
// Season Select
$(document).ready(function(){
  $("#selectYear").on("change", function() {
    table
    .columns( 0 )
    .search( this.value )
    .draw();
  });
});

$(function() {
  $('#seasonClear').click(function() {
    $("#selectYear").val('').trigger('change');
  });
});
//-----------

//-----------
// Siutation Select
$(document).ready(function(){
  $("#selectSituation").on("change", function() {
    table.search( this.value ).draw();
  });
});

$(function() {
  $('#situationClear').click(function() {
    $("#selectSituation").val('').trigger('change');
  });
});
//-----------