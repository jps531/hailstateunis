import * as tbl from '../mbkBuildTable.js';
import * as sit from '../uniformGameFunctions.js';
import * as grp from './mbkUniformFiltersApp.js';
import * as wlt from '../tableFunctions.js';

//-----------
// Load Uniform Filter
$(function(){ $("#mbkUniformA").selectpicker('render'); })
$(function(){ $("#mbkUniformB").selectpicker('render'); })
//-----------

//-----------
// Uniform A Select
var mbkuOptSelectedA = [];

$(document).ready(function(){
  $("#mbkUniformA").on("change", function() {
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
    mbkuOptSelectedA = sit.searchTable(group,tbl.mbkTable,searchTerm,mbkuOptSelectedA,0,4);
  
    // Uniform Designs
    mbkuOptSelectedA = sit.searchTable(group,tbl.mbkTable,searchTerm,mbkuOptSelectedA,1,8);
  });
});
//-----------

//-----------
// Uniform B Select
var mbkuOptSelectedB = [];

$(document).ready(function(){
  $("#mbkUniformB").on("change", function() {
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
    mbkuOptSelectedB = sit.searchTable(group,tbl.mbkTable,searchTerm,mbkuOptSelectedB,0,4);
  
    // Uniform Designs
    mbkuOptSelectedB = sit.searchTable(group,tbl.mbkTable,searchTerm,mbkuOptSelectedB,1,8);
  });
});
//-----------

//-----------
// Auto Load URL Parameters
$(document).ready(function(){
  wlt.urlTrigger('uniformA','#mbkUniformA');
  wlt.urlTrigger('uniformB','#mbkUniformB');
});
//-----------

//-----------
// Set Filters for Mobile
if( /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ) {
  $('#mbkUniformA').selectpicker('mobile');
  $('#mbkUniformB').selectpicker('mobile');
}
//-----------
