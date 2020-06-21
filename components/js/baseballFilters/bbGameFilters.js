import * as tbl from '../bbBuildTable.js';
import * as sit from '../uniformGameFunctions.js';
import * as grp from './bbGameFiltersApp.js';
import * as wlt from '../tableFunctions.js';

//-----------
// Game A Select
var bbgOptSelectedA = [];

$(document).ready(function(){
  $("#bbGameA").on("change", function() {

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

    if(jQuery.inArray(this.value, grp.months) !== -1){
        group = 0;
    }
    else if(jQuery.inArray(this.value, grp.days) !== -1){
        group = 1;
    }
    else if(jQuery.inArray(this.value, grp.headCoaches) !== -1){
        group = 2;
    }
    else if(jQuery.inArray(this.value, grp.dh) !== -1){
        group = 3;
    }
    else if(jQuery.inArray(this.value, grp.sbw) !== -1){
        group = 4;
    }
    else if(jQuery.inArray(this.value, grp.gameLocation) !== -1){
        group = 5;
    }
    else if(jQuery.inArray(this.value, grp.gameType) !== -1){
        group = 6;
    }
    
    // Modify search terms
    if (searchTerm.includes('February')){
        searchTerm = searchTerm.concat("|-02-");
    }
    else if (searchTerm.includes('March')){
        searchTerm = searchTerm.concat("|-03-");
    }
    else if (searchTerm.includes('April')){
        searchTerm = searchTerm.concat("|-04-");
    }
    else if (searchTerm.includes('May')){
        searchTerm = searchTerm.concat("|-05-");
    }
    else if (searchTerm.includes('June')){
        searchTerm = searchTerm.concat("|-06-");
    }
    else if (searchTerm.includes('Omaha') || searchTerm.includes('College World Series')){
        searchTerm = "CWS";
    }
    else if (searchTerm === 'SEC'){
        searchTerm = "SEC Game";
    }
    else if (searchTerm === 'NCAA Tournament'){
        searchTerm = "ncaa";
    }
    else if (searchTerm === 'SEC Tournament'){
        searchTerm = "secT";
    }
    else if (searchTerm === 'National Championship Game 1'){
        searchTerm = "National Championship Series Game 1";
    }
    else if (searchTerm === 'National Championship Game 2'){
        searchTerm = "National Championship Series Game 2";
    }

    // Months
    bbgOptSelectedA = sit.searchTable(group,tbl.baseballTable,searchTerm,bbgOptSelectedA,0,1);
  
    // Days
    bbgOptSelectedA = sit.searchTable(group,tbl.baseballTable,searchTerm,bbgOptSelectedA,1,2);
  
    // Head Coaches
    bbgOptSelectedA = sit.searchTable(group,tbl.baseballTable,searchTerm,bbgOptSelectedA,2,8);
  
    // DH
    bbgOptSelectedA = sit.searchTable(group,tbl.baseballTable,searchTerm,bbgOptSelectedA,3,15);
  
    // SBW
    bbgOptSelectedA = sit.searchTable(group,tbl.baseballTable,searchTerm,bbgOptSelectedA,4,16);

    // Game Location
    bbgOptSelectedA = sit.searchTable(group,tbl.baseballTable,searchTerm,bbgOptSelectedA,5,3);

    // Game Type
    bbgOptSelectedA = sit.searchTable(group,tbl.baseballTable,searchTerm,bbgOptSelectedA,6,3);
  });
});
//-----------

//-----------
// Game B Select
var bbgOptSelectedB = [];

