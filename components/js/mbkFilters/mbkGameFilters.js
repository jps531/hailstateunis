import * as tbl from '../mbkBuildTable.js';
import * as sit from '../situationFunctions.js';

//-----------
// Game A Select
var mbkgOptSelectedA = [];

$(document).ready(function(){
  $("#mbkGameA").on("change", function() {
    var searchTerm = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );

    if (searchTerm.includes('November')){
      searchTerm = searchTerm.concat("|-11-");
    }

    if (searchTerm.includes('December')){
      searchTerm = searchTerm.concat("|-12-");
    }

    if (searchTerm.includes('January')){
      searchTerm = searchTerm.concat("|-01-");
    }

    if (searchTerm.includes('February')){
      searchTerm = searchTerm.concat("|-02-");
    }

    if (searchTerm.includes('March')){
      searchTerm = searchTerm.concat("|-03-");
    }

    if (this.value == "SEC Tournament"){
      searchTerm = searchTerm.concat("|secT");
    }

    if (this.value == "NCAA Tournament"){
      searchTerm = searchTerm.concat("|ncaa");
    }
    
    // Months
    if(searchTerm.includes('|-11-')||
        searchTerm.includes('|-12-')||
        searchTerm.includes('|-01-')||
        searchTerm.includes('|-02-')||
        searchTerm.includes('|-03-')){
      tbl.mbkTable.column(1).search(searchTerm, true, false).draw();
      mbkgOptSelectedA.push(0);
    }
    else{
      sit.situationToggleElse(0,1,mbkgOptSelectedA,tbl.mbkTable);
    }

    // Days
    if(searchTerm.includes('Mond')||
        searchTerm.includes('Tues')||
        searchTerm.includes('Wedn')||
        searchTerm.includes('Thur')||
        searchTerm.includes('Frid')||
        searchTerm.includes('Satu')||
        searchTerm.includes('Sund')){
      tbl.mbkTable.column(2).search(searchTerm, true, false).draw();
      mbkgOptSelectedA.push(1);
    }
    else{
      sit.situationToggleElse(1,2,mbkgOptSelectedA,tbl.mbkTable);
    }

    // Head Coaches
    if(searchTerm.includes('Ben')||
        searchTerm.includes('Rick')||
        searchTerm.includes('Rich')||
        searchTerm.includes('Jim')||
        searchTerm.includes('Babe')){
      tbl.mbkTable.column(5).search(searchTerm, true, false).draw();
      mbkgOptSelectedA.push(2);
    }
    else{
      sit.situationToggleElse(2,5,mbkgOptSelectedA,tbl.mbkTable);
    }
    // Regular Season and Tournaments
    if(searchTerm.includes('Home')||
        searchTerm.includes('Road')||
        searchTerm.includes('Neutral')||
        searchTerm.includes('SEC')||
        searchTerm.includes('NCAA')||
        searchTerm.includes('NIT')||
        searchTerm.includes('Round')||
        searchTerm.includes('Sweet')||
        searchTerm.includes('Elite')||
        searchTerm.includes('Final')||
        searchTerm.includes('Reg')){
    console.log(searchTerm);
      tbl.mbkTable.column(3).search(searchTerm).draw();
      mbkgOptSelectedA.push(3);
    }
    else{
      sit.situationToggleElse(3,3,mbkgOptSelectedA,tbl.mbkTable);
    }
  });
});

$(function() {
  $('#mbkGameAClear').click(function() {
    $("#mbkGameA").val('').trigger('change');
  });
});
//-----------

//-----------
// Game B Select
var mbkgOptSelectedB = [];

