import * as tbl from '../wbkBuildTable.js';
import * as sit from '../situationFunctions.js';

//-----------
// Game A Select
var wbkgOptSelectedA = [];

$(document).ready(function(){
  $("#wbkGameA").on("change", function() {
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

    if (searchTerm.includes('April')){
        searchTerm = searchTerm.concat("|-04-");
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
        searchTerm.includes('|-03-')||
        searchTerm.includes('|-04-')){
      tbl.wbkTable.column(1).search(searchTerm, true, false).draw();
      wbkgOptSelectedA.push(0);
    }
    else{
      sit.situationToggleElse(0,1,wbkgOptSelectedA,tbl.wbkTable);
    }

    // Days
    if(searchTerm.includes('Mond')||
        searchTerm.includes('Tues')||
        searchTerm.includes('Wedn')||
        searchTerm.includes('Thur')||
        searchTerm.includes('Frid')||
        searchTerm.includes('Satu')||
        searchTerm.includes('Sund')){
      tbl.wbkTable.column(2).search(searchTerm, true, false).draw();
      wbkgOptSelectedA.push(1);
    }
    else{
      sit.situationToggleElse(1,2,wbkgOptSelectedA,tbl.wbkTable);
    }

    // Head Coaches
    if(searchTerm.includes('Nikki')||
        searchTerm.includes('Vic')||
        searchTerm.includes('Sharon')){
      tbl.wbkTable.column(5).search(searchTerm, true, false).draw();
      wbkgOptSelectedA.push(2);
    }
    else{
      sit.situationToggleElse(2,5,wbkgOptSelectedA,tbl.wbkTable);
    }
    // Regular Season and Tournaments
    if(searchTerm.includes('Home')||
        searchTerm.includes('Road')||
        searchTerm.includes('Neutral')||
        searchTerm.includes('SEC')||
        searchTerm.includes('NCAA')||
        searchTerm.includes('WNIT')||
        searchTerm.includes('Round')||
        searchTerm.includes('Sweet')||
        searchTerm.includes('Elite')||
        searchTerm.includes('Final')||
        searchTerm.includes('National')){
      tbl.wbkTable.column(3).search(searchTerm).draw();
      wbkgOptSelectedA.push(3);
    }
    else{
      sit.situationToggleElse(3,3,wbkgOptSelectedA,tbl.wbkTable);
    }
  });
});

$(function() {
  $('#wbkGameAClear').click(function() {
    $("#wbkGameA").val('').trigger('change');
  });
});
//-----------

//-----------
// Game B Select
var wbkgOptSelectedB = [];

$(document).ready(function(){
  $("#wbkGameB").on("change", function() {
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

    if (searchTerm.includes('April')){
        searchTerm = searchTerm.concat("|-04-");
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
        searchTerm.includes('|-03-')||
        searchTerm.includes('|-04-')){
      tbl.wbkTable.column(1).search(searchTerm, true, false).draw();
      wbkgOptSelectedB.push(0);
    }
    else{
      sit.situationToggleElse(0,1,wbkgOptSelectedB,tbl.wbkTable);
    }

    // Days
    if(searchTerm.includes('Mond')||
        searchTerm.includes('Tues')||
        searchTerm.includes('Wedn')||
        searchTerm.includes('Thur')||
        searchTerm.includes('Frid')||
        searchTerm.includes('Satu')||
        searchTerm.includes('Sund')){
      tbl.wbkTable.column(2).search(searchTerm, true, false).draw();
      wbkgOptSelectedB.push(1);
    }
    else{
      sit.situationToggleElse(1,2,wbkgOptSelectedB,tbl.wbkTable);
    }

    // Head Coaches
    if(searchTerm.includes('Nikki')||
        searchTerm.includes('Vic')||
        searchTerm.includes('Sharon')){
      tbl.wbkTable.column(5).search(searchTerm, true, false).draw();
      wbkgOptSelectedB.push(2);
    }
    else{
      sit.situationToggleElse(2,5,wbkgOptSelectedB,tbl.wbkTable);
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
        searchTerm.includes('National')){
      tbl.wbkTable.column(3).search(searchTerm, true, false).draw();
      wbkgOptSelectedB.push(3);
    }
    else{
      sit.situationToggleElse(3,3,wbkgOptSelectedB,tbl.wbkTable);
    }
  });
});

$(function() {
  $('#wbkGameBClear').click(function() {
    $("#wbkGameB").val('').trigger('change');
  });
});
//-----------

//-----------
// Game C Select
var wbkgOptSelectedC = [];

$(document).ready(function(){
  $("#wbkGameC").on("change", function() {
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

    if (searchTerm.includes('April')){
        searchTerm = searchTerm.concat("|-04-");
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
        searchTerm.includes('|-03-')||
        searchTerm.includes('|-04-')){
      tbl.wbkTable.column(1).search(searchTerm, true, false).draw();
      wbkgOptSelectedC.push(0);
    }
    else{
      sit.situationToggleElse(0,1,wbkgOptSelectedC,tbl.wbkTable);
    }

    // Days
    if(searchTerm.includes('Mond')||
        searchTerm.includes('Tues')||
        searchTerm.includes('Wedn')||
        searchTerm.includes('Thur')||
        searchTerm.includes('Frid')||
        searchTerm.includes('Satu')||
        searchTerm.includes('Sund')){
      tbl.wbkTable.column(2).search(searchTerm, true, false).draw();
      wbkgOptSelectedC.push(1);
    }
    else{
      sit.situationToggleElse(1,2,wbkgOptSelectedC,tbl.wbkTable);
    }

    // Head Coaches
    if(searchTerm.includes('Nikki')||
        searchTerm.includes('Vic')||
        searchTerm.includes('Sharon')){
      tbl.wbkTable.column(5).search(searchTerm, true, false).draw();
      wbkgOptSelectedC.push(2);
    }
    else{
      sit.situationToggleElse(2,5,wbkgOptSelectedC,tbl.wbkTable);
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
        searchTerm.includes('National')){
      tbl.wbkTable.column(3).search(searchTerm, true, false).draw();
      wbkgOptSelectedC.push(3);
    }
    else{
      sit.situationToggleElse(3,3,wbkgOptSelectedC,tbl.wbkTable);
    }
  });
});

$(function() {
  $('#wbkGameCClear').click(function() {
    $("#wbkGameC").val('').trigger('change');
  });
});
//-----------