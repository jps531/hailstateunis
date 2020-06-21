import * as tbl from '../bbBuildTable.js';
import * as sit from '../uniformGameFunctions.js';
import * as grp from './bbUniformFiltersApp.js';
import * as wlt from '../tableFunctions.js';

//-----------
// Uniform A Select
var bbuOptSelectedA = [];

$(document).ready(function(){
  $("#bbUniformA").on("change", function() {

    // Obtain raw search term
    var searchTerm = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );

    // Identify group
    var group;

    if(jQuery.inArray(this.value, grp.jerseyColor) !== -1){
        group = 0;
    }
    else if(jQuery.inArray(this.value, grp.jerseyType) !== -1){
        group = 1;
    }
    else if(jQuery.inArray(this.value, grp.jerseyAttribute) !== -1){
        group = 2;
    }
    else if(jQuery.inArray(this.value, grp.hats) !== -1){
        group = 3;
    }
    else if(jQuery.inArray(this.value, grp.pants) !== -1){
        group = 4;
    }
    else if(jQuery.inArray(this.value, grp.jerseyDesigns) !== -1){
        group = 5;
    }
    
    // Simplify search terms
    if (this.value == 'White Jerseys'){
        searchTerm = "white";
    }
    else if (this.value == 'Maroon Jerseys'){
        searchTerm = "maroon";
    }
    else if (this.value == 'Gray Jerseys'){
        searchTerm = "gray";
    }
    else if (this.value == 'Black Jerseys'){
        searchTerm = "black";
    }
    else if (this.value == 'Cream Jerseys'){
        searchTerm = "cream";
    }
    else if (this.value == 'Camo Jerseys'){
        searchTerm = "camo";
    }
    else if (this.value == 'Wool Jerseys'){
        searchTerm = "wool";
    }
    else if (this.value == 'Teal Jerseys'){
        searchTerm = "teal";
    }
    else if (this.value == 'White Hats'){
        searchTerm = "^white$";
    }
    else if (this.value == 'Maroon Hats'){
        searchTerm = "^maroon$";
    }
    else if (this.value == 'Green Hats'){
        searchTerm = "green";
    }
    else if (this.value == 'Black Hats'){
        searchTerm = "^black$";
    }
    else if (this.value == 'Cream Hats'){
        searchTerm = "cream";
    }
    else if (this.value == 'Maroon + White Panel Hats'){
        searchTerm = "maroon with white panel";
    }
    else if (this.value == 'Black + White Panel Hats'){
        searchTerm = "black with white panel";
    }
    else if (this.value == 'Green + White Panel Hats'){
        searchTerm = "green with white panel";
    }
    else if (this.value == 'Solid White Pants'){
        searchTerm = "^white$";
    }
    else if (this.value == 'Solid Gray Pants'){
        searchTerm = "^gray$";
    }
    else if (this.value == 'White Pinstripe Pants'){
        searchTerm = "white pinstripe";
    }
    else if (this.value == 'Gray Pinstripe Pants'){
        searchTerm = "gray pinstripe";
    }
    else if (this.value == 'Black Pants'){
        searchTerm = "black";
    }
    else if (this.value == "White St. Pat's"){
        searchTerm = "st. pat's";
    }
    else if (this.value == "White Mother's Day"){
        searchTerm = "mother's day";
    }
    else if (this.value == "Gray 'State' Script"){
        searchTerm = "2020 gray state script";
    }
    else if (this.value == "Gray 'Mississippi State' Script"){
        searchTerm = "gray mississippi state script";
    }

    // Jersey Colors
    bbuOptSelectedA = sit.searchTableB(group,tbl.baseballTable,searchTerm,bbuOptSelectedA,0,10);
  
    // Jersey Type
    bbuOptSelectedA = sit.searchTableB(group,tbl.baseballTable,searchTerm,bbuOptSelectedA,1,14);
  
    // Jersey Attribute
    bbuOptSelectedA = sit.searchTableB(group,tbl.baseballTable,searchTerm,bbuOptSelectedA,2,13);
  
    // Hats
    bbuOptSelectedA = sit.searchTable(group,tbl.baseballTable,searchTerm,bbuOptSelectedA,3,9);
  
    // Pants
    bbuOptSelectedA = sit.searchTable(group,tbl.baseballTable,searchTerm,bbuOptSelectedA,4,11);

    // Jersey Design
    bbuOptSelectedA = sit.searchTableB(group,tbl.baseballTable,searchTerm,bbuOptSelectedA,5,12);
  });
});
//-----------

