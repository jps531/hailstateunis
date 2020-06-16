import * as tbl from '../fbBuildTable.js';
import * as sit from '../situationFunctions.js';

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
    
    // Add month names to search term
    if (this.value == 'All Alternates'){
        searchTerm = searchTerm.concat('|alternates');
    }

    else if (this.value == 'Maroon Helmets'){
        searchTerm = searchTerm.concat('|maroon');
    }
  
    else if (this.value == 'Shiny Maroon Helmets'){
        searchTerm = searchTerm.concat('|shiny');
    }

    else if (this.value == 'Matte Maroon Helmets'){
        searchTerm = searchTerm.concat('|matte');
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
    if(searchTerm.includes('Alternates')){
        tbl.table.column(4).search(searchTerm, true, false).draw();
        fbuOptSelectedA.push(0);
      }
    else{
        sit.situationToggleElse(0,4,fbuOptSelectedA,tbl.table);
    }
  
    // Helmets
    if(searchTerm.includes('Helmets')){
        tbl.table.column(5).search(searchTerm, true, false).draw();
        fbuOptSelectedA.push(1);
    }
    else{
        sit.situationToggleElse(1,5,fbuOptSelectedA,tbl.table);
    }
  
    // Jerseys
    if(searchTerm.includes('Jerseys')){
        tbl.table.column(6).search(searchTerm, true, false).draw();
        fbuOptSelectedA.push(2);
    }
    else{
        sit.situationToggleElse(2,6,fbuOptSelectedA,tbl.table);
    }
  
    // Pants
    if(searchTerm.includes('Pants')){
        tbl.table.column(7).search(searchTerm, true, false).draw();
        fbuOptSelectedA.push(3);
    }
    else{
        sit.situationToggleElse(3,7,fbuOptSelectedA,tbl.table);
    }
  
    // Patches
    if(searchTerm.includes('dws 100')||searchTerm.includes('Nick Bell')){
        tbl.table.column(4).search(searchTerm, true, false).draw();
        fbuOptSelectedA.push(4);
    }
    else{
        sit.situationToggleElse(4,4,fbuOptSelectedA,tbl.table);
    }
  });
});

$(function() {
  $('#fbUniformAClear').click(function() {
    $("#fbUniformA").val('').trigger('change');
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
    
    // Add month names to search term
    if (this.value == 'All Alternates'){
        searchTerm = searchTerm.concat('|alternates');
    }

    else if (this.value == 'Maroon Helmets'){
        searchTerm = searchTerm.concat('|maroon');
    }
  
    else if (this.value == 'Shiny Maroon Helmets'){
        searchTerm = searchTerm.concat('|shiny');
    }

    else if (this.value == 'Matte Maroon Helmets'){
        searchTerm = searchTerm.concat('|matte');
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
    if(searchTerm.includes('Alternates')){
        tbl.table.column(4).search(searchTerm, true, false).draw();
        fbuOptSelectedB.push(0);
      }
    else{
        sit.situationToggleElse(0,4,fbuOptSelectedB,tbl.table);
    }
  
    // Helmets
    if(searchTerm.includes('Helmets')){
        tbl.table.column(5).search(searchTerm, true, false).draw();
        fbuOptSelectedB.push(1);
    }
    else{
        sit.situationToggleElse(1,5,fbuOptSelectedB,tbl.table);
    }
  
    // Jerseys
    if(searchTerm.includes('Jerseys')){
        tbl.table.column(6).search(searchTerm, true, false).draw();
        fbuOptSelectedB.push(2);
    }
    else{
        sit.situationToggleElse(2,6,fbuOptSelectedB,tbl.table);
    }
  
    // Pants
    if(searchTerm.includes('Pants')){
        tbl.table.column(7).search(searchTerm, true, false).draw();
        fbuOptSelectedB.push(3);
    }
    else{
        sit.situationToggleElse(3,7,fbuOptSelectedB,tbl.table);
    }
  
    // Patches
    if(searchTerm.includes('dws 100')||searchTerm.includes('Nick Bell')){
        tbl.table.column(4).search(searchTerm, true, false).draw();
        fbuOptSelectedB.push(4);
    }
    else{
        sit.situationToggleElse(4,4,fbuOptSelectedB,tbl.table);
    }
  });
});

$(function() {
  $('#fbUniformBClear').click(function() {
    $("#fbUniformB").val('').trigger('change');
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
    
    // Add month names to search term
    if (this.value == 'All Alternates'){
        searchTerm = searchTerm.concat('|alternates');
    }

    else if (this.value == 'Maroon Helmets'){
        searchTerm = searchTerm.concat('|maroon');
    }
  
    else if (this.value == 'Shiny Maroon Helmets'){
        searchTerm = searchTerm.concat('|shiny');
    }

    else if (this.value == 'Matte Maroon Helmets'){
        searchTerm = searchTerm.concat('|matte');
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
    if(searchTerm.includes('Alternates')){
        tbl.table.column(4).search(searchTerm, true, false).draw();
        fbuOptSelectedC.push(0);
      }
    else{
        sit.situationToggleElse(0,4,fbuOptSelectedC,tbl.table);
    }
  
    // Helmets
    if(searchTerm.includes('Helmets')){
        tbl.table.column(5).search(searchTerm, true, false).draw();
        fbuOptSelectedC.push(1);
    }
    else{
        sit.situationToggleElse(1,5,fbuOptSelectedC,tbl.table);
    }
  
    // Jerseys
    if(searchTerm.includes('Jerseys')){
        tbl.table.column(6).search(searchTerm, true, false).draw();
        fbuOptSelectedC.push(2);
    }
    else{
        sit.situationToggleElse(2,6,fbuOptSelectedC,tbl.table);
    }
  
    // Pants
    if(searchTerm.includes('Pants')){
        tbl.table.column(7).search(searchTerm, true, false).draw();
        fbuOptSelectedC.push(3);
    }
    else{
        sit.situationToggleElse(3,7,fbuOptSelectedC,tbl.table);
    }
  
    // Patches
    if(searchTerm.includes('dws 100')||searchTerm.includes('Nick Bell')){
        tbl.table.column(4).search(searchTerm, true, false).draw();
        fbuOptSelectedC.push(4);
    }
    else{
        sit.situationToggleElse(4,4,fbuOptSelectedC,tbl.table);
    }
  });
});

$(function() {
  $('#fbUniformCClear').click(function() {
    $("#fbUniformC").val('').trigger('change');
  });
});
//-----------