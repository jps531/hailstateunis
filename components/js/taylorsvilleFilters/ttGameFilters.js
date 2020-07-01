import * as tbl from '../ttBuildTable.js';
import * as sit from '../uniformGameFunctions.js';
import * as grp from './ttGameFiltersApp.js';
import * as wlt from '../tableFunctions.js';

//-----------
// Game A Select
var ttgOptSelectedA = [];

$(document).ready(function(){
  $("#ttGameA").on("change", function() {

    // Obtain raw search term
    var searchTerm = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );

    // Add to URL
    wlt.setURL(searchTerm,'gameA');

    // Identify group
    var group;

    if(jQuery.inArray(this.value, grp.gameType) !== -1){
        group = 0;
    }
    else if(jQuery.inArray(this.value, grp.months) !== -1){
        group = 1;
    }
    else if(jQuery.inArray(this.value, grp.days) !== -1){
        group = 2;
    }
    else if(jQuery.inArray(this.value, grp.headCoaches) !== -1){
        group = 3;
    }
    
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
    else if (this.value == 'All Playoffs'){
      searchTerm = searchTerm.concat('|playoffs');
    }
    else if (this.value == 'First Round'){
      searchTerm = searchTerm.concat('|playoffsFirstRound');
    }
    else if (this.value == 'Second Round'){
      searchTerm = searchTerm.concat('|playoffsSecondRound');
    }
    else if (this.value == 'Third Round'){
      searchTerm = searchTerm.concat('|playoffsThirdRound');
    }
    else if (this.value == 'South State'){
      searchTerm = searchTerm.concat('|playoffsSouthState');
    }
    else if (this.value == 'State Championship'){
      searchTerm = searchTerm.concat('|playoffsStateChampionship');
    }

    // Game Type
    ttgOptSelectedA = sit.searchTable(group,tbl.taylorsvilleTable,searchTerm,ttgOptSelectedA,0,3);

    // Months
    ttgOptSelectedA = sit.searchTable(group,tbl.taylorsvilleTable,searchTerm,ttgOptSelectedA,1,1);

    // Days
    ttgOptSelectedA = sit.searchTable(group,tbl.taylorsvilleTable,searchTerm,ttgOptSelectedA,2,8);

    // Head Coaches
    ttgOptSelectedA = sit.searchTable(group,tbl.taylorsvilleTable,searchTerm,ttgOptSelectedA,3,11);
  });
});
//-----------

//-----------
// Game B Select
var ttgOptSelectedB = [];

$(document).ready(function(){
  $("#ttGameB").on("change", function() {

    // Obtain raw search term
    var searchTerm = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );

    // Add to URL
    wlt.setURL(searchTerm,'gameB');

    // Identify group
    var group;

    if(jQuery.inArray(this.value, grp.gameType) !== -1){
        group = 0;
    }
    else if(jQuery.inArray(this.value, grp.months) !== -1){
        group = 1;
    }
    else if(jQuery.inArray(this.value, grp.days) !== -1){
        group = 2;
    }
    else if(jQuery.inArray(this.value, grp.headCoaches) !== -1){
        group = 3;
    }
    
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
    else if (this.value == 'All Playoffs'){
      searchTerm = searchTerm.concat('|playoffs');
    }
    else if (this.value == 'First Round'){
      searchTerm = searchTerm.concat('|playoffsFirstRound');
    }
    else if (this.value == 'Second Round'){
      searchTerm = searchTerm.concat('|playoffsSecondRound');
    }
    else if (this.value == 'Third Round'){
      searchTerm = searchTerm.concat('|playoffsThirdRound');
    }
    else if (this.value == 'South State'){
      searchTerm = searchTerm.concat('|playoffsSouthState');
    }
    else if (this.value == 'State Championship'){
      searchTerm = searchTerm.concat('|playoffsStateChampionship');
    }

    // Game Type
    ttgOptSelectedB = sit.searchTable(group,tbl.taylorsvilleTable,searchTerm,ttgOptSelectedB,0,3);

    // Months
    ttgOptSelectedB = sit.searchTable(group,tbl.taylorsvilleTable,searchTerm,ttgOptSelectedB,1,1);

    // Days
    ttgOptSelectedB = sit.searchTable(group,tbl.taylorsvilleTable,searchTerm,ttgOptSelectedB,2,8);

    // Head Coaches
    ttgOptSelectedB = sit.searchTable(group,tbl.taylorsvilleTable,searchTerm,ttgOptSelectedB,3,11);
  });
});
//-----------

//-----------
// Game C Select
var ttgOptSelectedC = [];

$(document).ready(function(){
  $("#ttGameC").on("change", function() {

    // Obtain raw search term
    var searchTerm = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );

    // Add to URL
    wlt.setURL(searchTerm,'gameC');

    // Identify group
    var group;

    if(jQuery.inArray(this.value, grp.gameType) !== -1){
        group = 0;
    }
    else if(jQuery.inArray(this.value, grp.months) !== -1){
        group = 1;
    }
    else if(jQuery.inArray(this.value, grp.days) !== -1){
        group = 2;
    }
    else if(jQuery.inArray(this.value, grp.headCoaches) !== -1){
        group = 3;
    }
    
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
    else if (this.value == 'All Playoffs'){
      searchTerm = searchTerm.concat('|playoffs');
    }
    else if (this.value == 'First Round'){
      searchTerm = searchTerm.concat('|playoffsFirstRound');
    }
    else if (this.value == 'Second Round'){
      searchTerm = searchTerm.concat('|playoffsSecondRound');
    }
    else if (this.value == 'Third Round'){
      searchTerm = searchTerm.concat('|playoffsThirdRound');
    }
    else if (this.value == 'South State'){
      searchTerm = searchTerm.concat('|playoffsSouthState');
    }
    else if (this.value == 'State Championship'){
      searchTerm = searchTerm.concat('|playoffsStateChampionship');
    }

    // Game Type
    ttgOptSelectedC = sit.searchTable(group,tbl.taylorsvilleTable,searchTerm,ttgOptSelectedC,0,3);

    // Months
    ttgOptSelectedC = sit.searchTable(group,tbl.taylorsvilleTable,searchTerm,ttgOptSelectedC,1,1);

    // Days
    ttgOptSelectedC = sit.searchTable(group,tbl.taylorsvilleTable,searchTerm,ttgOptSelectedC,2,8);

    // Head Coaches
    ttgOptSelectedC = sit.searchTable(group,tbl.taylorsvilleTable,searchTerm,ttgOptSelectedC,3,11);
  });
});
//-----------

//-----------
// Auto Load URL Parameters
$(document).ready(function(){
  wlt.urlTrigger('gameA','#ttGameA');
  wlt.urlTrigger('gameB','#ttGameB');
  wlt.urlTrigger('gameC','#ttGameC');
});
//-----------