$(document).ready(function(){
  $("#bbGameB").on("change", function() {

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

    if(jQuery.inArray(this.value, grp.months) !== -1){
        group = 0;
    }
    else if(jQuery.inArray(this.value, grp.days) !== -1){
        group = 1;
    }
    else if(jQuery.inArray(this.value, grp.headCoaches) !== -1){
        group = 2;
    }
    else if(jQuery.inArray(this.value, grp.dh) !== -1){
        group = 3;
    }
    else if(jQuery.inArray(this.value, grp.sbw) !== -1){
        group = 4;
    }
    else if(jQuery.inArray(this.value, grp.gameLocation) !== -1){
        group = 5;
    }
    else if(jQuery.inArray(this.value, grp.gameType) !== -1){
        group = 6;
    }
    
    // Modify search terms
    if (searchTerm.includes('February')){
        searchTerm = searchTerm.concat("|-02-");
    }
    else if (searchTerm.includes('March')){
        searchTerm = searchTerm.concat("|-03-");
    }
    else if (searchTerm.includes('April')){
        searchTerm = searchTerm.concat("|-04-");
    }
    else if (searchTerm.includes('May')){
        searchTerm = searchTerm.concat("|-05-");
    }
    else if (searchTerm.includes('June')){
        searchTerm = searchTerm.concat("|-06-");
    }
    else if (searchTerm.includes('Omaha') || searchTerm.includes('College World Series')){
        searchTerm = "CWS";
    }
    else if (searchTerm === 'SEC'){
        searchTerm = "SEC Game";
    }
    else if (searchTerm === 'NCAA Tournament'){
        searchTerm = "ncaa";
    }
    else if (searchTerm === 'SEC Tournament'){
        searchTerm = "secT";
    }
    else if (searchTerm === 'National Championship Game 1'){
        searchTerm = "National Championship Series Game 1";
    }
    else if (searchTerm === 'National Championship Game 2'){
        searchTerm = "National Championship Series Game 2";
    }

    // Months
    bbgOptSelectedB = sit.searchTable(group,tbl.baseballTable,searchTerm,bbgOptSelectedB,0,1);
  
    // Days
    bbgOptSelectedB = sit.searchTable(group,tbl.baseballTable,searchTerm,bbgOptSelectedB,1,2);
  
    // Head Coaches
    bbgOptSelectedB = sit.searchTable(group,tbl.baseballTable,searchTerm,bbgOptSelectedB,2,8);
  
    // DH
    bbgOptSelectedB = sit.searchTable(group,tbl.baseballTable,searchTerm,bbgOptSelectedB,3,15);
  
    // SBW
    bbgOptSelectedB = sit.searchTable(group,tbl.baseballTable,searchTerm,bbgOptSelectedB,4,16);

    // Game Location
    bbgOptSelectedB = sit.searchTable(group,tbl.baseballTable,searchTerm,bbgOptSelectedB,5,3);

    // Game Type
    bbgOptSelectedB = sit.searchTable(group,tbl.baseballTable,searchTerm,bbgOptSelectedB,6,3);
  });
});
//-----------

//-----------
// Game C Select
var bbgOptSelectedC = [];

$(document).ready(function(){
  $("#bbGameC").on("change", function() {

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

    if(jQuery.inArray(this.value, grp.months) !== -1){
        group = 0;
    }
    else if(jQuery.inArray(this.value, grp.days) !== -1){
        group = 1;
    }
    else if(jQuery.inArray(this.value, grp.headCoaches) !== -1){
        group = 2;
    }
    else if(jQuery.inArray(this.value, grp.dh) !== -1){
        group = 3;
    }
    else if(jQuery.inArray(this.value, grp.sbw) !== -1){
        group = 4;
    }
    else if(jQuery.inArray(this.value, grp.gameLocation) !== -1){
        group = 5;
    }
    else if(jQuery.inArray(this.value, grp.gameType) !== -1){
        group = 6;
    }
    
    // Modify search terms
    if (searchTerm.includes('February')){
        searchTerm = searchTerm.concat("|-02-");
    }
    else if (searchTerm.includes('March')){
        searchTerm = searchTerm.concat("|-03-");
    }
    else if (searchTerm.includes('April')){
        searchTerm = searchTerm.concat("|-04-");
    }
    else if (searchTerm.includes('May')){
        searchTerm = searchTerm.concat("|-05-");
    }
    else if (searchTerm.includes('June')){
        searchTerm = searchTerm.concat("|-06-");
    }
    else if (searchTerm.includes('Omaha') || searchTerm.includes('College World Series')){
        searchTerm = "CWS";
    }
    else if (searchTerm === 'SEC'){
        searchTerm = "SEC Game";
    }
    else if (searchTerm === 'NCAA Tournament'){
        searchTerm = "ncaa";
    }
    else if (searchTerm === 'SEC Tournament'){
        searchTerm = "secT";
    }
    else if (searchTerm === 'National Championship Game 1'){
        searchTerm = "National Championship Series Game 1";
    }
    else if (searchTerm === 'National Championship Game 2'){
        searchTerm = "National Championship Series Game 2";
    }

    // Months
    bbgOptSelectedC = sit.searchTable(group,tbl.baseballTable,searchTerm,bbgOptSelectedC,0,1);
  
    // Days
    bbgOptSelectedC = sit.searchTable(group,tbl.baseballTable,searchTerm,bbgOptSelectedC,1,2);
  
    // Head Coaches
    bbgOptSelectedC = sit.searchTable(group,tbl.baseballTable,searchTerm,bbgOptSelectedC,2,8);
  
    // DH
    bbgOptSelectedC = sit.searchTable(group,tbl.baseballTable,searchTerm,bbgOptSelectedC,3,15);
  
    // SBW
    bbgOptSelectedC = sit.searchTable(group,tbl.baseballTable,searchTerm,bbgOptSelectedC,4,16);

    // Game Location
    bbgOptSelectedC = sit.searchTable(group,tbl.baseballTable,searchTerm,bbgOptSelectedC,5,3);

    // Game Type
    bbgOptSelectedC = sit.searchTable(group,tbl.baseballTable,searchTerm,bbgOptSelectedC,6,3);
  });
});
//-----------

//-----------
// Auto Load URL Parameters
$(document).ready(function(){
    wlt.urlTrigger('gameA','#bbGameA');
    wlt.urlTrigger('gameB','#bbGameB');
    wlt.urlTrigger('gameC','#bbGameC');
});
//-----------