//-----------
// Uniform B Select
var bbuOptSelectedB = [];

$(document).ready(function(){
    $("#bbUniformB").on("change", function() {
  
      // Obtain raw search term
      var searchTerm = $(this).find(':selected').map(function() {
        return $( this ).text();
      })
      .get()
      .join( "|" );
  
      // Identify group
      var group;
  
      if(jQuery.inArray(this.value, grp.jerseyColor) !== -1){
          group = 0;
      }
      else if(jQuery.inArray(this.value, grp.jerseyType) !== -1){
          group = 1;
      }
      else if(jQuery.inArray(this.value, grp.jerseyAttribute) !== -1){
          group = 2;
      }
      else if(jQuery.inArray(this.value, grp.hats) !== -1){
          group = 3;
      }
      else if(jQuery.inArray(this.value, grp.pants) !== -1){
          group = 4;
      }
      else if(jQuery.inArray(this.value, grp.jerseyDesigns) !== -1){
          group = 5;
      }
      
      // Simplify search terms
      if (this.value == 'White Jerseys'){
          searchTerm = "white";
      }
      else if (this.value == 'Maroon Jerseys'){
          searchTerm = "maroon";
      }
      else if (this.value == 'Gray Jerseys'){
          searchTerm = "gray";
      }
      else if (this.value == 'Black Jerseys'){
          searchTerm = "black";
      }
      else if (this.value == 'Cream Jerseys'){
          searchTerm = "cream";
      }
      else if (this.value == 'Camo Jerseys'){
          searchTerm = "camo";
      }
      else if (this.value == 'Wool Jerseys'){
          searchTerm = "wool";
      }
      else if (this.value == 'Teal Jerseys'){
          searchTerm = "teal";
      }
      else if (this.value == 'White Hats'){
        searchTerm = "^white$";
      }
      else if (this.value == 'Maroon Hats'){
        searchTerm = "^maroon$";
      }
      else if (this.value == 'Green Hats'){
        searchTerm = "green";
      }
      else if (this.value == 'Black Hats'){
        searchTerm = "^black$";
      }
      else if (this.value == 'Cream Hats'){
        searchTerm = "cream";
      }
      else if (this.value == 'Maroon + White Panel Hats'){
        searchTerm = "maroon with white panel";
      }
      else if (this.value == 'Black + White Panel Hats'){
        searchTerm = "black with white panel";
      }
      else if (this.value == 'Green + White Panel Hats'){
        searchTerm = "green with white panel";
      }
      else if (this.value == 'Solid White Pants'){
        searchTerm = "^white$";
      }
      else if (this.value == 'Solid Gray Pants'){
        searchTerm = "^gray$";
      }
      else if (this.value == 'White Pinstripe Pants'){
        searchTerm = "white pinstripe";
      }
      else if (this.value == 'Gray Pinstripe Pants'){
        searchTerm = "gray pinstripe";
      }
      else if (this.value == 'Black Pants'){
        searchTerm = "black";
      }
      else if (this.value == "White St. Pat's"){
          searchTerm = "st. pat's";
      }
      else if (this.value == "White Mother's Day"){
          searchTerm = "mother's day";
      }
      else if (this.value == "Gray 'State' Script"){
          searchTerm = "2020 gray state script";
      }
      else if (this.value == "Gray 'Mississippi State' Script"){
          searchTerm = "gray mississippi state script";
      }
  
      // Jersey Colors
      bbuOptSelectedB = sit.searchTableB(group,tbl.baseballTable,searchTerm,bbuOptSelectedB,0,10);
  
      // Jersey Type
      bbuOptSelectedB = sit.searchTableB(group,tbl.baseballTable,searchTerm,bbuOptSelectedB,1,14);
  
      // Jersey Attribute
      bbuOptSelectedB = sit.searchTableB(group,tbl.baseballTable,searchTerm,bbuOptSelectedB,2,13);
  
      // Hats
      bbuOptSelectedB = sit.searchTable(group,tbl.baseballTable,searchTerm,bbuOptSelectedB,3,9);
  
      // Pants
      bbuOptSelectedB = sit.searchTable(group,tbl.baseballTable,searchTerm,bbuOptSelectedB,4,11);

      // Jersey Design
      bbuOptSelectedB = sit.searchTableB(group,tbl.baseballTable,searchTerm,bbuOptSelectedB,5,12);
    });
  });
//-----------

//-----------
// Uniform C Select
var bbuOptSelectedC = [];

