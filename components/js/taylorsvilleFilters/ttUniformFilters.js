import * as tbl from '../ttBuildTable.js';
import * as sit from '../uniformGameFunctions.js';
import * as grp from './ttUniformFiltersApp.js';
import * as wlt from '../tableFunctions.js';

//-----------
// Uniform A Select
var ttuOptSelectedA = [];

$(document).ready(function(){
  $("#ttUniformA").on("change", function() {

    // Obtain raw search term
    var searchTerm = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );

    // Add to URL
    wlt.setURL(searchTerm,'uniformA');

    // Identify group
    var group;

    if(jQuery.inArray(this.value, grp.helmets) !== -1){
        group = 0;
    }
    else if(jQuery.inArray(this.value, grp.jerseys) !== -1){
        group = 1;
    }
    else if(jQuery.inArray(this.value, grp.pants) !== -1){
        group = 2;
    }
    
    // Modify search term
    if (this.value == 'Gold Helmets'){
        searchTerm = searchTerm.concat('|gold');
    }
  
    else if (this.value == 'Black Helmets'){
        searchTerm = searchTerm.concat('|black');
    }

    else if (this.value == 'Green Jerseys'){
        searchTerm = searchTerm.concat('|green');
    }
  
    else if (this.value == 'White Jerseys'){
        searchTerm = searchTerm.concat('|white');
    }
  
    else if (this.value == 'Gold Jerseys'){
        searchTerm = searchTerm.concat('|gold');
    }
  
    else if (this.value == 'Gray Jerseys'){
        searchTerm = searchTerm.concat('|gray');
    }

    else if (this.value == 'Black Jerseys'){
        searchTerm = searchTerm.concat('|black');
    }

    else if (this.value == 'Gold Pants'){
        searchTerm = searchTerm.concat('|gold');
    }
  
    else if (this.value == 'White Pants'){
        searchTerm = searchTerm.concat('|white');
    }
  
    else if (this.value == 'Green Pants'){
        searchTerm = searchTerm.concat('|green');
    }

    else if (this.value == 'Gray Pants'){
        searchTerm = searchTerm.concat('|gray');
    }

    else if (this.value == 'Black Pants'){
        searchTerm = searchTerm.concat('|black');
    }

    // Helmets
    ttuOptSelectedA = sit.searchTable(group,tbl.taylorsvilleTable,searchTerm,ttuOptSelectedA,0,5);
  
    // Jerseys
    ttuOptSelectedA = sit.searchTable(group,tbl.taylorsvilleTable,searchTerm,ttuOptSelectedA,1,6);
  
    // Pants
    ttuOptSelectedA = sit.searchTable(group,tbl.taylorsvilleTable,searchTerm,ttuOptSelectedA,2,7);
  });
});
//-----------

//-----------
// Uniform B Select
var ttuOptSelectedB = [];

