
//-----------
// Load Filters
$(function(){ $("#fbUniformA").selectpicker('render'); })
$(function(){ $("#fbGameA").selectpicker('render'); })
//-----------

//-----------
// Initialize Table
export var table = $('#footballTable').DataTable( {
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
                  {"type": "num", 'targets': [9,10]},
                  {"className": "all", 'targets': [0,4,8,12]},
                  {"className": "min-lg", 'targets': [5,6,7]},
                  {"className": "min-md", 'targets': [2,3]},
                  {"className": "min-sm", 'targets': [9,10]},
                  {"className": "min-xs", 'targets': [1]},
                  {"className": "none", 'targets': [11]},
                  {type: 'title-string', targets: 1}
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
// Siutation A Select
var fbOptSelectedA = [];

$(document).ready(function(){
  $("#fbUniformA").on("change", function() {

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
      disableOptGroup("fbGameA",0);
      table.column(4).search(regExA, true, false).draw();
      fbOptSelectedA.push(0);
    }
    else{
      situationToggleElse(0,4,fbOptSelectedA);
      if (!fbOptSelectedA.includes(0)){
        enableOptGroup("fbGameA",0);
      }
    }

    // Bowls
    if(regExA.includes('Bowl Games')){
      disableOptGroup("fbGameA",1);
      disableOptGroup("fbGameA",6);
      table.column(3).search(regExA, true, false).draw();
      fbOptSelectedA.push(1);
    }
    else{
      situationToggleElse(1,3,fbOptSelectedA);
      if (!fbOptSelectedA.includes(6) && !fbOptSelectedA.includes(1)){
        enableOptGroup("fbGameA",1);
      }
      if (!fbOptSelectedA.includes(6) && !fbOptSelectedA.includes(1)){
        enableOptGroup("fbGameA",6);
      }
    }

    // Helmets
    if(regExA.includes('Helmets|')){
      disableOptGroup("fbGameA",2);
      table.column(5).search(regExA, true, false).draw();
      fbOptSelectedA.push(2);
    }
    else{
      situationToggleElse(2,5,fbOptSelectedA);
      if (!fbOptSelectedA.includes(2)){
        enableOptGroup("fbGameA",2);
      }
    }

    // Jerseys
    if(regExA.includes('Jerseys')){
      disableOptGroup("fbGameA",3);
      table.column(6).search(regExA, true, false).draw();
      fbOptSelectedA.push(3);
    }
    else{
      situationToggleElse(3,6,fbOptSelectedA);
      if (!fbOptSelectedA.includes(3)){
        enableOptGroup("fbGameA",3);
      }
    }

    // Pants
    if(regExA.includes('Pants')){
      disableOptGroup("fbGameA",4);
      table.column(7).search(regExA, true, false).draw();
      fbOptSelectedA.push(4);
    }
    else{
      situationToggleElse(4,7,fbOptSelectedA);
      if (!fbOptSelectedA.includes(4)){
        enableOptGroup("fbGameA",4);
      }
    }

    // Patches
    if(regExA.includes('dws 100')||regExA.includes('Nick Bell')){
      disableOptGroup("fbGameA",5);
      table.column(4).search(regExA, true, false).draw();
      fbOptSelectedA.push(5);
    }
    else{
      situationToggleElse(5,4,fbOptSelectedA);
      if (!fbOptSelectedA.includes(5)){
        enableOptGroup("fbGameA",5);
      }
    }

    // Regular Season
    if(regExA.includes('Home')||
        regExA.includes('Road')||
        regExA.includes('Neutral')){
      disableOptGroup("fbGameA",1);
      disableOptGroup("fbGameA",6);
      table.column(3).search(regExA, true, false).draw();
      fbOptSelectedA.push(6);
    }
    else{
      situationToggleElse(6,3,fbOptSelectedA);
      if (!fbOptSelectedA.includes(6) && !fbOptSelectedA.includes(1)){
        enableOptGroup("fbGameA",1);
      }
      if (!fbOptSelectedA.includes(6) && !fbOptSelectedA.includes(1)){
        enableOptGroup("fbGameA",6);
      }
    }

    // Months
    if(regExA.includes('|-08-')||
        regExA.includes('|-09-')||
        regExA.includes('|-10-')||
        regExA.includes('|-11-')||
        regExA.includes('|-12-')||
        regExA.includes('|-01-')){
      disableOptGroup("fbGameA",7);
      table.column(1).search(regExA, true, false).draw();
      fbOptSelectedA.push(7);
    }
    else{
      situationToggleElse(7,1,fbOptSelectedA);
      if (!fbOptSelectedA.includes(7)){
        enableOptGroup("fbGameA",7);
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
      disableOptGroup("fbGameA",8);
      table.column(8).search(regExA, true, false).draw();
      fbOptSelectedA.push(8);
    }
    else{
      situationToggleElse(8,8,fbOptSelectedA);
      if (!fbOptSelectedA.includes(8)){
        enableOptGroup("fbGameA",8);
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
      disableOptGroup("fbGameA",9);
      table.column(11).search(regExA, true, false).draw();
      fbOptSelectedA.push(9);
    }
    else{
      situationToggleElse(9,11,fbOptSelectedA);
      if (!fbOptSelectedA.includes(9)){
        enableOptGroup("fbGameA",9);
      }
    }

    // Combinations
    if(regExA.includes('/')){
      disableOptGroup("fbGameA",10);
      disableOptGroup("fbGameA",11);
      disableOptGroup("fbGameA",12);
      disableOptGroup("fbGameA",13);
      disableOptGroup("fbGameA",14);
      table.column(4).search(regExA, true, false).draw();
      fbOptSelectedA.push(10);
    }
    else{
      situationToggleElse(10,4,fbOptSelectedA);
      if (!fbOptSelectedA.includes(10)){
        enableOptGroup("fbGameA",10);
        enableOptGroup("fbGameA",11);
        enableOptGroup("fbGameA",12);
        enableOptGroup("fbGameA",13);
        enableOptGroup("fbGameA",14);
      }
    }
  });
});

$(function() {
  $('#fbUniformAClear').click(function() {
    $("#fbUniformA").val('').trigger('change');
  });
});
//-----------

//-----------
// Siutation B Select
var fbOptSelectedB = [];

$(document).ready(function(){
  $("#fbGameA").on("change", function() {

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
      disableOptGroup("fbUniformA",0);
      table.column(4).search(regExB, true, false).draw();
      fbOptSelectedB.push(0);
    }
    else{
      situationToggleElse(0,4,fbOptSelectedB);
      if (!fbOptSelectedB.includes(0)){
        enableOptGroup("fbUniformA",0);
      }
    }

    // Bowls
    if(regExB.includes('Bowl Games')){
      disableOptGroup("fbUniformA",1);
      disableOptGroup("fbUniformA",6);
      table.column(3).search(regExB, true, false).draw();
      fbOptSelectedB.push(1);
    }
    else{
      situationToggleElse(1,3,fbOptSelectedB);
      if (!fbOptSelectedB.includes(6) && !fbOptSelectedA.includes(1)){
        enableOptGroup("fbUniformA",1);
      }
      if (!fbOptSelectedB.includes(6) && !fbOptSelectedA.includes(1)){
        enableOptGroup("fbUniformA",6);
      }
    }

    // Helmets
    if(regExB.includes('Helmets|')){
      disableOptGroup("fbUniformA",2);
      table.column(5).search(regExB, true, false).draw();
      fbOptSelectedB.push(2);
    }
    else{
      situationToggleElse(2,5,fbOptSelectedB);
      if (!fbOptSelectedB.includes(2)){
        enableOptGroup("fbUniformA",2);
      }
    }

    // Jerseys
    if(regExB.includes('Jerseys')){
      disableOptGroup("fbUniformA",3);
      table.column(6).search(regExB, true, false).draw();
      fbOptSelectedB.push(3);
    }
    else{
      situationToggleElse(3,6,fbOptSelectedB);
      if (!fbOptSelectedB.includes(3)){
        enableOptGroup("fbUniformA",3);
      }
    }

    // Pants
    if(regExB.includes('Pants')){
      disableOptGroup("fbUniformA",4);
      table.column(7).search(regExB, true, false).draw();
      fbOptSelectedB.push(4);
    }
    else{
      situationToggleElse(4,7,fbOptSelectedB);
      if (!fbOptSelectedB.includes(4)){
        enableOptGroup("fbUniformA",4);
      }
    }

    // Patches
    if(regExB.includes('dws 100')||regExB.includes('Nick Bell')){
      disableOptGroup("fbUniformA",5);
      table.column(4).search(regExB, true, false).draw();
      fbOptSelectedB.push(5);
    }
    else{
      situationToggleElse(5,4,fbOptSelectedB);
      if (!fbOptSelectedB.includes(5)){
        enableOptGroup("fbUniformA",5);
      }
    }

    // Regular Season
    if(regExB.includes('Home')||
        regExB.includes('Road')||
        regExB.includes('Neutral')){
      disableOptGroup("fbUniformA",1);
      disableOptGroup("fbUniformA",6);
      table.column(3).search(regExB, true, false).draw();
      fbOptSelectedB.push(6);
    }
    else{
      situationToggleElse(6,3,fbOptSelectedB);
      if (!fbOptSelectedB.includes(6) && !fbOptSelectedA.includes(1)){
        enableOptGroup("fbUniformA",1);
      }
      if (!fbOptSelectedB.includes(6) && !fbOptSelectedA.includes(1)){
        enableOptGroup("fbUniformA",6);
      }
    }

    // Months
    if(regExB.includes('|-08-')||
        regExB.includes('|-09-')||
        regExB.includes('|-10-')||
        regExB.includes('|-11-')||
        regExB.includes('|-12-')||
        regExB.includes('|-01-')){
      disableOptGroup("fbUniformA",7);
      table.column(1).search(regExB, true, false).draw();
      fbOptSelectedB.push(7);
    }
    else{
      situationToggleElse(7,1,fbOptSelectedB);
      if (!fbOptSelectedB.includes(7)){
        enableOptGroup("fbUniformA",7);
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
      disableOptGroup("fbUniformA",8);
      table.column(8).search(regExB, true, false).draw();
      fbOptSelectedB.push(8);
    }
    else{
      situationToggleElse(8,8,fbOptSelectedB);
      if (!fbOptSelectedB.includes(8)){
        enableOptGroup("fbUniformA",8);
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
      disableOptGroup("fbUniformA",9);
      table.column(11).search(regExB, true, false).draw();
      fbOptSelectedB.push(9);
    }
    else{
      situationToggleElse(9,11,fbOptSelectedB);
      if (!fbOptSelectedB.includes(9)){
        enableOptGroup("fbUniformA",9);
      }
    }

    // Combinations
    if(regExB.includes('/')){
      disableOptGroup("fbUniformA",10);
      disableOptGroup("fbUniformA",11);
      disableOptGroup("fbUniformA",12);
      disableOptGroup("fbUniformA",13);
      disableOptGroup("fbUniformA",14);
      table.column(4).search(regExB, true, false).draw();
      fbOptSelectedB.push(10);
    }
    else{
      situationToggleElse(10,4,fbOptSelectedB);
      if (!fbOptSelectedB.includes(10)){
        enableOptGroup("fbUniformA",10);
        enableOptGroup("fbUniformA",11);
        enableOptGroup("fbUniformA",12);
        enableOptGroup("fbUniformA",13);
        enableOptGroup("fbUniformA",14);
      }
    }
  });
});

$(function() {
  $('#fbGameAClear').click(function() {
    $("#fbGameA").val('').trigger('change');
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
  for (var z=0; z < table.rows().count(); z++){
    if (table.row(z, {search:'applied'})[0].length > 0){
      if (table.cell(z,8).data().toString().includes('Win')){
        wins += 1;
      }
      if (table.cell(z,8).data().toString().includes('Loss')){
        losses += 1;
      }
      if (table.cell(z,8).data().toString().includes('TIE')){
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
  table.on( 'search', function () {
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
    table.columns(columnNumber).search('').draw();
    for (var z=0;z<optSelect.length;z++){
      if(optSelect[z] == targetNumber){
        optSelect.splice(z,1);
      }
    }
  }
}
//-----------