//-----------
// Load Filters
$(function(){ $("#wbkOpponent").selectpicker('render'); })
$(function(){ $("#wbkSituationA").selectpicker('render'); })
$(function(){ $("#wbkSituationB").selectpicker('render'); })
$(function(){ $("#wbkSelectYear").selectpicker('render'); })
$.fn.selectpicker.Constructor.DEFAULTS.multipleSeparator = ' | ';
window.onload = function(){
  if ($("#wbkSelectYear").val().length){
    $("#wbkSelectYear").val('').trigger('change');
  }
  if ($("#wbkOpponent").val().length){
    $("#wbkOpponent").val('').trigger('change');
  }
};
//-----------

//-----------
// Initialize Table
var wbkTable = $('#wbkTable').DataTable( {
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
    $("#wbkSearch").on("keyup", function() {
      wbkTable.search( this.value ).draw();
    });
  });

$(function() {
  $('#wbkSearchClear').click(function() {
    $("#wbkSearch").val('').trigger('keyup');
  });
});
//-----------

//-----------
// Opponent Select
$(document).ready(function(){
  $("#wbkOpponent").on("change", function() {
    if (this.value == ""){
      wbkTable.columns(8).search(this.value).draw();
    }
    else{
      var regEx = $(this).find(':selected').map(function() {
        return "^" + $( this ).text() + "$";
      })
      .get()
      .join( "|" );
      wbkTable.column(8).search(regEx, true, false).draw();
    }
  });
});

$(function() {
  $('#wbkOpponentClear').click(function() {
    $("#wbkOpponent").val('').trigger('change');
  });
});

//-----------
// Season Select
var pageLength;
var resetLength = true;

$(document).ready(function(){
  $("#wbkSelectYear").on("change", function() {
    var regEx = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );
    wbkTable.column(0).search(regEx, true, false).draw();

    if (this.value != ''){
      if (resetLength){
        pageLength = wbkTable.page.len();
        resetLength = false;
      }
      wbkTable.page.len(-1).draw();
    }
    else if (wbkTable.page.len() == -1){
      wbkTable.page.len(pageLength).draw();
    }
  });
});

$(function() {
  $('#wbkSeasonClear').click(function() {
    $("#wbkSelectYear").val('').trigger('change');
  });
});
//-----------

//-----------
// Siutation A Select
var wbkOptSelectedA = [];

