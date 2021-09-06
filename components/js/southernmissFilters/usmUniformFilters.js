import * as tbl from '../usmBuildTable.js';
import * as sit from '../uniformGameFunctions.js';
import * as grp from './usmUniformFiltersApp.js';
import * as wlt from '../tableFunctions.js';

//-----------
// Uniform A Select
var usmuOptSelectedA = [];

$(document).ready(function(){
  $("#usmUniformA").on("change", function() {

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
    if (this.value == 'Black Helmets'){
        searchTerm = searchTerm.concat('|black');
    }

    else if (this.value == 'White Helmets'){
        searchTerm = searchTerm.concat('|white');
    }

    else if (this.value == 'Gold Helmets'){
        searchTerm = searchTerm.concat('|gold');
    }
  
    else if (this.value == 'Gloss Black Helmets'){
        searchTerm = searchTerm.concat('|gloss');
    }

    else if (this.value == 'Matte Black Helmets'){
        searchTerm = searchTerm.concat('|matte');
    }

    else if (this.value == '2015 Helmet Design'){
        searchTerm = searchTerm.concat('|2015');
    }

    else if (this.value == '2003 Helmet Design'){
        searchTerm = searchTerm.concat('|2003');
    }

    else if (this.value == '1980 Helmet Design'){
        searchTerm = searchTerm.concat('|1980');
    }

    else if (this.value == 'American Flag Helmets'){
        searchTerm = searchTerm.concat('|america');
    }
  
    else if (this.value == 'Black Jerseys'){
        searchTerm = searchTerm.concat('|black');
    }
  
    else if (this.value == 'White Jerseys'){
        searchTerm = searchTerm.concat('|white');
    }
  
    else if (this.value == 'Gold Jerseys'){
        searchTerm = searchTerm.concat('|gold');
    }
  
    else if (this.value == 'Heather Gray Jerseys'){
        searchTerm = searchTerm.concat('|gray');
    }

    else if (this.value == 'Black Pants'){
        searchTerm = searchTerm.concat('|black');
    }
  
    else if (this.value == 'White Pants'){
        searchTerm = searchTerm.concat('|white');
    }
  
    else if (this.value == 'Gold Pants'){
        searchTerm = searchTerm.concat('|gold');
    }

    else if (this.value == 'Heather Gray Pants'){
        searchTerm = searchTerm.concat('|gray');
    }

    // Helmets
    usmuOptSelectedA = sit.searchTable(group,tbl.southernmissTable,searchTerm,usmuOptSelectedA,0,5);
  
    // Jerseys
    usmuOptSelectedA = sit.searchTable(group,tbl.southernmissTable,searchTerm,usmuOptSelectedA,1,6);
  
    // Pants
    usmuOptSelectedA = sit.searchTable(group,tbl.southernmissTable,searchTerm,usmuOptSelectedA,2,7);
  });
});
//-----------

//-----------
// Uniform B Select
var usmuOptSelectedB = [];

