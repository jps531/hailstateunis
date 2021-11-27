import * as wlt from './tableFunctions.js';

//-----------
// Initialize Table
export var wbkTable = $('#wbkTable').DataTable( {
                "lengthMenu": [ [5, 10, 15, 20, 25, 40, 50, -1], [5, 10, 15, 20, 25, 40, 50, "All"] ],
                "iDisplayLength":  25,
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
                    {name: 'lg', width: 1100},
                    {name: 'md', width: 992},
                    {name: 'sm', width: 768},
                    {name: 'xs', width: 600},
                    {name: 'xxs', width: 525},
                    {name: 'xxxs', width: 445}
                  ],

                  // Customize Expanded Row
                  details: {
                    renderer: function ( api, rowIdx, columns ) {
                        var data = '';

                        // Type/Result
                        if (columns[3].hidden){
                          data += '<div class="container" id="innerTable"><table><thead></thead><tbody>';
                          data += '<tr><td colspan="2">' + api.cell(rowIdx, 3).data() + ' ' + api.cell(rowIdx, 5).data() + '</td></tr>';
                        
                          // Final Score
                          if (columns[6].hidden){
                            data += '<tr><td id="innerTitle" colspan="2">Final Score</td></tr>';
                            data += '<tr><td><span class="badge" style="background-color: #431724; color: white;">Mississippi State</span></td><td>' + 
                                    api.cell(rowIdx, 8).data() +'</td></tr>';
                            data += '<tr><td>' + api.cell(rowIdx, 6).data() + '</td><td>' + api.cell(rowIdx, 7).data() +'</td></tr>';
                            data += '</tbody></table></div>';
                          }

                          else{
                            data += '<tr><td colspan="2"></td></tr>';
                            data += '</tbody></table></div>';
                          }
                        }

                        return data;
                    }
                  }
                },

                //Column Definitions
                "columnDefs": [
                  {"orderable": false, 'targets': [4] },
                  {"type": "num", 'targets': [6,7]},
                  {"className": "all", 'targets': [0,4,9]},
                  {"className": "min-lg", 'targets': [2]},
                  {"className": "min-md", 'targets': [3]},
                  {"className": "min-sm", 'targets': [6,7]},
                  {"className": "min-xs", 'targets': [1]},
                  {"className": "min-xxs", 'targets': [5]},
                  {"className": "none", 'targets': [8]},
                  {type: 'title-string', targets: 1}
                ],

                // Table Options
                "order": [[ 1, 'asc' ]],
                searching: true,
                dom: 'tpilr',
                retrieve: true
              });
//-----------

//-----------
// Search Bar
$(document).ready(function(){
    $("#wbkSearch").on("keyup", function() {
      wbkTable.search(this.value).draw();
    });
  });

$(function() {
  $('#wbkSearchClear').click(function() {
    $("#wbkSearch").val('').trigger('keyup');
  });
});
//-----------

//-----------
// W/L Tally
var wlTotal = '';

// Display String for Full Table
wlTotal = wlt.createWL(wbkTable, 5);
document.getElementById('winLossTotal').innerHTML = wlTotal;

// Alter String Each Time the Table is Filtered
$(function() {
  wbkTable.on( 'search', function () {
    wlTotal = wlt.createWL(wbkTable, 5);
    document.getElementById('winLossTotal').innerHTML = wlTotal;
  });
});
//-----------

//-----------
// Clear All Filters
$(document).ready(function(){
  $('#wbkClearFilters').click(function() {
    $('#wbkSearchClear').click();
    $('#wbkOpponentClear').click();
    $('#wbkSeasonClear').click();
    $('#wbkGameCClear').click();
    $('#wbkGameBClear').click();
    $('#wbkGameAClear').click();
    $('#wbkUniformBClear').click();
    $('#wbkUniformAClear').click();
  });
});
//-----------
