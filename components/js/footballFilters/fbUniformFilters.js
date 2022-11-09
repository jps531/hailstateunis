import * as tbl from '../fbBuildTable.js';
import * as sit from '../uniformGameFunctions.js';
import * as grp from './fbUniformFiltersApp.js';
import * as wlt from '../tableFunctions.js';

//-----------
// Uniform A Select
var fbuOptSelectedA = [];

$(document).ready(function(){
  $("#fbUniformA").on("change", function() {

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

    if(jQuery.inArray(this.value, grp.alternates) !== -1){
        group = 0;
    }
    else if(jQuery.inArray(this.value, grp.helmets) !== -1){
        group = 1;
    }
    else if(jQuery.inArray(this.value, grp.jerseys) !== -1){
        group = 2;
    }
    else if(jQuery.inArray(this.value, grp.pants) !== -1){
        group = 3;
    }
    else if(jQuery.inArray(this.value, grp.patches) !== -1){
        group = 4;
    }
    
    // Modify search term
    if (this.value == 'All Alternates'){
        searchTerm = searchTerm.concat('|alternates');
    }

    else if (this.value == 'Maroon Helmets'){
        searchTerm = searchTerm.concat('|maroon');
    }
  
    else if (this.value == 'Gloss Maroon Helmets'){
        searchTerm = searchTerm.concat('|glossy');
    }

    else if (this.value == 'Matte Maroon Helmets'){
        searchTerm = searchTerm.concat('|mattemaroon');
    }
  
    else if (this.value == 'White Helmets'){
        searchTerm = searchTerm.concat('|white');
    }
  
    else if (this.value == 'Silver Helmets'){
        searchTerm = searchTerm.concat('|silver');
    }

    else if (this.value == 'Black Helmets'){
        searchTerm = searchTerm.concat('|black');
    }
  
    else if (this.value == 'Gold Helmets'){
        searchTerm = searchTerm.concat('|gold');
    }
  
    else if (this.value == 'Bulldog Helmets'){
        searchTerm = searchTerm.concat('|bulldog');
    }

    else if (this.value == 'Flying M Helmets'){
        searchTerm = searchTerm.concat('|flying m');
    }

    else if (this.value == 'M over S Helmets'){
        searchTerm = searchTerm.concat('|m over s');
    }

    else if (this.value == 'Script State Helmets'){
        searchTerm = searchTerm.concat('|state script');
    }
  
    else if (this.value == 'Maroon Jerseys'){
        searchTerm = searchTerm.concat('|maroon');
    }
  
    else if (this.value == 'White Jerseys'){
        searchTerm = searchTerm.concat('|white');
    }
  
    else if (this.value == 'Black Jerseys'){
        searchTerm = searchTerm.concat('|black');
    }
  
    else if (this.value == 'Gray Jerseys'){
        searchTerm = searchTerm.concat('|gray');
    }
  
    else if (this.value == 'White Pants'){
        searchTerm = searchTerm.concat('|white');
    }
  
    else if (this.value == 'Maroon Pants'){
        searchTerm = searchTerm.concat('|maroon');
    }

    else if (this.value == 'Black Pants'){
        searchTerm = searchTerm.concat('|black');
    }
  
    else if (this.value == 'Gray Pants'){
        searchTerm = searchTerm.concat('|gray');
    }
  
    else if (this.value == 'Silver Pants'){
        searchTerm = searchTerm.concat('|silver');
    }

    else if (this.value == 'DWS 100'){
        searchTerm = searchTerm.concat('|dws 100');
    }

    // Alternates
    fbuOptSelectedA = sit.searchTable(group,tbl.table,searchTerm,fbuOptSelectedA,0,4);
  
    // Helmets
    fbuOptSelectedA = sit.searchTable(group,tbl.table,searchTerm,fbuOptSelectedA,1,5);
  
    // Jerseys
    fbuOptSelectedA = sit.searchTable(group,tbl.table,searchTerm,fbuOptSelectedA,2,6);
  
    // Pants
    fbuOptSelectedA = sit.searchTable(group,tbl.table,searchTerm,fbuOptSelectedA,3,7);
  
    // Patches
    fbuOptSelectedA = sit.searchTable(group,tbl.table,searchTerm,fbuOptSelectedA,4,4);
  });
});
//-----------

