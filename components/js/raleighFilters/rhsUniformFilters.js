import * as tbl from '../rhsBuildTable.js';
import * as sit from '../uniformGameFunctions.js';
import * as grp from './rhsUniformFiltersApp.js';
import * as wlt from '../tableFunctions.js';

//-----------
// Uniform A Select
var rhsuOptSelectedA = [];

$(document).ready(function(){
  $("#rhsUniformA").on("change", function() {

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
    if (this.value == 'RHS Helmets'){
        searchTerm = searchTerm.concat('|rhs');
    }
  
    else if (this.value == 'Lion Helmets'){
        searchTerm = searchTerm.concat('|lion');
    }

    else if (this.value == 'Number Helmets'){
        searchTerm = searchTerm.concat('|number');
    }

    else if (this.value == 'Maroon Helmets'){
        searchTerm = searchTerm.concat('|maroon');
    }
  
    else if (this.value == 'White Helmets'){
        searchTerm = searchTerm.concat('|white');
    }

    else if (this.value == 'Maroon Jerseys'){
        searchTerm = searchTerm.concat('|maroon');
    }
  
    else if (this.value == 'White Jerseys'){
        searchTerm = searchTerm.concat('|white');
    }
  
    else if (this.value == 'Dark Gray Jerseys'){
        searchTerm = searchTerm.concat('|dark gray');
    }

    else if (this.value == 'Black Jerseys'){
        searchTerm = searchTerm.concat('|black');
    }

    else if (this.value == 'Maroon Pants'){
        searchTerm = searchTerm.concat('|maroon');
    }
  
    else if (this.value == 'White Pants'){
        searchTerm = searchTerm.concat('|white');
    }
  
    else if (this.value == 'Dark Gray Pants'){
        searchTerm = searchTerm.concat('|dark gray');
    }

    else if (this.value == 'Light Gray Pants'){
        searchTerm = searchTerm.concat('|light gray');
    }

    else if (this.value == 'Black Pants'){
        searchTerm = searchTerm.concat('|black');
    }

    // Helmets
    rhsuOptSelectedA = sit.searchTable(group,tbl.raleighTable,searchTerm,rhsuOptSelectedA,0,5);
  
    // Jerseys
    rhsuOptSelectedA = sit.searchTable(group,tbl.raleighTable,searchTerm,rhsuOptSelectedA,1,6);
  
    // Pants
    rhsuOptSelectedA = sit.searchTable(group,tbl.raleighTable,searchTerm,rhsuOptSelectedA,2,7);
  });
});
//-----------

//-----------
// Uniform B Select
var rhsuOptSelectedB = [];

$(document).ready(function(){
  $("#rhsUniformB").on("change", function() {

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
    if (this.value == 'RHS Helmets'){
        searchTerm = searchTerm.concat('|rhs');
    }
  
    else if (this.value == 'Lion Helmets'){
        searchTerm = searchTerm.concat('|lion');
    }

    else if (this.value == 'Number Helmets'){
        searchTerm = searchTerm.concat('|number');
    }

    else if (this.value == 'Maroon Helmets'){
        searchTerm = searchTerm.concat('|maroon');
    }
  
    else if (this.value == 'White Helmets'){
        searchTerm = searchTerm.concat('|white');
    }

    else if (this.value == 'Maroon Jerseys'){
        searchTerm = searchTerm.concat('|maroon');
    }
  
    else if (this.value == 'White Jerseys'){
        searchTerm = searchTerm.concat('|white');
    }
  
    else if (this.value == 'Dark Gray Jerseys'){
        searchTerm = searchTerm.concat('|dark gray');
    }

    else if (this.value == 'Black Jerseys'){
        searchTerm = searchTerm.concat('|black');
    }

    else if (this.value == 'Maroon Pants'){
        searchTerm = searchTerm.concat('|maroon');
    }
  
    else if (this.value == 'White Pants'){
        searchTerm = searchTerm.concat('|white');
    }
  
    else if (this.value == 'Dark Gray Pants'){
        searchTerm = searchTerm.concat('|dark gray');
    }

    else if (this.value == 'Light Gray Pants'){
        searchTerm = searchTerm.concat('|light gray');
    }

    else if (this.value == 'Black Pants'){
        searchTerm = searchTerm.concat('|black');
    }

    // Helmets
    rhsuOptSelectedB = sit.searchTable(group,tbl.raleighTable,searchTerm,rhsuOptSelectedB,0,5);
  
    // Jerseys
    rhsuOptSelectedB = sit.searchTable(group,tbl.raleighTable,searchTerm,rhsuOptSelectedB,1,6);
  
    // Pants
    rhsuOptSelectedB = sit.searchTable(group,tbl.raleighTable,searchTerm,rhsuOptSelectedB,2,7);
  });
});
//-----------

//-----------
// Uniform C Select
var rhsuOptSelectedC = [];

$(document).ready(function(){
  $("#rhsUniformC").on("change", function() {

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
    if (this.value == 'RHS Helmets'){
        searchTerm = searchTerm.concat('|rhs');
    }
  
    else if (this.value == 'Lion Helmets'){
        searchTerm = searchTerm.concat('|lion');
    }

    else if (this.value == 'Number Helmets'){
        searchTerm = searchTerm.concat('|number');
    }

    else if (this.value == 'Maroon Helmets'){
        searchTerm = searchTerm.concat('|maroon');
    }
  
    else if (this.value == 'White Helmets'){
        searchTerm = searchTerm.concat('|white');
    }

    else if (this.value == 'Maroon Jerseys'){
        searchTerm = searchTerm.concat('|maroon');
    }
  
    else if (this.value == 'White Jerseys'){
        searchTerm = searchTerm.concat('|white');
    }
  
    else if (this.value == 'Dark Gray Jerseys'){
        searchTerm = searchTerm.concat('|dark gray');
    }

    else if (this.value == 'Black Jerseys'){
        searchTerm = searchTerm.concat('|black');
    }

    else if (this.value == 'Maroon Pants'){
        searchTerm = searchTerm.concat('|maroon');
    }
  
    else if (this.value == 'White Pants'){
        searchTerm = searchTerm.concat('|white');
    }
  
    else if (this.value == 'Dark Gray Pants'){
        searchTerm = searchTerm.concat('|dark gray');
    }

    else if (this.value == 'Light Gray Pants'){
        searchTerm = searchTerm.concat('|light gray');
    }

    else if (this.value == 'Black Pants'){
        searchTerm = searchTerm.concat('|black');
    }

    // Helmets
    rhsuOptSelectedC = sit.searchTable(group,tbl.raleighTable,searchTerm,rhsuOptSelectedC,0,5);
  
    // Jerseys
    rhsuOptSelectedC = sit.searchTable(group,tbl.raleighTable,searchTerm,rhsuOptSelectedC,1,6);
  
    // Pants
    rhsuOptSelectedC = sit.searchTable(group,tbl.raleighTable,searchTerm,rhsuOptSelectedC,2,7);
  });
});
//-----------

//-----------
// Auto Load URL Parameters
$(document).ready(function(){
    wlt.urlTrigger('uniformA','#rhsUniformA');
    wlt.urlTrigger('uniformB','#rhsUniformB');
    wlt.urlTrigger('uniformC','#rhsUniformC');
});
//-----------
