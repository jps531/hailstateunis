import * as tbl from '../fbBuildTable.js';
import * as sit from '../situationFunctions.js';

//-----------
// Game A Select
var fbgOptSelectedA = [];

$(document).ready(function(){
  $("#fbGameA").on("change", function() {

    // Obtain raw search term
    var searchTerm = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );
    
    // Add month names to search term
    if (this.value == 'August'){
      searchTerm = searchTerm.concat('|-08-');
    }

    else if (this.value == 'September'){
      searchTerm = searchTerm.concat('|-09-');
    }

    else if (this.value == 'October'){
      searchTerm = searchTerm.concat('|-10-');
    }

    else if (this.value == 'November'){
      searchTerm = searchTerm.concat('|-11-');
    }

    else if (this.value == 'December'){
      searchTerm = searchTerm.concat('|-12-');
    }

    else if (this.value == 'January'){
      searchTerm = searchTerm.concat('|-01-');
    }

    // Game Type
    if(searchTerm.includes('Bowl Games')||
        searchTerm.includes('Home')||
        searchTerm.includes('Road')||
        searchTerm.includes('Neutral')){
      tbl.table.column(3).search(searchTerm, true, false).draw();
      fbgOptSelectedA.push(0);
    }
    else{
      sit.situationToggleElse(0,3,fbgOptSelectedA,tbl.table);
    }

    // Months
    if(searchTerm.includes('|-08-')||
        searchTerm.includes('|-09-')||
        searchTerm.includes('|-10-')||
        searchTerm.includes('|-11-')||
        searchTerm.includes('|-12-')||
        searchTerm.includes('|-01-')){
      tbl.table.column(1).search(searchTerm, true, false).draw();
      fbgOptSelectedA.push(1);
    }
    else{
      sit.situationToggleElse(1,1,fbgOptSelectedA,tbl.table);
    }

    // Days
    if(searchTerm.includes('Mond')||
        searchTerm.includes('Tues')||
        searchTerm.includes('Wedn')||
        searchTerm.includes('Thur')||
        searchTerm.includes('Frid')||
        searchTerm.includes('Satu')||
        searchTerm.includes('Sund')){
      tbl.table.column(8).search(searchTerm, true, false).draw();
      fbgOptSelectedA.push(2);
    }
    else{
      sit.situationToggleElse(2,8,fbgOptSelectedA,tbl.table);
    }

    // Head Coaches
    if(searchTerm.includes('Mike')||
        searchTerm.includes('Joe')||
        searchTerm.includes('Greg')||
        searchTerm.includes('Dan')||
        searchTerm.includes('Syl')||
        searchTerm.includes('Jackie')||
        searchTerm.includes('Rockey')||
        searchTerm.includes('Emory')||
        searchTerm.includes('Bob')||
        searchTerm.includes('Paul')||
        searchTerm.includes('Allyn')||
        searchTerm.includes('Ralph')){
      tbl.table.column(11).search(searchTerm, true, false).draw();
      fbgOptSelectedA.push(3);
    }
    else{
      sit.situationToggleElse(3,11,fbgOptSelectedA,tbl.table);
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
// Game B Select
var fbgOptSelectedB = [];

$(document).ready(function(){
  $("#fbGameB").on("change", function() {

    // Obtain raw search term
    var searchTerm = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );
    
    // Add month names to search term
    if (this.value == 'August'){
      searchTerm = searchTerm.concat('|-08-');
    }

    else if (this.value == 'September'){
      searchTerm = searchTerm.concat('|-09-');
    }

    else if (this.value == 'October'){
      searchTerm = searchTerm.concat('|-10-');
    }

    else if (this.value == 'November'){
      searchTerm = searchTerm.concat('|-11-');
    }

    else if (this.value == 'December'){
      searchTerm = searchTerm.concat('|-12-');
    }

    else if (this.value == 'January'){
      searchTerm = searchTerm.concat('|-01-');
    }

    // Game Type
    if(searchTerm.includes('Bowl Games')||
        searchTerm.includes('Home')||
        searchTerm.includes('Road')||
        searchTerm.includes('Neutral')){
      tbl.table.column(3).search(searchTerm, true, false).draw();
      fbgOptSelectedB.push(0);
    }
    else{
      sit.situationToggleElse(0,3,fbgOptSelectedB,tbl.table);
    }

    // Months
    if(searchTerm.includes('|-08-')||
        searchTerm.includes('|-09-')||
        searchTerm.includes('|-10-')||
        searchTerm.includes('|-11-')||
        searchTerm.includes('|-12-')||
        searchTerm.includes('|-01-')){
      tbl.table.column(1).search(searchTerm, true, false).draw();
      fbgOptSelectedB.push(1);
    }
    else{
      sit.situationToggleElse(1,1,fbgOptSelectedB,tbl.table);
    }

    // Days
    if(searchTerm.includes('Mond')||
        searchTerm.includes('Tues')||
        searchTerm.includes('Wedn')||
        searchTerm.includes('Thur')||
        searchTerm.includes('Frid')||
        searchTerm.includes('Satu')||
        searchTerm.includes('Sund')){
      tbl.table.column(8).search(searchTerm, true, false).draw();
      fbgOptSelectedB.push(2);
    }
    else{
      sit.situationToggleElse(2,8,fbgOptSelectedB,tbl.table);
    }

    // Head Coaches
    if(searchTerm.includes('Mike')||
        searchTerm.includes('Joe')||
        searchTerm.includes('Greg')||
        searchTerm.includes('Dan')||
        searchTerm.includes('Syl')||
        searchTerm.includes('Jackie')||
        searchTerm.includes('Rockey')||
        searchTerm.includes('Emory')||
        searchTerm.includes('Bob')||
        searchTerm.includes('Paul')||
        searchTerm.includes('Allyn')||
        searchTerm.includes('Ralph')){
      tbl.table.column(11).search(searchTerm, true, false).draw();
      fbgOptSelectedB.push(3);
    }
    else{
      sit.situationToggleElse(3,11,fbgOptSelectedB,tbl.table);
    }
  });
});

$(function() {
  $('#fbGameBClear').click(function() {
    $("#fbGameB").val('').trigger('change');
  });
});
//-----------

//-----------
// Game C Select
var fbgOptSelectedC = [];

$(document).ready(function(){
  $("#fbGameC").on("change", function() {

    // Obtain raw search term
    var searchTerm = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );
    
    // Add month names to search term
    if (this.value == 'August'){
      searchTerm = searchTerm.concat('|-08-');
    }

    else if (this.value == 'September'){
      searchTerm = searchTerm.concat('|-09-');
    }

    else if (this.value == 'October'){
      searchTerm = searchTerm.concat('|-10-');
    }

    else if (this.value == 'November'){
      searchTerm = searchTerm.concat('|-11-');
    }

    else if (this.value == 'December'){
      searchTerm = searchTerm.concat('|-12-');
    }

    else if (this.value == 'January'){
      searchTerm = searchTerm.concat('|-01-');
    }

    // Game Type
    if(searchTerm.includes('Bowl Games')||
        searchTerm.includes('Home')||
        searchTerm.includes('Road')||
        searchTerm.includes('Neutral')){
      tbl.table.column(3).search(searchTerm, true, false).draw();
      fbgOptSelectedC.push(0);
    }
    else{
      sit.situationToggleElse(0,3,fbgOptSelectedC,tbl.table);
    }

    // Months
    if(searchTerm.includes('|-08-')||
        searchTerm.includes('|-09-')||
        searchTerm.includes('|-10-')||
        searchTerm.includes('|-11-')||
        searchTerm.includes('|-12-')||
        searchTerm.includes('|-01-')){
      tbl.table.column(1).search(searchTerm, true, false).draw();
      fbgOptSelectedC.push(1);
    }
    else{
      sit.situationToggleElse(1,1,fbgOptSelectedC,tbl.table);
    }

    // Days
    if(searchTerm.includes('Mond')||
        searchTerm.includes('Tues')||
        searchTerm.includes('Wedn')||
        searchTerm.includes('Thur')||
        searchTerm.includes('Frid')||
        searchTerm.includes('Satu')||
        searchTerm.includes('Sund')){
      tbl.table.column(8).search(searchTerm, true, false).draw();
      fbgOptSelectedC.push(2);
    }
    else{
      sit.situationToggleElse(2,8,fbgOptSelectedC,tbl.table);
    }

    // Head Coaches
    if(searchTerm.includes('Mike')||
        searchTerm.includes('Joe')||
        searchTerm.includes('Greg')||
        searchTerm.includes('Dan')||
        searchTerm.includes('Syl')||
        searchTerm.includes('Jackie')||
        searchTerm.includes('Rockey')||
        searchTerm.includes('Emory')||
        searchTerm.includes('Bob')||
        searchTerm.includes('Paul')||
        searchTerm.includes('Allyn')||
        searchTerm.includes('Ralph')){
      tbl.table.column(11).search(searchTerm, true, false).draw();
      fbgOptSelectedC.push(3);
    }
    else{
      sit.situationToggleElse(3,11,fbgOptSelectedC,tbl.table);
    }
  });
});

$(function() {
  $('#fbGameCClear').click(function() {
    $("#fbGameC").val('').trigger('change');
  });
});
//-----------