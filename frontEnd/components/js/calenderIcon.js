var dateInfo = [];

var months = [
    ['January' , '0'],
    ['February' , '1'],
    ['March' , '2'],
    ['April' , '3'],
    ['May' , '4'],
    ['June' , '5'],
    ['July' , '6'],
    ['August' , '7'],
    ['September' , '8'],
    ['October' , '9'],
    ['November' , '10'],
    ['December' , '11']
]

var daysOfWeek = [
    ['Monday' , '0'],
    ['Tuesday' , '1'],
    ['Wednesday' , '2'],
    ['Thursday' , '3'],
    ['Friday' , '4'],
    ['Saturday' , '5'],
    ['Sunday' , '6']
]

function getDateInfo(YYYYMMDD){
    var date = new Date(YYYYMMDD);
    var dayOfWeek = date.getDay();
    var month = date.getMonth();
    var day = date.getDate();

    for (i=0; i < 6; i++){
        if (daysOfWeek[i][1] == dayOfWeek){
            dayOfWeek = daysOfWeek[i][0];
        }
    }

    for (i=0; i < 12; i++){
        if (months[i][1] == month){
            month = months[i][0];
        }
    }

    day++;
    dateInfo = [dayOfWeek, month, day];
}

function setDateIconInfo(date, j){
    getDateInfo(date);

    document.getElementById("dayOfWeek-".concat(j)).innerHTML = dateInfo[0];
    document.getElementById("month-".concat(j)).innerHTML = dateInfo[1];
    document.getElementById("day-".concat(j)).innerHTML = dateInfo[2];
}

for (j=0; j < 4; j++){
    var j_date = document.getElementById("date-".concat(j)).getAttribute('title');
    setDateIconInfo(j_date, j);
}