import * as tbl from '../mbkBuildTable.js';
import * as sit from '../uniformGameFunctions.js';
import * as grp from './mbkGameFiltersApp.js';

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
    else if (this.value == "SEC Tournament"){
      searchTerm = searchTerm.concat("|secT");
    }
    else if (this.value == "NCAA Tournament"){
      searchTerm = searchTerm.concat("|ncaa");
    }
    
    // Months
    mbkgOptSelectedA = sit.searchTable(group,tbl.mbkTable,searchTerm,mbkgOptSelectedA,0,1);

    // Days
    mbkgOptSelectedA = sit.searchTable(group,tbl.mbkTable,searchTerm,mbkgOptSelectedA,1,2);

    // Head Coaches
    mbkgOptSelectedA = sit.searchTable(group,tbl.mbkTable,searchTerm,mbkgOptSelectedA,2,5);

    // Regular Season and Tournaments
    mbkgOptSelectedA = sit.searchTableB(group,tbl.mbkTable,searchTerm,mbkgOptSelectedA,3,3);
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
    else if (this.value == "SEC Tournament"){
      searchTerm = searchTerm.concat("|secT");
    }
    else if (this.value == "NCAA Tournament"){
      searchTerm = searchTerm.concat("|ncaa");
    }
    
    // Months
    mbkgOptSelectedB = sit.searchTable(group,tbl.mbkTable,searchTerm,mbkgOptSelectedB,0,1);

    // Days
    mbkgOptSelectedB = sit.searchTable(group,tbl.mbkTable,searchTerm,mbkgOptSelectedB,1,2);

    // Head Coaches
    mbkgOptSelectedB = sit.searchTable(group,tbl.mbkTable,searchTerm,mbkgOptSelectedB,2,5);

    // Regular Season and Tournaments
    mbkgOptSelectedB = sit.searchTableB(group,tbl.mbkTable,searchTerm,mbkgOptSelectedB,3,3);
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
    else if (this.value == "SEC Tournament"){
      searchTerm = searchTerm.concat("|secT");
    }
    else if (this.value == "NCAA Tournament"){
      searchTerm = searchTerm.concat("|ncaa");
    }
    
    // Months
    mbkgOptSelectedC = sit.searchTable(group,tbl.mbkTable,searchTerm,mbkgOptSelectedC,0,1);

    // Days
    mbkgOptSelectedC = sit.searchTable(group,tbl.mbkTable,searchTerm,mbkgOptSelectedC,1,2);

    // Head Coaches
    mbkgOptSelectedC = sit.searchTable(group,tbl.mbkTable,searchTerm,mbkgOptSelectedC,2,5);

    // Regular Season and Tournaments
    mbkgOptSelectedC = sit.searchTableB(group,tbl.mbkTable,searchTerm,mbkgOptSelectedC,3,3);
  });
});
//-----------