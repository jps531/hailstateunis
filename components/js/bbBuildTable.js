import * as wlt from './tableFunctions.js';

//-----------
// Initialize Table
export var baseballTable = $('#baseballTable').DataTable( {
                "lengthMenu": [ [5, 10, 15, 20, 25, 40, 50, -1], [5, 10, 15, 20, 25, 40, 50, "All"] ],
                "iDisplayLength":  10,
                language: {
                  paginate: {
                    next: '<i class="fa fa-chevron-right" ></i>',
                    previous: '<i class="fa fa-chevron-left" ></i>'
                  }
                },
                fixedHeader: {
                  header: true,
                  footer: true
                },
                responsive: {

                  // Set Breakpoints
                  breakpoints: [
                    {name: 'xl', width: Infinity},
                    {name: 'lg', width: 900},
                    {name: 'md', width: 800},
                    {name: 'sm', width: 650},
                    {name: 'xs', width: 475},
                    {name: 'xxs', width: 425}
                  ],

                  // Customize Expanded Row
                  details: {
                    renderer: function ( api, rowIdx, columns ) {
                        var data = '';

                        // Article Link
                        if (api.cell(rowIdx,8).data()){
                          data += '<div class="container" id="innerArticle"><a class="btn btn-outline-dark btn-block" target="_blank" href="' +
                          api.cell(rowIdx, 8).data() +
                          '" style="white-space:normal" role="button">' + 
                          api.cell(rowIdx, 8).node().title + '</a></div>';
                        }

                        // Type/Result
                        if (columns[3].hidden){
                          data += '<div class="container" id="innerTable"><table><thead></thead><tbody>';
                          data += '<tr><td colspan="2">' + api.cell(rowIdx, 3).data() + ' ' + api.cell(rowIdx, 5).data() + '</td></tr>';
                        
                          // Final Score
                          if (columns[6].hidden){
                            data += '<tr><td id="innerTitle" colspan="2">Final Score</td></tr>';
                            data += '<tr><td><span class="badge" style="background-color: #3b0811; color: white;">Mississippi State</span></td><td>' + 
                                    api.cell(rowIdx, 17).data() +'</td></tr>';
                            data += '<tr><td>' + api.cell(rowIdx, 6).data() + '</td><td>' + api.cell(rowIdx, 7).data() +'</td></tr>';
                            data += '</tbody></table></div>';
                          }
                        }
                        return data;
                    }
                  }
                },

                // Column Definitions
                "columnDefs": [
                  {"orderable": false, 'targets': [4,8,9,10,11,12,13,14] },
                  {"type": "num", 'targets': [6,7]},
                  {"className": "all", 'targets': [0,4,17]},
                  {"className": "min-xl", 'targets': [2]},
                  {"className": "min-lg", 'targets': [3]},
                  {"className": "min-md", 'targets': [6,7]},
                  {"className": "min-sm", 'targets': [1]},
                  {"className": "min-xs", 'targets': [5]},
                  {"className": "none", 'targets': [8,9,10,11,12,13,14,15,16]},
                  {type: 'title-string', targets: 1}
                ],

                // Table Options
                "order": [[ 1, 'asc' ], [15, 'asc']],
                searching: true,
                dom: 'tpilr'
              });
//-----------

//-----------
// Search Bar
$(document).ready(function(){
    $("#bbSearch").on("keyup", function() {
      baseballTable.search(this.value).draw();
    });
  });

$(function() {
  $('#bbSearchClear').click(function() {
    $("#bbSearch").val('').trigger('keyup');
  });
});
//-----------

//-----------
// W/L Tally
var wlTotal = '';

// Display String for Full Table
wlTotal = wlt.createWL(baseballTable, 5);
document.getElementById('winLossTotal').innerHTML = wlTotal;

// Alter String Each Time the Table is Filtered
$(function() {
  baseballTable.on( 'search', function () {
    wlTotal = wlt.createWL(baseballTable, 5);
    document.getElementById('winLossTotal').innerHTML = wlTotal;
  });
});
//-----------

//-----------
// Clear All Filters
$(document).ready(function(){
  $('#bbClearFilters').click(function() {
    $('#bbSearchClear').click();
    $('#bbOpponentClear').click();
    $('#bbSeasonClear').click();
    $('#bbGameCClear').click();
    $('#bbGameBClear').click();
    $('#bbGameAClear').click();
    $('#bbUniformCClear').click();
    $('#bbUniformBClear').click();
    $('#bbUniformAClear').click();
  });
});
//-----------