$(document).ready(function(){
  $("#usmUniformB").on("change", function() {

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
    if (this.value == 'Black Helmets'){
        searchTerm = searchTerm.concat('|black');
    }

    else if (this.value == 'White Helmets'){
        searchTerm = searchTerm.concat('|white');
    }

    else if (this.value == 'Gold Helmets'){
        searchTerm = searchTerm.concat('|gold');
    }
  
    else if (this.value == 'Gloss Black Helmets'){
        searchTerm = searchTerm.concat('|gloss');
    }

    else if (this.value == 'Matte Black Helmets'){
        searchTerm = searchTerm.concat('|matte');
    }

    else if (this.value == '2015 Helmet Design'){
        searchTerm = searchTerm.concat('|2015');
    }

    else if (this.value == '2003 Helmet Design'){
        searchTerm = searchTerm.concat('|2003');
    }

    else if (this.value == '1980 Helmet Design'){
        searchTerm = searchTerm.concat('|1980');
    }

    else if (this.value == 'American Flag Helmets'){
        searchTerm = searchTerm.concat('|america');
    }
  
    else if (this.value == 'Black Jerseys'){
        searchTerm = searchTerm.concat('|black');
    }
  
    else if (this.value == 'White Jerseys'){
        searchTerm = searchTerm.concat('|white');
    }
  
    else if (this.value == 'Gold Jerseys'){
        searchTerm = searchTerm.concat('|gold');
    }
  
    else if (this.value == 'Heather Gray Jerseys'){
        searchTerm = searchTerm.concat('|gray');
    }

    else if (this.value == 'Black Pants'){
        searchTerm = searchTerm.concat('|black');
    }
  
    else if (this.value == 'White Pants'){
        searchTerm = searchTerm.concat('|white');
    }
  
    else if (this.value == 'Gold Pants'){
        searchTerm = searchTerm.concat('|gold');
    }

    else if (this.value == 'Heather Gray Pants'){
        searchTerm = searchTerm.concat('|gray');
    }
  
    // Helmets
    usmuOptSelectedB = sit.searchTable(group,tbl.southernmissTable,searchTerm,usmuOptSelectedB,0,5);
  
    // Jerseys
    usmuOptSelectedB = sit.searchTable(group,tbl.southernmissTable,searchTerm,usmuOptSelectedB,1,6);
  
    // Pants
    usmuOptSelectedB = sit.searchTable(group,tbl.southernmissTable,searchTerm,usmuOptSelectedB,2,7);
  });
});
//-----------

//-----------
// Uniform C Select
var usmuOptSelectedC = [];

$(document).ready(function(){
  $("#usmUniformC").on("change", function() {

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
    if (this.value == 'Black Helmets'){
        searchTerm = searchTerm.concat('|black');
    }

    else if (this.value == 'White Helmets'){
        searchTerm = searchTerm.concat('|white');
    }

    else if (this.value == 'Gold Helmets'){
        searchTerm = searchTerm.concat('|gold');
    }
  
    else if (this.value == 'Gloss Black Helmets'){
        searchTerm = searchTerm.concat('|gloss');
    }

    else if (this.value == 'Matte Black Helmets'){
        searchTerm = searchTerm.concat('|matte');
    }

    else if (this.value == '2015 Helmet Design'){
        searchTerm = searchTerm.concat('|2015');
    }

    else if (this.value == '2003 Helmet Design'){
        searchTerm = searchTerm.concat('|2003');
    }

    else if (this.value == '1980 Helmet Design'){
        searchTerm = searchTerm.concat('|1980');
    }

    else if (this.value == 'American Flag Helmets'){
        searchTerm = searchTerm.concat('|america');
    }
  
    else if (this.value == 'Black Jerseys'){
        searchTerm = searchTerm.concat('|black');
    }
  
    else if (this.value == 'White Jerseys'){
        searchTerm = searchTerm.concat('|white');
    }
  
    else if (this.value == 'Gold Jerseys'){
        searchTerm = searchTerm.concat('|gold');
    }
  
    else if (this.value == 'Heather Gray Jerseys'){
        searchTerm = searchTerm.concat('|gray');
    }

    else if (this.value == 'Black Pants'){
        searchTerm = searchTerm.concat('|black');
    }
  
    else if (this.value == 'White Pants'){
        searchTerm = searchTerm.concat('|white');
    }
  
    else if (this.value == 'Gold Pants'){
        searchTerm = searchTerm.concat('|gold');
    }

    else if (this.value == 'Heather Gray Pants'){
        searchTerm = searchTerm.concat('|gray');
    }
  
    // Helmets
    usmuOptSelectedC = sit.searchTable(group,tbl.southernmissTable,searchTerm,usmuOptSelectedC,0,5);
  
    // Jerseys
    usmuOptSelectedC = sit.searchTable(group,tbl.southernmissTable,searchTerm,usmuOptSelectedC,1,6);
  
    // Pants
    usmuOptSelectedC = sit.searchTable(group,tbl.southernmissTable,searchTerm,usmuOptSelectedC,2,7);
  });
});
//-----------

//-----------
// Auto Load URL Parameters
$(document).ready(function(){
    wlt.urlTrigger('uniformA','#usmUniformA');
    wlt.urlTrigger('uniformB','#usmUniformB');
    wlt.urlTrigger('uniformC','#usmUniformC');
  });
  //-----------
  