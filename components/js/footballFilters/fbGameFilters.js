import * as tbl from '../fbBuildTable.js';
import * as sit from '../uniformGameFunctions.js';
import * as grp from './fbGameFiltersApp.js';
import * as wlt from '../tableFunctions.js';

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
    else if (this.value == 'January'){
      searchTerm = searchTerm.concat('|-01-');
    }

    // Game Type
    fbgOptSelectedA = sit.searchTable(group,tbl.table,searchTerm,fbgOptSelectedA,0,3);

    // Months
    fbgOptSelectedA = sit.searchTable(group,tbl.table,searchTerm,fbgOptSelectedA,1,1);

    // Days
    fbgOptSelectedA = sit.searchTable(group,tbl.table,searchTerm,fbgOptSelectedA,2,8);

    // Homecoming
    fbgOptSelectedA = sit.searchTable(group,tbl.table,searchTerm,fbgOptSelectedA,3,8);

    // Head Coaches
    fbgOptSelectedA = sit.searchTable(group,tbl.table,searchTerm,fbgOptSelectedA,4,11);
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
    else if (this.value == 'January'){
      searchTerm = searchTerm.concat('|-01-');
    }

    // Game Type
    fbgOptSelectedB = sit.searchTable(group,tbl.table,searchTerm,fbgOptSelectedB,0,3);

    // Months
    fbgOptSelectedB = sit.searchTable(group,tbl.table,searchTerm,fbgOptSelectedB,1,1);

    // Days
    fbgOptSelectedB = sit.searchTable(group,tbl.table,searchTerm,fbgOptSelectedB,2,8);

    // Homecoming
    fbgOptSelectedB = sit.searchTable(group,tbl.table,searchTerm,fbgOptSelectedB,3,8);

    // Head Coaches
    fbgOptSelectedB = sit.searchTable(group,tbl.table,searchTerm,fbgOptSelectedB,4,11);
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
    else if (this.value == 'January'){
      searchTerm = searchTerm.concat('|-01-');
    }

    // Game Type
    fbgOptSelectedC = sit.searchTable(group,tbl.table,searchTerm,fbgOptSelectedC,0,3);

    // Months
    fbgOptSelectedC = sit.searchTable(group,tbl.table,searchTerm,fbgOptSelectedC,1,1);

    // Days
    fbgOptSelectedC = sit.searchTable(group,tbl.table,searchTerm,fbgOptSelectedC,2,8);

    // Homecoming
    fbgOptSelectedC = sit.searchTable(group,tbl.table,searchTerm,fbgOptSelectedC,3,8);

    // Head Coaches
    fbgOptSelectedC = sit.searchTable(group,tbl.table,searchTerm,fbgOptSelectedC,4,11);
  });
});
//-----------

//-----------
// Auto Load URL Parameters
$(document).ready(function(){
  wlt.urlTrigger('gameA','#fbGameA');
  wlt.urlTrigger('gameB','#fbGameB');
  wlt.urlTrigger('gameC','#fbGameC');
});
//-----------
