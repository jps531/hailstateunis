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
                  ],
                  details: {
                    renderer: function ( api, rowIdx, columns ) {
                        var data = '';

                        if (api.cell(rowIdx,11).data()){
                          data += '<div class="container" id="innerArticle"><a class="btn btn-outline-dark btn-block" target="_blank" href="' +
                          api.cell(rowIdx, 11).data() +
                          '" style="white-space:normal" role="button">' + 
                          api.cell(rowIdx, 11).node().title + '</a></div>';
                        }

                        if (columns[2].hidden){
                          data += '<div class="container" id="innerTable"><table><thead></thead><tbody>';
                          data += '<tr><td id="innerTitle">Helmet Matchup</td></tr>';
                          data += '<tr><td>' + api.cell(rowIdx, 2).data() + api.cell(rowIdx, 3).data() + '</td></tr>';
                          data += '</tbody></table></div>';
                        }

                        if (columns[5].hidden){
                          data += '<div class="container" id="innerTable"><table><thead></thead><tbody>';
                          data += '<tr><td id="innerTitle">Uniform Combination</td></tr>';
                          data += '<tr><td>' + api.cell(rowIdx, 5).data() + api.cell(rowIdx, 6).data() + api.cell(rowIdx, 7).data() + '</td></tr>';
                          data += '</tbody></table></div>';
                        }

                        if (columns[9].hidden){
                          data += '<div class="container" id="innerTable"><table><thead></thead><tbody>';
                          data += '<tr><td id="innerTitle" colspan="2">Final Score</td></tr>';
                          data += '<tr><td><span class="badge" style="background-color: #3b0811; color: white;">Mississippi State</span></td><td>' + 
                                  api.cell(rowIdx, 12).data() +'</td></tr>';
                          data += '<tr><td>' + api.cell(rowIdx, 9).data() + '</td><td>' + api.cell(rowIdx, 10).data() +'</td></tr>';
                          data += '</tbody></table></div>';
                        }

                        return data;
                    }
                  }
                },
                "columnDefs": [
                  {"orderable": false, 'targets': [2,3,4,5,6,7] },
                  {"className": "all", 'targets': [0,4,8,12]},
                  {"className": "min-lg", 'targets': [5,6,7]},
                  {"className": "min-md", 'targets': [2,3]},
                  {"className": "min-sm", 'targets': [9,10]},
                  {"className": "min-xs", 'targets': [1]},
                  {"className": "none", 'targets': [11]},
                  {type: 'title-string', targets: 1}
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