$(document).ready(function(){
  $("#wbkSituationA").on("change", function() {
    var regExA = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );

    if (regExA.includes('November')){
      regExA = regExA.concat("|-11-");
    }

    else if (regExA.includes('December')){
      regExA = regExA.concat("|-12-");
    }

    else if (regExA.includes('January')){
      regExA = regExA.concat("|-01-");
    }

    else if (regExA.includes('February')){
      regExA = regExA.concat("|-02-");
    }

    else if (regExA.includes('March')){
      regExA = regExA.concat("|-03-");
    }

    else if (regExA.includes('April')){
      regExA = regExA.concat("|-04-");
    }

    else if (this.value == "SEC Tournament"){
      regExA = regExA.concat("|secT");
    }

    else if (this.value == "NCAA Tournament"){
      regExA = regExA.concat("|ncaa");
    }
    
    // Months
    if(regExA.includes('|-11-')||
        regExA.includes('|-12-')||
        regExA.includes('|-01-')||
        regExA.includes('|-02-')||
        regExA.includes('|-03-')||
        regExA.includes('|-04-')){
      disableOptGroup("wbkSituationB",1);
      wbkTable.column(1).search(regExA, true, false).draw();
      wbkOptSelectedA.push(1);
    }
    else{
      enableOptGroup("wbkSituationB",1);
      situationToggleElse(1,wbkOptSelectedA);
    }

    // Days
    if(regExA.includes('Mond')||
        regExA.includes('Tues')||
        regExA.includes('Wedn')||
        regExA.includes('Thur')||
        regExA.includes('Frid')||
        regExA.includes('Satu')||
        regExA.includes('Sund')){
      disableOptGroup("wbkSituationB",2);
      wbkTable.column(2).search(regExA, true, false).draw();
      wbkOptSelectedA.push(2);
    }
    else{
      enableOptGroup("wbkSituationB",2);
      situationToggleElse(2,wbkOptSelectedA);
    }

    // Head Coaches
    if(regExA.includes('Nikki')||
        regExA.includes('Vic')||
        regExA.includes('Sharon')){
      disableOptGroup("wbkSituationB",3);
      wbkTable.column(5).search(regExA, true, false).draw();
      wbkOptSelectedA.push(5);
    }
    else{
      enableOptGroup("wbkSituationB",3);
      situationToggleElse(5,wbkOptSelectedA);
    }

    // Regular Season and Tournaments
    if(regExA.includes('Home')||
        regExA.includes('Road')||
        regExA.includes('Neutral')||
        regExA.includes('SEC')||
        regExA.includes('SEC')||
        regExA.includes('NCAA')||
        regExA.includes('WNIT')||
        regExA.includes('Round')||
        regExA.includes('Sweet')||
        regExA.includes('Elite')||
        regExA.includes('Final')||
        regExA.includes('National')){
      disableOptGroup("wbkSituationB",4);
      disableOptGroup("wbkSituationB",5);
      disableOptGroup("wbkSituationB",6);
      disableOptGroup("wbkSituationB",7);
      disableOptGroup("wbkSituationB",8);
      wbkTable.column(3).search(regExA, true, false).draw();
      wbkOptSelectedA.push(3);
    }
    else{
      enableOptGroup("wbkSituationB",4);
      enableOptGroup("wbkSituationB",5);
      enableOptGroup("wbkSituationB",6);
      enableOptGroup("wbkSituationB",7);
      enableOptGroup("wbkSituationB",8);
      situationToggleElse(3,wbkOptSelectedA);
    }
    
    // Uniform Colors
    if (regExA.includes('White')||
        regExA.includes('Maroon')||
        regExA.includes('Black')||
        regExA.includes('Pink')||
        regExA.includes('Gray')||
        regExA.includes('Cream')){
      disableOptGroup("wbkSituationB",0);
      wbkTable.column(4).search(regExA, true, false).draw();
      wbkOptSelectedA.push(4);
    }
    else{
      enableOptGroup("wbkSituationB",0);
      situationToggleElse(4,wbkOptSelectedA);
    }
  });
});

$(function() {
  $('#wbkSitAClear').click(function() {
    $("#wbkSituationA").val('').trigger('change');
    for(var k=0; k<5; k++){
      enableOptGroup("wbkSituationB",k);
    }
  });
});
//-----------

//-----------
// Siutation B Select
var wbkOptSelectedB = [];