$(document).ready(function(){
  $("#ttUniformB").on("change", function() {

    // Obtain raw search term
    var searchTerm = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );

    // Add to URL
    wlt.setURL(searchTerm,'uniformB');

    // Identify group
    var group;

    if(jQuery.inArray(this.value, grp.helmets) !== -1){
        group = 0;
    }
    else if(jQuery.inArray(this.value, grp.jerseys) !== -1){
        group = 1;
    }
    else if(jQuery.inArray(this.value, grp.pants) !== -1){
        group = 2;
    }
    
    // Modify search term
    if (this.value == 'Gold Helmets'){
        searchTerm = searchTerm.concat('|gold');
    }
  
    else if (this.value == 'Black Helmets'){
        searchTerm = searchTerm.concat('|black');
    }

    else if (this.value == 'Green Jerseys'){
        searchTerm = searchTerm.concat('|green');
    }
  
    else if (this.value == 'White Jerseys'){
        searchTerm = searchTerm.concat('|white');
    }
  
    else if (this.value == 'Gold Jerseys'){
        searchTerm = searchTerm.concat('|gold');
    }
  
    else if (this.value == 'Gray Jerseys'){
        searchTerm = searchTerm.concat('|gray');
    }

    else if (this.value == 'Black Jerseys'){
        searchTerm = searchTerm.concat('|black');
    }

    else if (this.value == 'Gold Pants'){
        searchTerm = searchTerm.concat('|gold');
    }
  
    else if (this.value == 'White Pants'){
        searchTerm = searchTerm.concat('|white');
    }
  
    else if (this.value == 'Green Pants'){
        searchTerm = searchTerm.concat('|green');
    }

    else if (this.value == 'Gray Pants'){
        searchTerm = searchTerm.concat('|gray');
    }

    else if (this.value == 'Black Pants'){
        searchTerm = searchTerm.concat('|black');
    }

    // Helmets
    ttuOptSelectedB = sit.searchTable(group,tbl.taylorsvilleTable,searchTerm,ttuOptSelectedB,0,5);
  
    // Jerseys
    ttuOptSelectedB = sit.searchTable(group,tbl.taylorsvilleTable,searchTerm,ttuOptSelectedB,1,6);
  
    // Pants
    ttuOptSelectedB = sit.searchTable(group,tbl.taylorsvilleTable,searchTerm,ttuOptSelectedB,2,7);
  });
});
//-----------

//-----------
// Uniform C Select
var ttuOptSelectedC = [];

$(document).ready(function(){
  $("#ttUniformC").on("change", function() {

    // Obtain raw search term
    var searchTerm = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );

    // Add to URL
    wlt.setURL(searchTerm,'uniformC');

    // Identify group
    var group;

    if(jQuery.inArray(this.value, grp.helmets) !== -1){
        group = 0;
    }
    else if(jQuery.inArray(this.value, grp.jerseys) !== -1){
        group = 1;
    }
    else if(jQuery.inArray(this.value, grp.pants) !== -1){
        group = 2;
    }
    
    // Modify search term
    if (this.value == 'Gold Helmets'){
        searchTerm = searchTerm.concat('|gold');
    }
  
    else if (this.value == 'Black Helmets'){
        searchTerm = searchTerm.concat('|black');
    }

    else if (this.value == 'Green Jerseys'){
        searchTerm = searchTerm.concat('|green');
    }
  
    else if (this.value == 'White Jerseys'){
        searchTerm = searchTerm.concat('|white');
    }
  
    else if (this.value == 'Gold Jerseys'){
        searchTerm = searchTerm.concat('|gold');
    }
  
    else if (this.value == 'Gray Jerseys'){
        searchTerm = searchTerm.concat('|gray');
    }

    else if (this.value == 'Black Jerseys'){
        searchTerm = searchTerm.concat('|black');
    }

    else if (this.value == 'Gold Pants'){
        searchTerm = searchTerm.concat('|gold');
    }
  
    else if (this.value == 'White Pants'){
        searchTerm = searchTerm.concat('|white');
    }
  
    else if (this.value == 'Green Pants'){
        searchTerm = searchTerm.concat('|green');
    }

    else if (this.value == 'Gray Pants'){
        searchTerm = searchTerm.concat('|gray');
    }

    else if (this.value == 'Black Pants'){
        searchTerm = searchTerm.concat('|black');
    }

    // Helmets
    ttuOptSelectedC = sit.searchTable(group,tbl.taylorsvilleTable,searchTerm,ttuOptSelectedC,0,5);
  
    // Jerseys
    ttuOptSelectedC = sit.searchTable(group,tbl.taylorsvilleTable,searchTerm,ttuOptSelectedC,1,6);
  
    // Pants
    ttuOptSelectedC = sit.searchTable(group,tbl.taylorsvilleTable,searchTerm,ttuOptSelectedC,2,7);
  });
});
//-----------

//-----------
// Auto Load URL Parameters
$(document).ready(function(){
    wlt.urlTrigger('uniformA','#ttUniformA');
    wlt.urlTrigger('uniformB','#ttUniformB');
    wlt.urlTrigger('uniformC','#ttUniformC');
  });
  //-----------