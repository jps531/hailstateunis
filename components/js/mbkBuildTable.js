//-----------
// Load Filters
$(function(){ $("#mbkOpponent").selectpicker('render'); })
$(function(){ $("#mbkSituationA").selectpicker('render'); })
$(function(){ $("#mbkSituationB").selectpicker('render'); })
$(function(){ $("#mbkSelectYear").selectpicker('render'); })
$.fn.selectpicker.Constructor.DEFAULTS.multipleSeparator = ' | ';
window.onload = function(){
  if ($("#mbkSelectYear").val().length){
    $("#mbkSelectYear").val('').trigger('change');
  }
  if ($("#mbkOpponent").val().length){
    $("#mbkOpponent").val('').trigger('change');
  }
};
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
// Opponent Select
var pageLengthOpp;
var resetLengthOpp = true;

$(document).ready(function(){
  $("#mbkOpponent").on("change", function() {
    if (this.value == ""){
      mbkTable.columns(8).search(this.value).draw();
    }
    else{
      var regEx = $(this).find(':selected').map(function() {
        return "^" + $( this ).text() + "$";
      })
      .get()
      .join( "|" );
      mbkTable.column(8).search(regEx, true, false).draw();
    }

    if (this.value != ''){
      if (resetLengthOpp){
        pageLengthOpp = baseballTable.page.len();
        resetLengthOpp = false;
      }
      baseballTable.page.len(-1).draw();
    }
    else if (baseballTable.page.len() == -1){
      baseballTable.page.len(pageLengthOpp).draw();
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
var pageLengthSzn;
var resetLengthSzn = true;

$(document).ready(function(){
  $("#mbkSelectYear").on("change", function() {
    var regEx = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );
    mbkTable.column(0).search(regEx, true, false).draw();

    if (this.value != ''){
      if (resetLengthSzn){
        pageLengthSzn = mbkTable.page.len();
        resetLengthSzn = false;
      }
      mbkTable.page.len(-1).draw();
    }
    else if (mbkTable.page.len() == -1){
      mbkTable.page.len(pageLengthSzn).draw();
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
// Siutation A Select
var mbkOptSelectedA = [];

$(document).ready(function(){
  $("#mbkSituationA").on("change", function() {
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
        regExA.includes('|-03-')){
      disableOptGroup("mbkSituationB",1);
      mbkTable.column(1).search(regExA, true, false).draw();
      mbkOptSelectedA.push(1);
    }
    else{
      enableOptGroup("mbkSituationB",1);
      situationToggleElse(1,mbkOptSelectedA);
    }

    // Days
    if(regExA.includes('Mond')||
        regExA.includes('Tues')||
        regExA.includes('Wedn')||
        regExA.includes('Thur')||
        regExA.includes('Frid')||
        regExA.includes('Satu')||
        regExA.includes('Sund')){
      disableOptGroup("mbkSituationB",2);
      mbkTable.column(2).search(regExA, true, false).draw();
      mbkOptSelectedA.push(2);
    }
    else{
      enableOptGroup("mbkSituationB",2);
      situationToggleElse(2,mbkOptSelectedA);
    }

    // Head Coaches
    if(regExA.includes('Ben')||
        regExA.includes('Rick')||
        regExA.includes('Rich')||
        regExA.includes('Jim')||
        regExA.includes('Babe')){
      disableOptGroup("mbkSituationB",3);
      mbkTable.column(5).search(regExA, true, false).draw();
      mbkOptSelectedA.push(5);
    }
    else{
      enableOptGroup("mbkSituationB",3);
      situationToggleElse(5,mbkOptSelectedA);
    }

    // Regular Season and Tournaments
    if(regExA.includes('Home')||
        regExA.includes('Road')||
        regExA.includes('Neutral')||
        regExA.includes('SEC')||
        regExA.includes('NCAA')||
        regExA.includes('NIT')||
        regExA.includes('Round')||
        regExA.includes('Sweet')||
        regExA.includes('Elite')||
        regExA.includes('Final')||
        regExA.includes('Reg')){
      disableOptGroup("mbkSituationB",4);
      disableOptGroup("mbkSituationB",5);
      disableOptGroup("mbkSituationB",6);
      disableOptGroup("mbkSituationB",7);
      disableOptGroup("mbkSituationB",8);
      mbkTable.column(3).search(regExA, true, false).draw();
      mbkOptSelectedA.push(3);
    }
    else{
      enableOptGroup("mbkSituationB",4);
      enableOptGroup("mbkSituationB",5);
      enableOptGroup("mbkSituationB",6);
      enableOptGroup("mbkSituationB",7);
      enableOptGroup("mbkSituationB",8);
      situationToggleElse(3,mbkOptSelectedA);
    }
    
    // Uniform Colors
    if (regExA.includes('White')||
        regExA.includes('Maroon')||
        regExA.includes('Black')||
        regExA.includes('Gray')||
        regExA.includes('Cream')){
      disableOptGroup("mbkSituationB",0);
      mbkTable.column(4).search(regExA, true, false).draw();
      mbkOptSelectedA.push(4);
    }
    else{
      enableOptGroup("mbkSituationB",0);
      situationToggleElse(4,mbkOptSelectedA);
    }
  });
});

$(function() {
  $('#mbkSitAClear').click(function() {
    $("#mbkSituationA").val('').trigger('change');
    for(var k=0; k<5; k++){
      enableOptGroup("mbkSituationB",k);
    }
  });
});
//-----------

//-----------
// Siutation B Select
var mbkOptSelectedB = [];

$(document).ready(function(){
  $("#mbkSituationB").on("change", function() {
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
        regExB.includes('|-03-')){
      disableOptGroup("mbkSituationA",1);
      mbkTable.column(1).search(regExB, true, false).draw();
      mbkOptSelectedB.push(1);
    }
    else{
      enableOptGroup("mbkSituationA",1);
      situationToggleElse(1,mbkOptSelectedB);
    }

    // Days
    if(regExB.includes('Mond')||
        regExB.includes('Tues')||
        regExB.includes('Wedn')||
        regExB.includes('Thur')||
        regExB.includes('Frid')||
        regExB.includes('Satu')||
        regExB.includes('Sund')){
      disableOptGroup("mbkSituationA",2);
      mbkTable.column(2).search(regExB, true, false).draw();
      mbkOptSelectedB.push(2);
    }
    else{
      enableOptGroup("mbkSituationA",2);
      situationToggleElse(2,mbkOptSelectedB);
    }

    // Head Coaches
    if(regExB.includes('Ben')||
        regExB.includes('Rick')||
        regExB.includes('Rich')||
        regExB.includes('Jim')||
        regExB.includes('Babe')){
      disableOptGroup("mbkSituationA",3);
      mbkTable.column(5).search(regExB, true, false).draw();
      mbkOptSelectedB.push(5);
    }
    else{
      enableOptGroup("mbkSituationA",3);
      situationToggleElse(5,mbkOptSelectedB);
    }
    // Regular Season and Tournaments
    if(regExB.includes('Home')||
        regExB.includes('Road')||
        regExB.includes('Neutral')||
        regExB.includes('SEC')||
        regExB.includes('NCAA')||
        regExB.includes('NIT')||
        regExB.includes('Round')||
        regExB.includes('Sweet')||
        regExB.includes('Elite')||
        regExB.includes('Final')||
        regExB.includes('Reg')){
      disableOptGroup("mbkSituationA",4);
      disableOptGroup("mbkSituationA",5);
      disableOptGroup("mbkSituationA",6);
      disableOptGroup("mbkSituationA",7);
      disableOptGroup("mbkSituationA",8);
      mbkTable.column(3).search(regExB, true, false).draw();
      mbkOptSelectedB.push(3);
    }
    else{
      enableOptGroup("mbkSituationA",4);
      enableOptGroup("mbkSituationA",5);
      enableOptGroup("mbkSituationA",6);
      enableOptGroup("mbkSituationA",7);
      enableOptGroup("mbkSituationA",8);
      situationToggleElse(3,mbkOptSelectedB);
    }
    
    // Uniform Colors
    if (regExB.includes('White')||
        regExB.includes('Maroon')||
        regExB.includes('Black')||
        regExB.includes('Gray')||
        regExB.includes('Cream')){
      disableOptGroup("mbkSituationA",0);
      mbkTable.column(4).search(regExB, true, false).draw();
      mbkOptSelectedB.push(4);
    }
    else{
      enableOptGroup("mbkSituationA",0);
      situationToggleElse(4,mbkOptSelectedB);
    }
  });
});

$(function() {
  $('#mbkSitBClear').click(function() {
    $("#mbkSituationB").val('').trigger('change');
    for(var k=0; k<5; k++){
      enableOptGroup("mbkSituationA",k);
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
    mbkTable.columns(columnNumber).search('').draw();
    for (z=0;z<optSelect.length;z++){
      if(optSelect[z] == columnNumber){
        optSelect.splice(z,1);
      }
    }
  }
}
//-----------