$(document).ready(function(){
  $("#wbkSituationB").on("change", function() {
    var regExB = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );

    if (regExB.includes('November')){
      regExB = regExB.concat("|-11-");
    }

    if (regExB.includes('December')){
      regExB = regExB.concat("|-12-");
    }

    if (regExB.includes('January')){
      regExB = regExB.concat("|-01-");
    }

    if (regExB.includes('February')){
      regExB = regExB.concat("|-02-");
    }

    if (regExB.includes('March')){
      regExB = regExB.concat("|-03-");
    }

    if (regExB.includes('April')){
      regExB = regExB.concat("|-04-");
    }

    if (this.value == "SEC Tournament"){
      regExB = regExB.concat("|secT");
    }

    if (this.value == "NCAA Tournament"){
      regExB = regExB.concat("|ncaa");
    }
    
    // Months
    if(regExB.includes('|-11-')||
        regExB.includes('|-12-')||
        regExB.includes('|-01-')||
        regExB.includes('|-02-')||
        regExB.includes('|-03-')||
        regExB.includes('|-04-')){
      disableOptGroup("wbkSituationA",1);
      wbkTable.column(1).search(regExB, true, false).draw();
      wbkOptSelectedB.push(1);
    }
    else{
      enableOptGroup("wbkSituationA",1);
      situationToggleElse(1,wbkOptSelectedB);
    }

    // Days
    if(regExB.includes('Mond')||
        regExB.includes('Tues')||
        regExB.includes('Wedn')||
        regExB.includes('Thur')||
        regExB.includes('Frid')||
        regExB.includes('Satu')||
        regExB.includes('Sund')){
      disableOptGroup("wbkSituationA",2);
      wbkTable.column(2).search(regExB, true, false).draw();
      wbkOptSelectedB.push(2);
    }
    else{
      enableOptGroup("wbkSituationA",2);
      situationToggleElse(2,wbkOptSelectedB);
    }

    // Head Coaches
    if(regExB.includes('Nikki')||
        regExB.includes('Vic')||
        regExB.includes('Sharon')){
      disableOptGroup("wbkSituationA",3);
      wbkTable.column(5).search(regExB, true, false).draw();
      wbkOptSelectedB.push(5);
    }
    else{
      enableOptGroup("wbkSituationA",3);
      situationToggleElse(5,wbkOptSelectedB);
    }

    // Regular Season amd Tournaments
    if(regExB.includes('Home')||
        regExB.includes('Road')||
        regExB.includes('Neutral')||
        regExB.includes('SEC')||
        regExB.includes('NCAA')||
        regExB.includes('WNIT')||
        regExB.includes('Round')||
        regExB.includes('Sweet')||
        regExB.includes('Elite')||
        regExB.includes('Final')||
        regExB.includes('National')){
      disableOptGroup("wbkSituationA",4);
      disableOptGroup("wbkSituationA",5);
      disableOptGroup("wbkSituationA",6);
      disableOptGroup("wbkSituationA",7);
      disableOptGroup("wbkSituationA",8);
      wbkTable.column(3).search(regExB, true, false).draw();
      wbkOptSelectedB.push(3);
    }
    else{
      enableOptGroup("wbkSituationA",4);
      enableOptGroup("wbkSituationA",5);
      enableOptGroup("wbkSituationA",6);
      enableOptGroup("wbkSituationA",7);
      enableOptGroup("wbkSituationA",8);
      situationToggleElse(3,wbkOptSelectedB);
    }
    
    // Uniform Colors
    if (regExB.includes('White')||
        regExB.includes('Maroon')||
        regExB.includes('Black')||
        regExB.includes('Pink')||
        regExB.includes('Gray')||
        regExB.includes('Cream')){
      disableOptGroup("wbkSituationA",0);
      wbkTable.column(4).search(regExB, true, false).draw();
      wbkOptSelectedB.push(4);
    }
    else{
      enableOptGroup("wbkSituationA",0);
      situationToggleElse(4,wbkOptSelectedB);
    }
  });
});

$(function() {
  $('#wbkSitBClear').click(function() {
    $("#wbkSituationB").val('').trigger('change');
    for(var k=0; k<5; k++){
      enableOptGroup("wbkSituationA",k);
    }
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
  for (z=0; z < wbkTable.rows().count(); z++){
    if (wbkTable.row(z, {search:'applied'})[0].length > 0){
      if (wbkTable.cell(z,5).data().toString().includes('Win')){
        wins += 1;
      }
      if (wbkTable.cell(z,5).data().toString().includes('Loss')){
        losses += 1;
      }
      if (wbkTable.cell(z,5).data().toString().includes('TIE')){
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
  wbkTable.on( 'search', function () {
    getRecord();
    makeString(wins, losses, ties);
    document.getElementById('winLossTotal').innerHTML = wlTotal;
  });
});
//-----------

//-----------
// Situation Functions

// Function to disable optgroup
function disableOptGroup(selectID, optGroupIndex){
  var selectobject;
  selectobject = document.getElementById(selectID).getElementsByTagName("optgroup");
  selectobject[optGroupIndex].disabled = true;
  selectID = "#" + selectID;
  $(selectID).selectpicker('refresh');
}

// Function to re-enable optgroup
function enableOptGroup(selectID, optGroupIndex){
  var selectobject;
  selectobject = document.getElementById(selectID).getElementsByTagName("optgroup");
  selectobject[optGroupIndex].disabled = false;
  selectID = "#" + selectID;
  $(selectID).selectpicker('refresh');
}

// Situation Toggle Else Function
function situationToggleElse(columnNumber,optSelect){
  if (optSelect.includes(columnNumber)){
    wbkTable.columns(columnNumber).search('').draw();
    for (z=0;z<optSelect.length;z++){
      if(optSelect[z] == columnNumber){
        optSelect.splice(z,1);
      }
    }
  }
}
//-----------