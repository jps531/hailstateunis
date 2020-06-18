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