//-----------
// Initialize Table
var table = $('#footballTable').DataTable( {
                "lengthMenu": [ [10, 2, 11, 12, 13, 14, 15, -1], [10, 2, 11, 12, 13, 14, 15, "All"] ],
                responsive: {

                  // Set Breakpoints
                  breakpoints: [
                    {name: 'xl', width: Infinity},
                    {name: 'lg', width: 1150},
                    {name: 'md', width: 992},
                    {name: 'sm', width: 768},
                    {name: 'xs', width: 550},
                    {name: 'xxs', width: 375}
                  ],

                  // Customize Expanded Row
                  details: {
                    renderer: function ( api, rowIdx, columns ) {
                        var data = '';

                        // Article Link
                        if (api.cell(rowIdx,11).data()){
                          data += '<div class="container" id="innerArticle"><a class="btn btn-outline-dark btn-block" target="_blank" href="' +
                          api.cell(rowIdx, 11).data() +
                          '" style="white-space:normal" role="button">' + 
                          api.cell(rowIdx, 11).node().title + '</a></div>';
                        }

                        // Helmet Matchup
                        if (columns[2].hidden){
                          data += '<div class="container" id="innerTable"><table><thead></thead><tbody>';
                          data += '<tr><td id="innerTitle">Helmet Matchup</td></tr>';
                          data += '<tr><td>' + api.cell(rowIdx, 2).data() + api.cell(rowIdx, 3).data() + '</td></tr>';
                          data += '</tbody></table></div>';
                        }

                        // Uniform Combination
                        if (columns[5].hidden){
                          data += '<div class="container" id="innerTable"><table><thead></thead><tbody>';
                          data += '<tr><td id="innerTitle">Uniform Combination</td></tr>';
                          data += '<tr><td>' + api.cell(rowIdx, 5).data() + api.cell(rowIdx, 6).data() + api.cell(rowIdx, 7).data() + '</td></tr>';
                          data += '</tbody></table></div>';
                        }
                        
                        // Final Score
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

                // Column Definitions
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

                // Table Options
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
        .columns( 12 )
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

//-----------
// W/L Tally
var wlTotal = '';
var wins = 0;
var losses = 0;

// Calculate Wins + Losses
function getRecord(){
  wins = 0;
  losses = 0;
  for (z=0; z < table.rows().count(); z++){
    if (table.row(z, {search:'applied'})[0].length > 0){
      if (table.cell(z,8).data().toString().includes('Win')){
        wins += 1;
      }
      if (table.cell(z,8).data().toString().includes('Loss')){
        losses += 1;
      }
    }
    else{
    }
  }
}

// Create String to Display
function makeString(wins, losses){
  wlTotal = '<span class="badge badge-';

  if (wins + losses > 0){
    percentage = (wins / (wins + losses)).toFixed(3);
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
    wlTotal += wins + ' Wins, ' + losses + ' Losses (' + percentage + ' Record)';
  }
  else if (wins == 1 && losses != 1){
    wlTotal += wins + ' Win, ' + losses + ' Losses (' + percentage + ' Record)';
  }
  else if (wins != 1 && losses == 1){
    wlTotal += wins + ' Wins, ' + losses + ' Loss (' + percentage + ' Record)';
  }
  else if (wins == 1 && losses == 1){
    wlTotal += wins + ' Win, ' + losses + ' Loss (' + percentage + ' Record)</span>';
  }
}

// Display String for Full Table
getRecord();
makeString(wins, losses);
document.getElementById('winLossTotal').innerHTML = wlTotal;

// Alter String Each Time the Table is Filtered
$(function() {
  table.on( 'search', function () {
    getRecord();
    makeString(wins, losses);
    document.getElementById('winLossTotal').innerHTML = wlTotal;
  });
});
//-----------