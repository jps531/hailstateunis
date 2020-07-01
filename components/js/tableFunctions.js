//-----------
// Table Functions

// Function: createWL
// Purpose: Create html object to display the w/l record of the currently drawn table
// Input(s): table: DataTable; table object of the currently drawn table
//           column: integer; the index of the column that displays win/loss information
// Output(s): optSelect: array
export function createWL(table, column){
  var wlTotal = '<span class="badge badge-';
  var percentage;
  var wins = 0;
  var losses = 0;
  var ties = 0;

  for (var z=0; z < table.rows().count(); z++){
    if (table.row(z, {search:'applied'})[0].length > 0){
      if (table.cell(z,column).data().toString().includes('Win')){
        wins += 1;
      }
      if (table.cell(z,column).data().toString().includes('Loss')){
        losses += 1;
      }
      if (table.cell(z,column).data().toString().includes('TIE')){
        ties += 1;
      }
    }
  }

  if (wins + losses > 0){
    percentage = ((wins + (.5 * ties)) / (wins + losses + ties)).toFixed(3);
  }
  else{
    percentage = 'no';
  }

  if (percentage > .5){
    wlTotal += 'success">';
  }

  else if (percentage < .5){
    wlTotal += 'danger">';
  }

  else if (percentage == .5 || percentage == 'no'){
    wlTotal += 'warning">';
  }

  if (wins != 1 && losses != 1){
    wlTotal += wins + ' Wins, ' + losses + ' Losses';
  }
  else if (wins == 1 && losses != 1){
    wlTotal += wins + ' Win, ' + losses + ' Losses';
  }
  else if (wins != 1 && losses == 1){
    wlTotal += wins + ' Wins, ' + losses + ' Loss';
  }
  else if (wins == 1 && losses == 1){
    wlTotal += wins + ' Win, ' + losses + ' Loss';
  }

  if (ties == 1){
    wlTotal += ', ' + ties + ' Tie';
  }
  else if (ties >= 1){
    wlTotal += ', ' + ties + ' Ties';
  }

  wlTotal += ' (' + percentage + ' Record)</span>';

  return wlTotal;
}

// Function: togglePageSize
// Purpose: Draw table to a different page size based on which filters are activited
// Input(s): filterTriggeredThis: bool; true if current filter is not selected, false if it is
//           filterTriggeredOther: bool; true if other filter is not selected, false if it is
//           pageLengthThis: integer; table length prior to filters being applied
//           pageLengthOther: integer; table length prior to filters being applied
//           table: DataTable; table object of the currently drawn table
//           value: string; value of the current filter
// Output(s): array containing [filterTriggeredThis: bool, pageLengthThis: integer]
//-----------
export function togglePageSize(filterTriggeredThis,filterTriggeredOther,pageLengthThis,pageLengthOther,table,value){

  if (value != ''){
    if (!filterTriggeredThis){
      if(!filterTriggeredOther){
        pageLengthThis = table.page.len();
      }
      else{
        pageLengthThis = pageLengthOther;
      }
      filterTriggeredThis = true;
    }
    table.page.len(-1).draw();
  }
  
  else if (table.page.len() == -1){
    filterTriggeredThis = false;
    if (!filterTriggeredOther && pageLengthThis){
      table.page.len(pageLengthThis).draw();
    }
  }

  return [filterTriggeredThis,pageLengthThis];
};

// Function: setURL
// Purpose: Set new url when a filter is selected or changed
// Input(s): searchTerm: string; the value of the filter which has been triggered
//           searchSubject: string; specifies which filter has been triggered
// Output(s): none
export function setURL(searchTerm,searchSubject){

  // Sanatize search term
  if (searchTerm){
    searchTerm = searchTerm.replace(/\^/g,"");
    searchTerm = searchTerm.replace(/\$/g,"");
    searchTerm = searchTerm.replace(/ /g,"_");
  }

  // Get current URL substring
  var subString = window.location.search.substring(1);
  var subStringContents = subString.split('&&');

  // Get current URL pathname
  var pathName = window.location.pathname;

  // Initalize new poststring
  var postString = '?';

  // Add existing, non-affected substring contents to new poststring
  for (var x = 0; x < subStringContents.length; x++){
    if(subStringContents[x].includes(searchSubject)){
      subStringContents.splice(x,1);
    }
  }
  for (var x = 0; x < subStringContents.length; x++){
    if(subStringContents.length && subStringContents[0] != ''){
      postString += subStringContents[x] + "&&";
    }
  }

  // Add searchTerm to new poststring if neccessary
  if (searchTerm){
    postString += searchSubject + '=' + searchTerm;
  }
  else{
    postString = postString.slice(0, -2);
  }

  // Push new URL
  history.pushState(null, '', pathName + postString);
};

// Function: urlTrigger
// Purpose: Automatically load url parameter into filter
// Input(s): pararm: string; specifies which parameter you want the terms for
//           selectID: string; specifies which filter should be triggered
// Output(s): none
export function urlTrigger(param,selectID){
  var value = getURLParameter(param);
  if (value.length){
    $(selectID).val(value).trigger('change');
  }
}

