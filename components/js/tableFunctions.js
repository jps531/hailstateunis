// Create String to Display
export function createWL(wins, losses, ties, table){
  var wlTotal = '<span class="badge badge-';
  var percentage;

  for (var z=0; z < table.rows().count(); z++){
    if (table.row(z, {search:'applied'})[0].length > 0){
      if (table.cell(z,8).data().toString().includes('Win')){
        wins += 1;
      }
      if (table.cell(z,8).data().toString().includes('Loss')){
        losses += 1;
      }
      if (table.cell(z,8).data().toString().includes('TIE')){
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