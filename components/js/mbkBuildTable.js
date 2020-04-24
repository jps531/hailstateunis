//-----------
// Load Filters
$(function(){ $("#mbkSelectOpponent").selectpicker('render'); })
$(function(){ $("#mbkSelectSituation").selectpicker('render'); })
$(function(){ $("#mbkSelectYear").selectpicker('render'); })
//-----------

//-----------
// Initialize Table
var mbkTable = $('#mbkTable').DataTable( {
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
                dom: 'ltipr'
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
// Opponent Select
$(document).ready(function(){
  $("#mbkOpponent").on("change", function() {
    if (this.value == ""){
      mbkTable
      .columns( 8 )
      .search(this.value)
      .draw();
    }
    else{
      mbkTable
          .columns( 8 )
          .search( "^" + this.value + "$", true, false, true)
          .draw();
    }
  });
});

$(function() {
  $('#mbkOpponentClear').click(function() {
    $("#mbkOpponent").val('').trigger('change');
  });
});

//-----------
// Season Select
var pageLength;

$(document).ready(function(){
  $("#mbkSelectYear").on("change", function() {
    mbkTable
    .columns( 0 )
    .search( this.value )
    .draw();
    if (this.value != ''){
      pageLength = mbkTable.page.len();
      mbkTable.page.len(-1).draw();
    }
    else if (mbkTable.page.len() == -1){
      mbkTable.page.len(pageLength).draw();
    }
  });
});

$(function() {
  $('#mbkSeasonClear').click(function() {
    $("#mbkSelectYear").val('').trigger('change');
  });
});
//-----------

//-----------
// Siutation Select
$(document).ready(function(){
  $("#mbkSelectSituation").on("change", function() {

    if (this.value == 'November'){
      mbkTable.columns(1).search('-11-').draw();
    }

    else if (this.value == 'December'){
      mbkTable.columns(1).search('-12-').draw();
    }

    else if (this.value == 'January'){
      mbkTable.columns(1).search('-01-').draw();
    }

    else if (this.value == 'February'){
      mbkTable.columns(1).search('-02-').draw();
    }

    else if (this.value == 'March'){
      mbkTable.columns(1).search('-03-').draw();
    }

    else if (!this.value){
      mbkTable.columns().search(this.value).draw();
      mbkTable.search(this.value).draw();
    }

    else{
      mbkTable.columns(4).search(this.value).draw();
    }
  });
});

$(function() {
  $('#mbkSituationClear').click(function() {
    $("#mbkSelectSituation").val('').trigger('change');
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
  for (z=0; z < mbkTable.rows().count(); z++){
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

//-----------
// Get Day of Week
function dayOfWeek() {
  var d = new Date('2020-03-07');
  var weekday = new Array(7);
  weekday[0] = "Monday";
  weekday[1] = "Tuesday";
  weekday[2] = "Wednesday";
  weekday[3] = "Thursday";
  weekday[4] = "Friday";
  weekday[5] = "Saturday";
  weekday[6] = "Sunday";

  var n = weekday[d.getDay()];
  document.getElementById("demo").innerHTML = n;
}
//-----------