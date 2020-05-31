//-----------
// Load Filters
$(function(){ $("#bbSelectYear").selectpicker('render'); })
$(function(){ $("#bbSelectOpponent").selectpicker('render'); })
$(function(){ $("#bbSituationA").selectpicker('render'); })
$(function(){ $("#bbSituationB").selectpicker('render'); })

$.fn.selectpicker.Constructor.DEFAULTS.multipleSeparator = ' | ';

window.onload = function(){
  if ($("#bbSelectYear").val().length){
    $("#bbSelectYear").val('').trigger('change');
  }
  if ($("#bbSelectOpponent").val().length){
    $("#bbSelectOpponent").val('').trigger('change');
  }
};
//-----------

//-----------
// Initialize Table
var baseballTable = $('#baseballTable').DataTable( {
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
                                    api.cell(rowIdx, 16).data() +'</td></tr>';
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
                  {"className": "all", 'targets': [0,4,16]},
                  {"className": "min-xl", 'targets': [2]},
                  {"className": "min-lg", 'targets': [3]},
                  {"className": "min-md", 'targets': [6,7]},
                  {"className": "min-sm", 'targets': [1]},
                  {"className": "min-xs", 'targets': [5]},
                  {"className": "none", 'targets': [8,9,10,11,12,13,14,15]},
                  {type: 'title-string', targets: 1}
                ],

                // Table Options
                "order": [[ 1, 'asc' ], [15, 'asc']],
                searching: true,
                dom: 'ltipr'
              });
//-----------

//-----------
// Search Bar
$(document).ready(function(){
    $("#bbSearch").on("keyup", function() {
      baseballTable.search( this.value ).draw();
    });
  });

$(function() {
  $('#bbSearchClear').click(function() {
    $("#bbSearch").val('').trigger('keyup');
  });
});
//-----------

//-----------
// Opponent Select
$(document).ready(function(){
  $("#bbSelectOpponent").on("change", function() {
    if (this.value == ""){
      baseballTable
      .columns(16)
      .search(this.value)
      .draw();
    }
    else{
      var regEx = $(this).find(':selected').map(function() {
        return "^" + $( this ).text() + "$";
      })
      .get()
      .join( "|" );
      baseballTable.column(16).search(regEx, true, false).draw();
    }
  });
});

$(function() {
  $('#bbOpponentClear').click(function() {
    $("#bbSelectOpponent").val('').trigger('change');
  });
});

//-----------
// Season Select
var pageLength;
var resetLength = true;

$(document).ready(function(){
  $("#bbSelectYear").on("change", function() {
    var regEx = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );
    baseballTable.column(0).search(regEx, true, false).draw();

    if (this.value != ''){
      if (resetLength){
        pageLength = baseballTable.page.len();
        resetLength = false;
      }
      baseballTable.page.len(-1).draw();
    }
    else if (baseballTable.page.len() == -1){
      baseballTable.page.len(pageLength).draw();
    }
  });
});

$(function() {
  $('#bbSeasonClear').click(function() {
    $("#bbSelectYear").val('').trigger('change');
  });
});
//-----------

//-----------
// Siutation A Select
var bbOptSelectedA = [];

