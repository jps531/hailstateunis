import * as tbl from '../wbkBuildTable.js';
import * as sit from '../uniformGameFunctions.js';
import * as grp from './wbkGameFiltersApp.js';
import * as wlt from '../tableFunctions.js';

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

    // Identify group
    var group;

    if(jQuery.inArray(this.value, grp.months) !== -1){
        group = 0;
    }
    else if(jQuery.inArray(this.value, grp.days) !== -1){
        group = 1;
    }
    else if(jQuery.inArray(this.value, grp.headCoaches) !== -1){
        group = 2;
    }
    else if(jQuery.inArray(this.value, grp.gameType) !== -1){
        group = 3;
    }

    // Modify search term
    if (searchTerm.includes('November')){
      searchTerm = searchTerm.concat("|-11-");
    }
    else if (searchTerm.includes('December')){
      searchTerm = searchTerm.concat("|-12-");
    }
    else if (searchTerm.includes('January')){
      searchTerm = searchTerm.concat("|-01-");
    }
    else if (searchTerm.includes('February')){
      searchTerm = searchTerm.concat("|-02-");
    }
    else if (searchTerm.includes('March')){
      searchTerm = searchTerm.concat("|-03-");
    }
    else if (searchTerm.includes('April')){
        searchTerm = searchTerm.concat("|-04-");
    }
    else if (this.value == "SEC Tournament"){
      searchTerm = searchTerm.concat("|secT");
    }
    else if (this.value == "NCAA Tournament"){
      searchTerm = searchTerm.concat("|ncaa");
    }
    
    // Months
    wbkgOptSelectedA = sit.searchTable(group,tbl.wbkTable,searchTerm,wbkgOptSelectedA,0,1);

    // Days
    wbkgOptSelectedA = sit.searchTable(group,tbl.wbkTable,searchTerm,wbkgOptSelectedA,1,2);

    // Head Coaches
    wbkgOptSelectedA = sit.searchTable(group,tbl.wbkTable,searchTerm,wbkgOptSelectedA,2,5);

    // Regular Season and Tournaments
    wbkgOptSelectedA = sit.searchTableB(group,tbl.wbkTable,searchTerm,wbkgOptSelectedA,3,3);
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

    // Identify group
    var group;

    if(jQuery.inArray(this.value, grp.months) !== -1){
        group = 0;
    }
    else if(jQuery.inArray(this.value, grp.days) !== -1){
        group = 1;
    }
    else if(jQuery.inArray(this.value, grp.headCoaches) !== -1){
        group = 2;
    }
    else if(jQuery.inArray(this.value, grp.gameType) !== -1){
        group = 3;
    }

    // Modify search term
    if (searchTerm.includes('November')){
      searchTerm = searchTerm.concat("|-11-");
    }
    else if (searchTerm.includes('December')){
      searchTerm = searchTerm.concat("|-12-");
    }
    else if (searchTerm.includes('January')){
      searchTerm = searchTerm.concat("|-01-");
    }
    else if (searchTerm.includes('February')){
      searchTerm = searchTerm.concat("|-02-");
    }
    else if (searchTerm.includes('March')){
      searchTerm = searchTerm.concat("|-03-");
    }
    else if (searchTerm.includes('April')){
        searchTerm = searchTerm.concat("|-04-");
    }
    else if (this.value == "SEC Tournament"){
      searchTerm = searchTerm.concat("|secT");
    }
    else if (this.value == "NCAA Tournament"){
      searchTerm = searchTerm.concat("|ncaa");
    }
    
    // Months
    wbkgOptSelectedB = sit.searchTable(group,tbl.wbkTable,searchTerm,wbkgOptSelectedB,0,1);

    // Days
    wbkgOptSelectedB = sit.searchTable(group,tbl.wbkTable,searchTerm,wbkgOptSelectedB,1,2);

    // Head Coaches
    wbkgOptSelectedB = sit.searchTable(group,tbl.wbkTable,searchTerm,wbkgOptSelectedB,2,5);

    // Regular Season and Tournaments
    wbkgOptSelectedB = sit.searchTableB(group,tbl.wbkTable,searchTerm,wbkgOptSelectedB,3,3);
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

    // Identify group
    var group;

    if(jQuery.inArray(this.value, grp.months) !== -1){
        group = 0;
    }
    else if(jQuery.inArray(this.value, grp.days) !== -1){
        group = 1;
    }
    else if(jQuery.inArray(this.value, grp.headCoaches) !== -1){
        group = 2;
    }
    else if(jQuery.inArray(this.value, grp.gameType) !== -1){
        group = 3;
    }

    // Modify search term
    if (searchTerm.includes('November')){
      searchTerm = searchTerm.concat("|-11-");
    }
    else if (searchTerm.includes('December')){
      searchTerm = searchTerm.concat("|-12-");
    }
    else if (searchTerm.includes('January')){
      searchTerm = searchTerm.concat("|-01-");
    }
    else if (searchTerm.includes('February')){
      searchTerm = searchTerm.concat("|-02-");
    }
    else if (searchTerm.includes('March')){
      searchTerm = searchTerm.concat("|-03-");
    }
    else if (searchTerm.includes('April')){
        searchTerm = searchTerm.concat("|-04-");
    }
    else if (this.value == "SEC Tournament"){
      searchTerm = searchTerm.concat("|secT");
    }
    else if (this.value == "NCAA Tournament"){
      searchTerm = searchTerm.concat("|ncaa");
    }
    
    // Months
    wbkgOptSelectedC = sit.searchTable(group,tbl.wbkTable,searchTerm,wbkgOptSelectedC,0,1);

    // Days
    wbkgOptSelectedC = sit.searchTable(group,tbl.wbkTable,searchTerm,wbkgOptSelectedC,1,2);

    // Head Coaches
    wbkgOptSelectedC = sit.searchTable(group,tbl.wbkTable,searchTerm,wbkgOptSelectedC,2,5);

    // Regular Season and Tournaments
    wbkgOptSelectedC = sit.searchTableB(group,tbl.wbkTable,searchTerm,wbkgOptSelectedC,3,3);
  });
});
//-----------

//-----------
// Auto Load URL Parameters
$(document).ready(function(){
  wlt.urlTrigger('gameA','#wbkGameA');
  wlt.urlTrigger('gameB','#wbkGameB');
  wlt.urlTrigger('gameC','#wbkGameC');
});
//-----------