// Function: getURLParameter
// Purpose: Parse specific string from url parameter for use in filtering
// Input(s): pararm: string; specifies which parameter you want the terms for
// Output(s): paramTerms: array; an array of the terms associated with the input paramater
function getURLParameter(param){

  // Get url substring
  var url = window.location.search.substring(1);

  // Replace all underscores with spaces
  url = url.replace(/_/g," ");

  if(url){
    // Seperate filter terms into array
    var urlVariables = url.split('&&');
    for (var i = 0; i < urlVariables.length; i++){

      // Split into param and individual terms
      var paramContent = urlVariables[i].split('=');
      var paramTerms = paramContent[1].split('|');
      for (var j = 0; j < paramTerms.length; j++){
        paramTerms[j] = paramTerms[j].toLowerCase();
        paramTerms[j] = toTitleCase(paramTerms[j]);
        if (paramContent[0] == "opponent"){
            paramTerms[j] = teamCaseCorrections(paramTerms[j]);
        }
        else if (paramTerms[j] == "Dws 100"){
          paramTerms[j] = "DWS 100";
        }
      }

      // Return array of terms if matching param
      if (paramContent[0] == param){
        return paramTerms;
      }
    }
  }
  paramTerms = [];
  return(paramTerms);
};

// Function: toTitleCase
// Purpose: Capitalize the first letter of each word in a string
// Input(s): str: string; the un-capitalized string
// Output(s): string; the capitalized string
function toTitleCase(str) {
  return str.replace(/\w\S*/g, function(txt){
      return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();
  });
}

// Function: teamCaseCorrections
// Purpose: Get specific capitalization on some team names
// Input(s): tName: string; the current team name string
// Output(s): string; the fixed (or unchanged) team name string
function teamCaseCorrections(tName){
  if (tName == "Lsu"){
    return "LSU";
  }
  else if (tName == "Texas A&m"){
    return "Texas A&M";
  }
  else if (tName == "Miami Fl"){
    return "Miami FL";
  }
  else if (tName == "Nc State"){
    return "NC State";
  }
  else if (tName == "Ucf"){
    return "UCF";
  }
  if (tName == "Vcu"){
    return "VCU";
  }
  else if (tName == "Fl Gulf Coast"){
    return "FL Gulf Coast";
  }
  else if (tName == "Tcu"){
    return "TCU";
  }
  else if (tName == "Smu"){
    return "SMU";
  }
  else if (tName == "Ucsb"){
    return "UCSB";
  }
  else if (tName == "Depaul"){
    return "DePaul";
  }
  else if (tName == "Illinois-chicago"){
    return "Illinois-Chicago";
  }
  else if (tName == "Sc Upstate"){
    return "SEC Upstate";
  }
  else if (tName == "Fiu"){
    return "FIU";
  }
  else if (tName == "Utep"){
    return "UTEP";
  }
  else if (tName == "Utsa"){
    return "UTSA";
  }
  else if (tName == "Uab"){
    return "UAB";
  }
  else if (tName == "Miami Oh"){
    return "Miami OH";
  }
  else if (tName == "Florida A&m"){
    return "Florida A&M";
  }
  else if (tName == "Nc A&t"){
    return "NC A&T";
  }
  else if (tName == "Nc Central"){
    return "NC Central";
  }
  else if (tName == "Um East. Shore"){
    return "UM East. Shore";
  }
  else if (tName == "Tamu Cc"){
    return "TAMU CC";
  }
  else if (tName == "Utrgv"){
    return "UTRGV";
  }
  else if (tName == "Unlv"){
    return "UNLV";
  }
  else if (tName == "Ut Martin"){
    return "UT Martin";
  }
  else if (tName == "Ucla"){
    return "UCLA";
  }
  else if (tName == "Usc"){
    return "USC";
  }
  else if (tName == "Se Louisiana"){
    return "SE Louisiana";
  }
  else if (tName == "Ul Monroe"){
    return "UL Monroe";
  }
  else if (tName == "Se Missouri St."){
    return "SE Missouri St.";
  }
  else if (tName == "Alabama A&m"){
    return "Alabama A&M";
  }
  else if (tName == "Ms Valley State"){
    return "MS Valley State";
  }
  else if (tName == "Byu"){
    return "BYU";
  }
  else if (tName == "Umass"){
    return "UMass";
  }
  else if (tName == "Umass Lowell"){
    return "UMass Lowell";
  }
  else if (tName == "Unc Asheville"){
    return "UNC Asheville";
  }
  else if (tName == "Texas Pan-am"){
    return "Texas Pan-Am";
  }
  else if (tName == "Beth-cookman"){
    return "Beth-Cookman";
  }
  else if (tName == "Gardner-webb"){
    return "Gardner-Webb";
  }
  else if (tName == "Saint Mary%27s"){
    return "Saint Mary's";
  }
  else if (tName == "Saint Peter%27s"){
    return "Saint Peter's";
  }
  else if (tName == "St. Joseph%27s"){
    return "St. Joseph's";
  }
  else if (tName == "Mount St. Mary%27s"){
    return "Mount St. Mary's";
  }
  else if (tName == "Mra"){
    return "MRA";
  }
  else{
    return tName;
  }
};

//-----------