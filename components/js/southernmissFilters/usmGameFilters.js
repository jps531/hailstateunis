import * as tbl from '../usmBuildTable.js';
import * as sit from '../uniformGameFunctions.js';
import * as grp from './usmGameFiltersApp.js';
import * as wlt from '../tableFunctions.js';

//-----------
// Game A Select
var usmgOptSelectedA = [];

$(document).ready(function(){
  $("#usmGameA").on("change", function() {

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
    else if (this.value == 'January'){
      searchTerm = searchTerm.concat('|-01-');
    }
    else if (this.value == 'C-USA Championship'){
      searchTerm = searchTerm.concat('|cusa');
    }

    // Game Type
    usmgOptSelectedA = sit.searchTable(group,tbl.southernmissTable,searchTerm,usmgOptSelectedA,0,3);

    // Months
    usmgOptSelectedA = sit.searchTable(group,tbl.southernmissTable,searchTerm,usmgOptSelectedA,1,1);

    // Days
    usmgOptSelectedA = sit.searchTable(group,tbl.southernmissTable,searchTerm,usmgOptSelectedA,2,8);

    // Head Coaches
    usmgOptSelectedA = sit.searchTable(group,tbl.southernmissTable,searchTerm,usmgOptSelectedA,3,11);
  });
});
//-----------

//-----------
// Game B Select
var usmgOptSelectedB = [];

$(document).ready(function(){
  $("#usmGameB").on("change", function() {

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
    else if (this.value == 'January'){
      searchTerm = searchTerm.concat('|-01-');
    }
    else if (this.value == 'C-USA Championship'){
      searchTerm = searchTerm.concat('|cusa');
    }

    // Game Type
    usmgOptSelectedB = sit.searchTable(group,tbl.southernmissTable,searchTerm,usmgOptSelectedB,0,3);

    // Months
    usmgOptSelectedB = sit.searchTable(group,tbl.southernmissTable,searchTerm,usmgOptSelectedB,1,1);

    // Days
    usmgOptSelectedB = sit.searchTable(group,tbl.southernmissTable,searchTerm,usmgOptSelectedB,2,8);

    // Head Coaches
    usmgOptSelectedB = sit.searchTable(group,tbl.southernmissTable,searchTerm,usmgOptSelectedB,3,11);
  });
});
//-----------

//-----------
// Game C Select
var usmgOptSelectedC = [];

$(document).ready(function(){
  $("#usmGameC").on("change", function() {

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
    else if (this.value == 'January'){
      searchTerm = searchTerm.concat('|-01-');
    }
    else if (this.value == 'C-USA Championship'){
      searchTerm = searchTerm.concat('|cusa');
    }

    // Game Type
    usmgOptSelectedC = sit.searchTable(group,tbl.southernmissTable,searchTerm,usmgOptSelectedC,0,3);

    // Months
    usmgOptSelectedC = sit.searchTable(group,tbl.southernmissTable,searchTerm,usmgOptSelectedC,1,1);

    // Days
    usmgOptSelectedC = sit.searchTable(group,tbl.southernmissTable,searchTerm,usmgOptSelectedC,2,8);

    // Head Coaches
    usmgOptSelectedC = sit.searchTable(group,tbl.southernmissTable,searchTerm,usmgOptSelectedC,3,11);
  });
});
//-----------

//-----------
// Auto Load URL Parameters
$(document).ready(function(){
  wlt.urlTrigger('gameA','#usmGameA');
  wlt.urlTrigger('gameB','#usmGameB');
  wlt.urlTrigger('gameC','#usmGameC');
});
//-----------