$(document).ready(function(){
  $("#bbSituationA").on("change", function() {

    var regExA = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );
    
    if (this.value == 'All Alternates'){
      regExA = regExA.concat('|alternates');
    }

    else if (this.value == 'Shiny Maroon Helmets'){
      regExA = regExA.concat('|shiny maroon');
    }

    else if (this.value == 'White Helmets'){
      regExA = regExA.concat('|white');
    }

    else if (this.value == 'Matte Maroon Helmets'){
      regExA = regExA.concat('|matte');
    }

    else if (this.value == 'Silver Helmets'){
      regExA = regExA.concat('|silver');
    }

    else if (this.value == 'Gold Helmets'){
      regExA = regExA.concat('|gold');
    }

    else if (this.value == 'Bulldog Helmets'){
      regExA = regExA.concat('|bulldog');
    }

    else if (this.value == 'Maroon Jerseys'){
      regExA = regExA.concat('|maroon');
    }

    else if (this.value == 'White Jerseys'){
      regExA = regExA.concat('|white');
    }

    else if (this.value == 'Black Jerseys'){
      regExA = regExA.concat('|black');
    }

    else if (this.value == 'Gray Jerseys'){
      regExA = regExA.concat('|gray');
    }

    else if (this.value == 'White Pants'){
      regExA = regExA.concat('|white');
    }

    else if (this.value == 'Maroon Pants'){
      regExA = regExA.concat('|maroon');
    }

    else if (this.value == 'Gray Pants'){
      regExA = regExA.concat('|gray');
    }

    else if (this.value == 'Silver Pants'){
      regExA = regExA.concat('|silver');
    }

    else if (this.value == 'DWS 100'){
      regExA = regExA.concat('|dws 100');
    }

    else if (this.value == 'August'){
      regExA = regExA.concat('|-08-');
    }

    else if (this.value == 'September'){
      regExA = regExA.concat('|-09-');
    }

    else if (this.value == 'October'){
      regExA = regExA.concat('|-10-');
    }

    else if (this.value == 'November'){
      regExA = regExA.concat('|-11-');
    }

    else if (this.value == 'December'){
      regExA = regExA.concat('|-12-');
    }

    else if (this.value == 'January'){
      regExA = regExA.concat('|-01-');
    }

    // Alternates
    if(regExA.includes('Alternates')){
      disableOptGroup("bbSituationB",0);
      baseballTable.column(4).search(regExA, true, false).draw();
      bbOptSelectedA.push(0);
    }
    else{
      situationToggleElse(0,4,bbOptSelectedA);
      if (!bbOptSelectedA.includes(0)){
        enableOptGroup("bbSituationB",0);
      }
    }

    // Bowls
    if(regExA.includes('Bowl Games')){
      disableOptGroup("bbSituationB",1);
      disableOptGroup("bbSituationB",6);
      baseballTable.column(3).search(regExA, true, false).draw();
      bbOptSelectedA.push(1);
    }
    else{
      situationToggleElse(1,3,bbOptSelectedA);
      if (!bbOptSelectedA.includes(6) && !bbOptSelectedA.includes(1)){
        enableOptGroup("bbSituationB",1);
      }
      if (!bbOptSelectedA.includes(6) && !bbOptSelectedA.includes(1)){
        enableOptGroup("bbSituationB",6);
      }
    }

    // Helmets
    if(regExA.includes('Helmets|')){
      disableOptGroup("bbSituationB",2);
      baseballTable.column(5).search(regExA, true, false).draw();
      bbOptSelectedA.push(2);
    }
    else{
      situationToggleElse(2,5,bbOptSelectedA);
      if (!bbOptSelectedA.includes(2)){
        enableOptGroup("bbSituationB",2);
      }
    }

    // Jerseys
    if(regExA.includes('Jerseys')){
      disableOptGroup("bbSituationB",3);
      baseballTable.column(6).search(regExA, true, false).draw();
      bbOptSelectedA.push(3);
    }
    else{
      situationToggleElse(3,6,bbOptSelectedA);
      if (!bbOptSelectedA.includes(3)){
        enableOptGroup("bbSituationB",3);
      }
    }

    // Pants
    if(regExA.includes('Pants')){
      disableOptGroup("bbSituationB",4);
      baseballTable.column(7).search(regExA, true, false).draw();
      bbOptSelectedA.push(4);
    }
    else{
      situationToggleElse(4,7,bbOptSelectedA);
      if (!bbOptSelectedA.includes(4)){
        enableOptGroup("bbSituationB",4);
      }
    }

    // Patches
    if(regExA.includes('dws 100')||regExA.includes('Nick Bell')){
      disableOptGroup("bbSituationB",5);
      baseballTable.column(4).search(regExA, true, false).draw();
      bbOptSelectedA.push(5);
    }
    else{
      situationToggleElse(5,4,bbOptSelectedA);
      if (!bbOptSelectedA.includes(5)){
        enableOptGroup("bbSituationB",5);
      }
    }

    // Regular Season
    if(regExA.includes('Home')||
        regExA.includes('Road')||
        regExA.includes('Neutral')){
      disableOptGroup("bbSituationB",1);
      disableOptGroup("bbSituationB",6);
      baseballTable.column(3).search(regExA, true, false).draw();
      bbOptSelectedA.push(6);
    }
    else{
      situationToggleElse(6,3,bbOptSelectedA);
      if (!bbOptSelectedA.includes(6) && !bbOptSelectedA.includes(1)){
        enableOptGroup("bbSituationB",1);
      }
      if (!bbOptSelectedA.includes(6) && !bbOptSelectedA.includes(1)){
        enableOptGroup("bbSituationB",6);
      }
    }

    // Months
    if(regExA.includes('|-08-')||
        regExA.includes('|-09-')||
        regExA.includes('|-10-')||
        regExA.includes('|-11-')||
        regExA.includes('|-12-')||
        regExA.includes('|-01-')){
      disableOptGroup("bbSituationB",7);
      baseballTable.column(1).search(regExA, true, false).draw();
      bbOptSelectedA.push(7);
    }
    else{
      situationToggleElse(7,1,bbOptSelectedA);
      if (!bbOptSelectedA.includes(7)){
        enableOptGroup("bbSituationB",7);
      }
    }

    // Days
    if(regExA.includes('Mond')||
        regExA.includes('Tues')||
        regExA.includes('Wedn')||
        regExA.includes('Thur')||
        regExA.includes('Frid')||
        regExA.includes('Satu')||
        regExA.includes('Sund')){
      disableOptGroup("bbSituationB",8);
      baseballTable.column(8).search(regExA, true, false).draw();
      bbOptSelectedA.push(8);
    }
    else{
      situationToggleElse(8,8,bbOptSelectedA);
      if (!bbOptSelectedA.includes(8)){
        enableOptGroup("bbSituationB",8);
      }
    }

    // Head Coaches
    if(regExA.includes('Mike')||
        regExA.includes('Joe')||
        regExA.includes('Greg')||
        regExA.includes('Dan')||
        regExA.includes('Syl')||
        regExA.includes('Jackie')||
        regExA.includes('Rockey')||
        regExA.includes('Emory')||
        regExA.includes('Bob')||
        regExA.includes('Paul')||
        regExA.includes('Allyn')||
        regExA.includes('Ralph')){
      disableOptGroup("bbSituationB",9);
      baseballTable.column(11).search(regExA, true, false).draw();
      bbOptSelectedA.push(9);
    }
    else{
      situationToggleElse(9,11,bbOptSelectedA);
      if (!bbOptSelectedA.includes(9)){
        enableOptGroup("bbSituationB",9);
      }
    }

    // Combinations
    if(regExA.includes('/')){
      disableOptGroup("bbSituationB",10);
      disableOptGroup("bbSituationB",11);
      disableOptGroup("bbSituationB",12);
      disableOptGroup("bbSituationB",13);
      disableOptGroup("bbSituationB",14);
      baseballTable.column(4).search(regExA, true, false).draw();
      bbOptSelectedA.push(10);
    }
    else{
      situationToggleElse(10,4,bbOptSelectedA);
      if (!bbOptSelectedA.includes(10)){
        enableOptGroup("bbSituationB",10);
        enableOptGroup("bbSituationB",11);
        enableOptGroup("bbSituationB",12);
        enableOptGroup("bbSituationB",13);
        enableOptGroup("bbSituationB",14);
      }
    }
  });
});