//-----------
// Uniform B Select
var fbuOptSelectedB = [];

$(document).ready(function(){
  $("#fbUniformB").on("change", function() {

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

    if(jQuery.inArray(this.value, grp.alternates) !== -1){
        group = 0;
    }
    else if(jQuery.inArray(this.value, grp.helmets) !== -1){
        group = 1;
    }
    else if(jQuery.inArray(this.value, grp.jerseys) !== -1){
        group = 2;
    }
    else if(jQuery.inArray(this.value, grp.pants) !== -1){
        group = 3;
    }
    else if(jQuery.inArray(this.value, grp.patches) !== -1){
        group = 4;
    }
    
    // Modify search term
    if (this.value == 'All Alternates'){
        searchTerm = searchTerm.concat('|alternates');
    }

    else if (this.value == 'Maroon Helmets'){
        searchTerm = searchTerm.concat('|maroon');
    }
  
    else if (this.value == 'Gloss Maroon Helmets'){
        searchTerm = searchTerm.concat('|glossy');
    }

    else if (this.value == 'Matte Maroon Helmets'){
        searchTerm = searchTerm.concat('|mattemaroon');
    }
  
    else if (this.value == 'White Helmets'){
        searchTerm = searchTerm.concat('|white');
    }
  
    else if (this.value == 'Silver Helmets'){
        searchTerm = searchTerm.concat('|silver');
    }
  
    else if (this.value == 'Gold Helmets'){
        searchTerm = searchTerm.concat('|gold');
    }
  
    else if (this.value == 'Bulldog Helmets'){
        searchTerm = searchTerm.concat('|bulldog');
    }

    else if (this.value == 'Flying M Helmets'){
        searchTerm = searchTerm.concat('|flying m');
    }

    else if (this.value == 'M over S Helmets'){
        searchTerm = searchTerm.concat('|m over s');
    }

    else if (this.value == 'Script State Helmets'){
        searchTerm = searchTerm.concat('|state script');
    }

    else if (this.value == 'Maroon Jerseys'){
        searchTerm = searchTerm.concat('|maroon');
    }
  
    else if (this.value == 'White Jerseys'){
        searchTerm = searchTerm.concat('|white');
    }
  
    else if (this.value == 'Black Jerseys'){
        searchTerm = searchTerm.concat('|black');
    }
  
    else if (this.value == 'Gray Jerseys'){
        searchTerm = searchTerm.concat('|gray');
    }
  
    else if (this.value == 'White Pants'){
        searchTerm = searchTerm.concat('|white');
    }
  
    else if (this.value == 'Maroon Pants'){
        searchTerm = searchTerm.concat('|maroon');
    }

    else if (this.value == 'Black Pants'){
        searchTerm = searchTerm.concat('|black');
    }
  
    else if (this.value == 'Gray Pants'){
        searchTerm = searchTerm.concat('|gray');
    }
  
    else if (this.value == 'Silver Pants'){
        searchTerm = searchTerm.concat('|silver');
    }

    else if (this.value == 'DWS 100'){
        searchTerm = searchTerm.concat('|dws 100');
    }

    // Alternates
    fbuOptSelectedB = sit.searchTable(group,tbl.table,searchTerm,fbuOptSelectedB,0,4);
  
    // Helmets
    fbuOptSelectedB = sit.searchTable(group,tbl.table,searchTerm,fbuOptSelectedB,1,5);
  
    // Jerseys
    fbuOptSelectedB = sit.searchTable(group,tbl.table,searchTerm,fbuOptSelectedB,2,6);
  
    // Pants
    fbuOptSelectedB = sit.searchTable(group,tbl.table,searchTerm,fbuOptSelectedB,3,7);
  
    // Patches
    fbuOptSelectedB = sit.searchTable(group,tbl.table,searchTerm,fbuOptSelectedB,4,4);
  });
});
//-----------

//-----------
// Uniform C Select
var fbuOptSelectedC = [];