$(document).ready(function(){
  $("#mbkGameB").on("change", function() {
    var searchTerm = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );

    if (searchTerm.includes('November')){
      searchTerm = searchTerm.concat("|-11-");
    }

    if (searchTerm.includes('December')){
      searchTerm = searchTerm.concat("|-12-");
    }

    if (searchTerm.includes('January')){
      searchTerm = searchTerm.concat("|-01-");
    }

    if (searchTerm.includes('February')){
      searchTerm = searchTerm.concat("|-02-");
    }

    if (searchTerm.includes('March')){
      searchTerm = searchTerm.concat("|-03-");
    }

    if (this.value == "SEC Tournament"){
      searchTerm = searchTerm.concat("|secT");
    }

    if (this.value == "NCAA Tournament"){
      searchTerm = searchTerm.concat("|ncaa");
    }
    
    // Months
    if(searchTerm.includes('|-11-')||
        searchTerm.includes('|-12-')||
        searchTerm.includes('|-01-')||
        searchTerm.includes('|-02-')||
        searchTerm.includes('|-03-')){
      tbl.mbkTable.column(1).search(searchTerm, true, false).draw();
      mbkgOptSelectedB.push(0);
    }
    else{
      sit.situationToggleElse(0,1,mbkgOptSelectedB,tbl.mbkTable);
    }

    // Days
    if(searchTerm.includes('Mond')||
        searchTerm.includes('Tues')||
        searchTerm.includes('Wedn')||
        searchTerm.includes('Thur')||
        searchTerm.includes('Frid')||
        searchTerm.includes('Satu')||
        searchTerm.includes('Sund')){
      tbl.mbkTable.column(2).search(searchTerm, true, false).draw();
      mbkgOptSelectedB.push(1);
    }
    else{
      sit.situationToggleElse(1,2,mbkgOptSelectedB,tbl.mbkTable);
    }

    // Head Coaches
    if(searchTerm.includes('Ben')||
        searchTerm.includes('Rick')||
        searchTerm.includes('Rich')||
        searchTerm.includes('Jim')||
        searchTerm.includes('Babe')){
      tbl.mbkTable.column(5).search(searchTerm, true, false).draw();
      mbkgOptSelectedB.push(2);
    }
    else{
      sit.situationToggleElse(2,5,mbkgOptSelectedB,tbl.mbkTable);
    }
    // Regular Season and Tournaments
    if(searchTerm.includes('Home')||
        searchTerm.includes('Road')||
        searchTerm.includes('Neutral')||
        searchTerm.includes('SEC')||
        searchTerm.includes('NCAA')||
        searchTerm.includes('NIT')||
        searchTerm.includes('Round')||
        searchTerm.includes('Sweet')||
        searchTerm.includes('Elite')||
        searchTerm.includes('Final')||
        searchTerm.includes('Reg')){
      tbl.mbkTable.column(3).search(searchTerm, true, false).draw();
      mbkgOptSelectedB.push(3);
    }
    else{
      sit.situationToggleElse(3,3,mbkgOptSelectedB,tbl.mbkTable);
    }
  });
});

$(function() {
  $('#mbkGameBClear').click(function() {
    $("#mbkGameB").val('').trigger('change');
  });
});
//-----------

//-----------
// Game C Select
var mbkgOptSelectedC = [];

$(document).ready(function(){
  $("#mbkGameC").on("change", function() {
    var searchTerm = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );

    if (searchTerm.includes('November')){
      searchTerm = searchTerm.concat("|-11-");
    }

    if (searchTerm.includes('December')){
      searchTerm = searchTerm.concat("|-12-");
    }

    if (searchTerm.includes('January')){
      searchTerm = searchTerm.concat("|-01-");
    }

    if (searchTerm.includes('February')){
      searchTerm = searchTerm.concat("|-02-");
    }

    if (searchTerm.includes('March')){
      searchTerm = searchTerm.concat("|-03-");
    }

    if (this.value == "SEC Tournament"){
      searchTerm = searchTerm.concat("|secT");
    }

    if (this.value == "NCAA Tournament"){
      searchTerm = searchTerm.concat("|ncaa");
    }
    
    // Months
    if(searchTerm.includes('|-11-')||
        searchTerm.includes('|-12-')||
        searchTerm.includes('|-01-')||
        searchTerm.includes('|-02-')||
        searchTerm.includes('|-03-')){
      tbl.mbkTable.column(1).search(searchTerm, true, false).draw();
      mbkgOptSelectedC.push(0);
    }
    else{
      sit.situationToggleElse(0,1,mbkgOptSelectedC,tbl.mbkTable);
    }

    // Days
    if(searchTerm.includes('Mond')||
        searchTerm.includes('Tues')||
        searchTerm.includes('Wedn')||
        searchTerm.includes('Thur')||
        searchTerm.includes('Frid')||
        searchTerm.includes('Satu')||
        searchTerm.includes('Sund')){
      tbl.mbkTable.column(2).search(searchTerm, true, false).draw();
      mbkgOptSelectedC.push(1);
    }
    else{
      sit.situationToggleElse(1,2,mbkgOptSelectedC,tbl.mbkTable);
    }

    // Head Coaches
    if(searchTerm.includes('Ben')||
        searchTerm.includes('Rick')||
        searchTerm.includes('Rich')||
        searchTerm.includes('Jim')||
        searchTerm.includes('Babe')){
      tbl.mbkTable.column(5).search(searchTerm, true, false).draw();
      mbkgOptSelectedC.push(2);
    }
    else{
      sit.situationToggleElse(2,5,mbkgOptSelectedC,tbl.mbkTable);
    }
    // Regular Season and Tournaments
    if(searchTerm.includes('Home')||
        searchTerm.includes('Road')||
        searchTerm.includes('Neutral')||
        searchTerm.includes('SEC')||
        searchTerm.includes('NCAA')||
        searchTerm.includes('NIT')||
        searchTerm.includes('Round')||
        searchTerm.includes('Sweet')||
        searchTerm.includes('Elite')||
        searchTerm.includes('Final')||
        searchTerm.includes('Reg')){
      tbl.mbkTable.column(3).search(searchTerm, true, false).draw();
      mbkgOptSelectedC.push(3);
    }
    else{
      sit.situationToggleElse(3,3,mbkgOptSelectedC,tbl.mbkTable);
    }
  });
});

$(function() {
  $('#mbkGameCClear').click(function() {
    $("#mbkGameC").val('').trigger('change');
  });
});
//-----------