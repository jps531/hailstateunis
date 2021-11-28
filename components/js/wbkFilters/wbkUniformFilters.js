import * as tbl from '../wbkBuildTable.js';
import * as sit from '../uniformGameFunctions.js';
import * as grp from './wbkUniformFiltersApp.js';
import * as wlt from '../tableFunctions.js';

//-----------
// Load Uniform Filter
$(function(){ $("#wbkUniformA").selectpicker('render'); })
$(function(){ $("#wbkUniformB").selectpicker('render'); })
//-----------

//-----------
// Uniform A Select
var wbkuOptSelectedA = [];

$(document).ready(function(){
  $("#wbkUniformA").on("change", function() {
    var searchTerm = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );

    // Add to URL
    wlt.setURL(searchTerm,'uniformA');

        // Identify group
        var group;

        if(jQuery.inArray(this.value, grp.colors) !== -1){
            group = 0;
        }
        else if(jQuery.inArray(this.value, grp.designs) !== -1){
            group = 1;
        }
    
    // Uniform Colors
    wbkuOptSelectedA = sit.searchTable(group,tbl.wbkTable,searchTerm.toLowerCase(),wbkuOptSelectedA,0,4);
  
    // Uniform Designs
    wbkuOptSelectedA = sit.searchTable(group,tbl.wbkTable,searchTerm.toLowerCase(),wbkuOptSelectedA,1,8);
  });
});
//-----------

//-----------
// Uniform B Select
var wbkuOptSelectedB = [];

$(document).ready(function(){
  $("#wbkUniformB").on("change", function() {
    var searchTerm = $(this).find(':selected').map(function() {
      return $( this ).text();
    })
    .get()
    .join( "|" );

    // Add to URL
    wlt.setURL(searchTerm,'uniformB');

        // Identify group
        var group;

        if(jQuery.inArray(this.value, grp.colors) !== -1){
            group = 0;
        }
        else if(jQuery.inArray(this.value, grp.designs) !== -1){
            group = 1;
        }
    
    // Uniform Colors
    wbkuOptSelectedB = sit.searchTable(group,tbl.wbkTable,searchTerm,wbkuOptSelectedB,0,4);
  
    // Uniform Designs
    wbkuOptSelectedB = sit.searchTable(group,tbl.wbkTable,searchTerm,wbkuOptSelectedB,1,8);
  });
});
//-----------

//-----------
// Auto Load URL Parameters
$(document).ready(function(){
  wlt.urlTrigger('uniformA','#wbkUniformA');
  wlt.urlTrigger('uniformB','#wbkUniformB');
});
//-----------

//-----------
// Set Filters for Mobile
if( /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ) {
  $('#wbkUniformA').selectpicker('mobile');
  $('#wbkUniformB').selectpicker('mobile');
}
//-----------