$(document).ready(function(){
    $("#bbUniformC").on("change", function() {
  
      // Obtain raw search term
      var searchTerm = $(this).find(':selected').map(function() {
        return $( this ).text();
      })
      .get()
      .join( "|" );
  
      // Identify group
      var group;
  
      if(jQuery.inArray(this.value, grp.jerseyColor) !== -1){
          group = 0;
      }
      else if(jQuery.inArray(this.value, grp.jerseyType) !== -1){
          group = 1;
      }
      else if(jQuery.inArray(this.value, grp.jerseyAttribute) !== -1){
          group = 2;
      }
      else if(jQuery.inArray(this.value, grp.hats) !== -1){
          group = 3;
      }
      else if(jQuery.inArray(this.value, grp.pants) !== -1){
          group = 4;
      }
      else if(jQuery.inArray(this.value, grp.jerseyDesigns) !== -1){
          group = 5;
      }
      
      // Simplify search terms
      if (this.value == 'White Jerseys'){
          searchTerm = "white";
      }
      else if (this.value == 'Maroon Jerseys'){
          searchTerm = "maroon";
      }
      else if (this.value == 'Gray Jerseys'){
          searchTerm = "gray";
      }
      else if (this.value == 'Black Jerseys'){
          searchTerm = "black";
      }
      else if (this.value == 'Cream Jerseys'){
          searchTerm = "cream";
      }
      else if (this.value == 'Camo Jerseys'){
          searchTerm = "camo";
      }
      else if (this.value == 'Wool Jerseys'){
          searchTerm = "wool";
      }
      else if (this.value == 'Teal Jerseys'){
          searchTerm = "teal";
      }
      else if (this.value == 'White Hats'){
        searchTerm = "^white$";
      }
      else if (this.value == 'Maroon Hats'){
        searchTerm = "^maroon$";
      }
      else if (this.value == 'Green Hats'){
        searchTerm = "green";
      }
      else if (this.value == 'Black Hats'){
        searchTerm = "^black$";
      }
      else if (this.value == 'Cream Hats'){
        searchTerm = "cream";
      }
      else if (this.value == 'Maroon + White Panel Hats'){
        searchTerm = "maroon with white panel";
      }
      else if (this.value == 'Black + White Panel Hats'){
        searchTerm = "black with white panel";
      }
      else if (this.value == 'Green + White Panel Hats'){
        searchTerm = "green with white panel";
      }
      else if (this.value == 'Solid White Pants'){
        searchTerm = "^white$";
      }
      else if (this.value == 'Solid Gray Pants'){
        searchTerm = "^gray$";
      }
      else if (this.value == 'White Pinstripe Pants'){
        searchTerm = "white pinstripe";
      }
      else if (this.value == 'Gray Pinstripe Pants'){
        searchTerm = "gray pinstripe";
      }
      else if (this.value == 'Black Pants'){
        searchTerm = "black";
      }
      else if (this.value == "White St. Pat's"){
          searchTerm = "st. pat's";
      }
      else if (this.value == "White Mother's Day"){
          searchTerm = "mother's day";
      }
      else if (this.value == "Gray 'State' Script"){
          searchTerm = "2020 gray state script";
      }
      else if (this.value == "Gray 'Mississippi State' Script"){
          searchTerm = "gray mississippi state script";
      }
  
      // Jersey Colors
      bbuOptSelectedC = sit.searchTableB(group,tbl.baseballTable,searchTerm,bbuOptSelectedC,0,10);
  
      // Jersey Type
      bbuOptSelectedC = sit.searchTableB(group,tbl.baseballTable,searchTerm,bbuOptSelectedC,1,14);
  
      // Jersey Attribute
      bbuOptSelectedC = sit.searchTableB(group,tbl.baseballTable,searchTerm,bbuOptSelectedC,2,13);
  
      // Hats
      bbuOptSelectedC = sit.searchTable(group,tbl.baseballTable,searchTerm,bbuOptSelectedC,3,9);
  
      // Pants
      bbuOptSelectedC = sit.searchTable(group,tbl.baseballTable,searchTerm,bbuOptSelectedC,4,11);

      // Jersey Design
      bbuOptSelectedC = sit.searchTableB(group,tbl.baseballTable,searchTerm,bbuOptSelectedC,5,12);
    });
  });
//-----------

//-----------
// Auto Load URL Parameters
$(document).ready(function(){
  wlt.urlTrigger('uniformA','#bbUniformA');
  wlt.urlTrigger('uniformB','#bbUniformB');
  wlt.urlTrigger('uniformC','#bbUniformC');
});
//-----------