$(document).ready(function(){
  $("#fbUniformC").on("change", function() {

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

    if(jQuery.inArray(this.value, grp.alternates) !== -1){
        group = 0;
    }
    else if(jQuery.inArray(this.value, grp.helmets) !== -1){
        group = 1;
    }
    else if(jQuery.inArray(this.value, grp.jerseys) !== -1){
        group = 2;
    }
    else if(jQuery.inArray(this.value, grp.pants) !== -1){
        group = 3;
    }
    else if(jQuery.inArray(this.value, grp.patches) !== -1){
        group = 4;
    }
    
    // Modify search term
    if (this.value == 'All Alternates'){
        searchTerm = searchTerm.concat('|alternates');
    }

    else if (this.value == 'Maroon Helmets'){
        searchTerm = searchTerm.concat('|maroon');
    }
  
    else if (this.value == 'Gloss Maroon Helmets'){
        searchTerm = searchTerm.concat('|glossy');
    }

    else if (this.value == 'Matte Maroon Helmets'){
        searchTerm = searchTerm.concat('|mattemaroon');
    }
  
    else if (this.value == 'White Helmets'){
        searchTerm = searchTerm.concat('|white');
    }
  
    else if (this.value == 'Silver Helmets'){
        searchTerm = searchTerm.concat('|silver');
    }
  
    else if (this.value == 'Gold Helmets'){
        searchTerm = searchTerm.concat('|gold');
    }
  
    else if (this.value == 'Bulldog Helmets'){
        searchTerm = searchTerm.concat('|bulldog');
    }

    else if (this.value == 'Flying M Helmets'){
        searchTerm = searchTerm.concat('|flying m');
    }

    else if (this.value == 'M over S Helmets'){
        searchTerm = searchTerm.concat('|m over s');
    }

    else if (this.value == 'Script State Helmets'){
        searchTerm = searchTerm.concat('|state script');
    }
      
    else if (this.value == 'Maroon Jerseys'){
        searchTerm = searchTerm.concat('|maroon');
    }
  
    else if (this.value == 'White Jerseys'){
        searchTerm = searchTerm.concat('|white');
    }
  
    else if (this.value == 'Black Jerseys'){
        searchTerm = searchTerm.concat('|black');
    }
  
    else if (this.value == 'Gray Jerseys'){
        searchTerm = searchTerm.concat('|gray');
    }
  
    else if (this.value == 'White Pants'){
        searchTerm = searchTerm.concat('|white');
    }
  
    else if (this.value == 'Maroon Pants'){
        searchTerm = searchTerm.concat('|maroon');
    }

    else if (this.value == 'Black Pants'){
        searchTerm = searchTerm.concat('|black');
    }
  
    else if (this.value == 'Gray Pants'){
        searchTerm = searchTerm.concat('|gray');
    }
  
    else if (this.value == 'Silver Pants'){
        searchTerm = searchTerm.concat('|silver');
    }

    else if (this.value == 'DWS 100'){
        searchTerm = searchTerm.concat('|dws 100');
    }

    // Alternates
    fbuOptSelectedC = sit.searchTable(group,tbl.table,searchTerm,fbuOptSelectedC,0,4);
  
    // Helmets
    fbuOptSelectedC = sit.searchTable(group,tbl.table,searchTerm,fbuOptSelectedC,1,5);
  
    // Jerseys
    fbuOptSelectedC = sit.searchTable(group,tbl.table,searchTerm,fbuOptSelectedC,2,6);
  
    // Pants
    fbuOptSelectedC = sit.searchTable(group,tbl.table,searchTerm,fbuOptSelectedC,3,7);
  
    // Patches
    fbuOptSelectedC = sit.searchTable(group,tbl.table,searchTerm,fbuOptSelectedC,4,4);
  });
});
//-----------

//-----------
// Auto Load URL Parameters
$(document).ready(function(){
    wlt.urlTrigger('uniformA','#fbUniformA');
    wlt.urlTrigger('uniformB','#fbUniformB');
    wlt.urlTrigger('uniformC','#fbUniformC');
  });
  //-----------
  