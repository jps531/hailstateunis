import * as tbl from '../rhsBuildTable.js';
import * as sit from '../uniformGameFunctions.js';
import * as grp from './rhsGameFiltersApp.js';
import * as wlt from '../tableFunctions.js';

//-----------
// Game A Select
var rhsgOptSelectedA = [];

$(document).ready(function(){
  $("#rhsGameA").on("change", function() {

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
    else if(jQuery.inArray(this.value, grp.homecoming) !== -1){
      group = 3;
    }
    else if(jQuery.inArray(this.value, grp.headCoaches) !== -1){
      group = 4;
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
    rhsgOptSelectedA = sit.searchTable(group,tbl.raleighTable,searchTerm,rhsgOptSelectedA,0,3);

    // Months
    rhsgOptSelectedA = sit.searchTable(group,tbl.raleighTable,searchTerm,rhsgOptSelectedA,1,1);

    // Days
    rhsgOptSelectedA = sit.searchTable(group,tbl.raleighTable,searchTerm,rhsgOptSelectedA,2,8);

    // Homecoming
    rhsgOptSelectedA = sit.searchTable(group,tbl.raleighTable,searchTerm,rhsgOptSelectedA,3,8);

    // Head Coaches
    rhsgOptSelectedA = sit.searchTable(group,tbl.raleighTable,searchTerm,rhsgOptSelectedA,4,11);
  });
});
//-----------

//-----------
// Game B Select
var rhsgOptSelectedB = [];

$(document).ready(function(){
  $("#rhsGameB").on("change", function() {

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
    else if(jQuery.inArray(this.value, grp.homecoming) !== -1){
      group = 3;
    }
    else if(jQuery.inArray(this.value, grp.headCoaches) !== -1){
      group = 4;
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
    rhsgOptSelectedB = sit.searchTable(group,tbl.raleighTable,searchTerm,rhsgOptSelectedB,0,3);

    // Months
    rhsgOptSelectedB = sit.searchTable(group,tbl.raleighTable,searchTerm,rhsgOptSelectedB,1,1);

    // Days
    rhsgOptSelectedB = sit.searchTable(group,tbl.raleighTable,searchTerm,rhsgOptSelectedB,2,8);

    // Homecoming
    rhsgOptSelectedB = sit.searchTable(group,tbl.raleighTable,searchTerm,rhsgOptSelectedB,3,8);

    // Head Coaches
    rhsgOptSelectedB = sit.searchTable(group,tbl.raleighTable,searchTerm,rhsgOptSelectedB,4,11);
  });
});
//-----------

//-----------
// Game C Select
var rhsgOptSelectedC = [];

$(document).ready(function(){
  $("#rhsGameC").on("change", function() {

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
    else if(jQuery.inArray(this.value, grp.homecoming) !== -1){
      group = 3;
    }
    else if(jQuery.inArray(this.value, grp.headCoaches) !== -1){
      group = 4;
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
    rhsgOptSelectedC = sit.searchTable(group,tbl.raleighTable,searchTerm,rhsgOptSelectedC,0,3);

    // Months
    rhsgOptSelectedC = sit.searchTable(group,tbl.raleighTable,searchTerm,rhsgOptSelectedC,1,1);

    // Days
    rhsgOptSelectedC = sit.searchTable(group,tbl.raleighTable,searchTerm,rhsgOptSelectedC,2,8);

    // Homecoming
    rhsgOptSelectedC = sit.searchTable(group,tbl.raleighTable,searchTerm,rhsgOptSelectedC,3,8);

    // Head Coaches
    rhsgOptSelectedC = sit.searchTable(group,tbl.raleighTable,searchTerm,rhsgOptSelectedC,4,11);
  });
});
//-----------

//-----------
// Auto Load URL Parameters
$(document).ready(function(){
  wlt.urlTrigger('gameA','#rhsGameA');
  wlt.urlTrigger('gameB','#rhsGameB');
  wlt.urlTrigger('gameC','#rhsGameC');
});
//-----------