$(function() {
  $('#bbSitAClear').click(function() {
    $("#bbSituationA").val('').trigger('change');
  });
});
//-----------

//-----------
// Siutation B Select
var bbOptSelectedB = [];

$(document).ready(function(){
  $("#bbSituationB").on("change", function() {

    var regExB = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );
    
    if (this.value == 'All Alternates'){
      regExB = regExB.concat('|alternates');
    }

    else if (this.value == 'Shiny Maroon Helmets'){
      regExB = regExB.concat('|shiny maroon');
    }

    else if (this.value == 'White Helmets'){
      regExB = regExB.concat('|white');
    }

    else if (this.value == 'Matte Maroon Helmets'){
      regExB = regExB.concat('|matte');
    }

    else if (this.value == 'Silver Helmets'){
      regExB = regExB.concat('|silver');
    }

    else if (this.value == 'Gold Helmets'){
      regExB = regExB.concat('|gold');
    }

    else if (this.value == 'Bulldog Helmets'){
      regExB = regExB.concat('|bulldog');
    }

    else if (this.value == 'Maroon Jerseys'){
      regExB = regExB.concat('|maroon');
    }

    else if (this.value == 'White Jerseys'){
      regExB = regExB.concat('|white');
    }

    else if (this.value == 'Black Jerseys'){
      regExB = regExB.concat('|black');
    }

    else if (this.value == 'Gray Jerseys'){
      regExB = regExB.concat('|gray');
    }

    else if (this.value == 'White Pants'){
      regExB = regExB.concat('|white');
    }

    else if (this.value == 'Maroon Pants'){
      regExB = regExB.concat('|maroon');
    }

    else if (this.value == 'Gray Pants'){
      regExB = regExB.concat('|gray');
    }

    else if (this.value == 'Silver Pants'){
      regExB = regExB.concat('|silver');
    }

    else if (this.value == 'DWS 100'){
      regExB = regExB.concat('|dws 100');
    }

    else if (this.value == 'August'){
      regExB = regExB.concat('|-08-');
    }

    else if (this.value == 'September'){
      regExB = regExB.concat('|-09-');
    }

    else if (this.value == 'October'){
      regExB = regExB.concat('|-10-');
    }

    else if (this.value == 'November'){
      regExB = regExB.concat('|-11-');
    }

    else if (this.value == 'December'){
      regExB = regExB.concat('|-12-');
    }

    else if (this.value == 'January'){
      regExB = regExB.concat('|-01-');
    }

    // Alternates
    if(regExB.includes('Alternates')){
      disableOptGroup("bbSituationA",0);
      baseballTable.column(4).search(regExB, true, false).draw();
      bbOptSelectedB.push(0);
    }
    else{
      situationToggleElse(0,4,bbOptSelectedB);
      if (!bbOptSelectedB.includes(0)){
        enableOptGroup("bbSituationA",0);
      }
    }

    // Bowls
    if(regExB.includes('Bowl Games')){
      disableOptGroup("bbSituationA",1);
      disableOptGroup("bbSituationA",6);
      baseballTable.column(3).search(regExB, true, false).draw();
      bbOptSelectedB.push(1);
    }
    else{
      situationToggleElse(1,3,bbOptSelectedB);
      if (!bbOptSelectedB.includes(6) && !bbOptSelectedA.includes(1)){
        enableOptGroup("bbSituationA",1);
      }
      if (!bbOptSelectedB.includes(6) && !bbOptSelectedA.includes(1)){
        enableOptGroup("bbSituationA",6);
      }
    }

    // Helmets
    if(regExB.includes('Helmets|')){
      disableOptGroup("bbSituationA",2);
      baseballTable.column(5).search(regExB, true, false).draw();
      bbOptSelectedB.push(2);
    }
    else{
      situationToggleElse(2,5,bbOptSelectedB);
      if (!bbOptSelectedB.includes(2)){
        enableOptGroup("bbSituationA",2);
      }
    }

    // Jerseys
    if(regExB.includes('Jerseys')){
      disableOptGroup("bbSituationA",3);
      baseballTable.column(6).search(regExB, true, false).draw();
      bbOptSelectedB.push(3);
    }
    else{
      situationToggleElse(3,6,bbOptSelectedB);
      if (!bbOptSelectedB.includes(3)){
        enableOptGroup("bbSituationA",3);
      }
    }

    // Pants
    if(regExB.includes('Pants')){
      disableOptGroup("bbSituationA",4);
      baseballTable.column(7).search(regExB, true, false).draw();
      bbOptSelectedB.push(4);
    }
    else{
      situationToggleElse(4,7,bbOptSelectedB);
      if (!bbOptSelectedB.includes(4)){
        enableOptGroup("bbSituationA",4);
      }
    }

    // Patches
    if(regExB.includes('dws 100')||regExB.includes('Nick Bell')){
      disableOptGroup("bbSituationA",5);
      baseballTable.column(4).search(regExB, true, false).draw();
      bbOptSelectedB.push(5);
    }
    else{
      situationToggleElse(5,4,bbOptSelectedB);
      if (!bbOptSelectedB.includes(5)){
        enableOptGroup("bbSituationA",5);
      }
    }

    // Regular Season
    if(regExB.includes('Home')||
        regExB.includes('Road')||
        regExB.includes('Neutral')){
      disableOptGroup("bbSituationA",1);
      disableOptGroup("bbSituationA",6);
      baseballTable.column(3).search(regExB, true, false).draw();
      bbOptSelectedB.push(6);
    }
    else{
      situationToggleElse(6,3,bbOptSelectedB);
      if (!bbOptSelectedB.includes(6) && !bbOptSelectedA.includes(1)){
        enableOptGroup("bbSituationA",1);
      }
      if (!bbOptSelectedB.includes(6) && !bbOptSelectedA.includes(1)){
        enableOptGroup("bbSituationA",6);
      }
    }

    // Months
    if(regExB.includes('|-08-')||
        regExB.includes('|-09-')||
        regExB.includes('|-10-')||
        regExB.includes('|-11-')||
        regExB.includes('|-12-')||
        regExB.includes('|-01-')){
      disableOptGroup("bbSituationA",7);
      baseballTable.column(1).search(regExB, true, false).draw();
      bbOptSelectedB.push(7);
    }
    else{
      situationToggleElse(7,1,bbOptSelectedB);
      if (!bbOptSelectedB.includes(7)){
        enableOptGroup("bbSituationA",7);
      }
    }

    // Days
    if(regExB.includes('Mond')||
        regExB.includes('Tues')||
        regExB.includes('Wedn')||
        regExB.includes('Thur')||
        regExB.includes('Frid')||
        regExB.includes('Satu')||
        regExB.includes('Sund')){
      disableOptGroup("bbSituationA",8);
      baseballTable.column(8).search(regExB, true, false).draw();
      bbOptSelectedB.push(8);
    }
    else{
      situationToggleElse(8,8,bbOptSelectedB);
      if (!bbOptSelectedB.includes(8)){
        enableOptGroup("bbSituationA",8);
      }
    }

    // Head Coaches
    if(regExB.includes('Mike')||
        regExB.includes('Joe')||
        regExB.includes('Greg')||
        regExB.includes('Dan')||
        regExB.includes('Syl')||
        regExB.includes('Jackie')||
        regExB.includes('Rockey')||
        regExB.includes('Emory')||
        regExB.includes('Bob')||
        regExB.includes('Paul')||
        regExB.includes('Allyn')||
        regExB.includes('Ralph')){
      disableOptGroup("bbSituationA",9);
      baseballTable.column(11).search(regExB, true, false).draw();
      bbOptSelectedB.push(9);
    }
    else{
      situationToggleElse(9,11,bbOptSelectedB);
      if (!bbOptSelectedB.includes(9)){
        enableOptGroup("bbSituationA",9);
      }
    }

    // Combinations
    if(regExB.includes('/')){
      disableOptGroup("bbSituationA",10);
      disableOptGroup("bbSituationA",11);
      disableOptGroup("bbSituationA",12);
      disableOptGroup("bbSituationA",13);
      disableOptGroup("bbSituationA",14);
      baseballTable.column(4).search(regExB, true, false).draw();
      bbOptSelectedB.push(10);
    }
    else{
      situationToggleElse(10,4,bbOptSelectedB);
      if (!bbOptSelectedB.includes(10)){
        enableOptGroup("bbSituationA",10);
        enableOptGroup("bbSituationA",11);
        enableOptGroup("bbSituationA",12);
        enableOptGroup("bbSituationA",13);
        enableOptGroup("bbSituationA",14);
      }
    }
  });
});

$(function() {
  $('#bbSitBClear').click(function() {
    $("#bbSituationB").val('').trigger('change');
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
  for (z=0; z < baseballTable.rows().count(); z++){
    if (baseballTable.row(z, {search:'applied'})[0].length > 0){
      if (baseballTable.cell(z,5).data().toString().includes('Win')){
        wins += 1;
      }
      if (baseballTable.cell(z,5).data().toString().includes('Loss')){
        losses += 1;
      }
      if (baseballTable.cell(z,5).data().toString().includes('TIE')){
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
  baseballTable.on( 'search', function () {
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
function situationToggleElse(targetNumber,columnNumber,optSelect){
  if (optSelect.includes(targetNumber)){
    baseballTable.columns(columnNumber).search('').draw();
    for (z=0;z<optSelect.length;z++){
      if(optSelect[z] == targetNumber){
        optSelect.splice(z,1);
      }
    }
  }
}
//-----------