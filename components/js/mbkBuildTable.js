//-----------
// Initialize Table
export var mbkTable = $('#mbkTable').DataTable( {
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
                            data += '<tr><td><span class="badge" style="background-color: #3b0811; color: white;">Mississippi State</span></td><td>' + 
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
                  {"className": "all", 'targets': [0,4,8]},
                  {"className": "min-lg", 'targets': [2]},
                  {"className": "min-md", 'targets': [3]},
                  {"className": "min-sm", 'targets': [6,7]},
                  {"className": "min-xs", 'targets': [1]},
                  {"className": "min-xxs", 'targets': [5]}
                ],

                // Table Options
                "order": [[ 1, 'asc' ]],
                searching: true,
                dom: 'tpilr'
              });
//-----------

//-----------
// Search Bar
$(document).ready(function(){
    $("#mbkSearch").on("keyup", function() {
      mbkTable.search( this.value ).draw();
    });
  });

$(function() {
  $('#mbkSearchClear').click(function() {
    $("#mbkSearch").val('').trigger('keyup');
  });
});
//-----------

//-----------
// W/L Tally
var wlTotal = '';
var wins = 0;
var losses = 0;
var ties = 0;

// Calculate Wins + Losses
function getRecord(){
  wins = 0;
  losses = 0;
  ties = 0;
  for (var z=0; z < mbkTable.rows().count(); z++){
    if (mbkTable.row(z, {search:'applied'})[0].length > 0){
      if (mbkTable.cell(z,5).data().toString().includes('Win')){
        wins += 1;
      }
      if (mbkTable.cell(z,5).data().toString().includes('Loss')){
        losses += 1;
      }
      if (mbkTable.cell(z,5).data().toString().includes('TIE')){
        ties += 1;
      }
    }
    else{
    }
  }
}

// Create String to Display
function makeString(wins, losses, ties){
  wlTotal = '<span class="badge badge-';
  var percentage;

  if (wins + losses > 0){
    percentage = ((wins + (.5 * ties)) / (wins + losses + ties)).toFixed(3);
  }
  else{
    percentage = 'no';
  }

  if (percentage > .5){
    wlTotal += 'success">';
  }

  else if (percentage < .5){
    wlTotal += 'danger">';
  }

  else if (percentage == .5 || percentage == 'no'){
    wlTotal += 'warning">';
  }

  if (wins != 1 && losses != 1){
    wlTotal += wins + ' Wins, ' + losses + ' Losses';
  }
  else if (wins == 1 && losses != 1){
    wlTotal += wins + ' Win, ' + losses + ' Losses';
  }
  else if (wins != 1 && losses == 1){
    wlTotal += wins + ' Wins, ' + losses + ' Loss';
  }
  else if (wins == 1 && losses == 1){
    wlTotal += wins + ' Win, ' + losses + ' Loss';
  }

  if (ties == 1){
    wlTotal += ', ' + ties + ' Tie';
  }
  else if (ties >= 1){
    wlTotal += ', ' + ties + ' Ties';
  }

  wlTotal += ' (' + percentage + ' Record)</span>';
}

// Display String for Full Table
getRecord();
makeString(wins, losses, ties);
document.getElementById('winLossTotal').innerHTML = wlTotal;

// Alter String Each Time the Table is Filtered
$(function() {
  mbkTable.on( 'search', function () {
    getRecord();
    makeString(wins, losses, ties);
    document.getElementById('winLossTotal').innerHTML = wlTotal;
  });
});
//-----------