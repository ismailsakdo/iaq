function doGet(e) { 
  Logger.log( JSON.stringify(e) );
  var result = 'Ok';
  if (e.parameter == 'undefined') {
    result = 'No Parameters';
  }
else {
  var sheet_id = '1fN9Ov1L8cPDuBRDMgQYGP6vPYliNrAM3nzR_2aPLUTc'; // Spreadsheet ID
  var sheet = SpreadsheetApp.openById(sheet_id).getActiveSheet();
  var newRow = sheet.getLastRow() + 1; 
  var rowData = [];
  var Curr_Date = new Date();
  rowData[0] = Curr_Date; // Date in column A
  var Curr_Time = Utilities.formatDate(Curr_Date, "Asia/Singapore", 'HH:mm:ss');
  rowData[1] = Curr_Time; // Time in column B
  for (var param in e.parameter) {
    Logger.log('In for loop, param=' + param);
    var value = stripQuotes(e.parameter[param]);
    Logger.log(param + ':' + e.parameter[param]);
    switch (param) {
      case 'formaldehyde':
        rowData[2] = value; // Temperature
        result = 'Temp Written on column C'; 
        break;
      case 'pm25':
        rowData[3] = value; // Humidity
        result += ' ,Humidity Written on column D'; 
        break;
      case 'tvoc':
        rowData[4] = value; // THI
        result += ' ,co2 Written on column D'; 
        break;
      case 'airmovement':
        rowData[5] = value; // status
        result += ' ,tvoc'; 
        break;
      case 'co2':
        rowData[6] = value; // status
        result += ' ,pm2.5'; 
        break;
      case 'cfm':
        rowData[7] = value; // status
        result += ' ,pm10'; 
        break; 
      case 'hchocat':
        rowData[8] = value; // status
        result += ' ,thi'; 
        break; 
      case 'pm25cat':
        rowData[9] = value; // status
        result += ' ,status'; 
        break; 
      case 'tvoccat':
        rowData[10] = value; // status
        result += ' ,status'; 
        break;
      case 'airmovementcat':
        rowData[11] = value; // status
        result += ' ,status'; 
        break;
      case 'co2cat':
        rowData[12] = value; // status
        result += ' ,status'; 
        break; 
      case 'cfmcat':
        rowData[13] = value; // status
        result += ' ,status'; 
        break;
      case 'totalRisk':
        rowData[14] = value; // status
        result += ' ,status'; 
        break; 
        default:
        result = "unsupported parameter";
    }
  }
  Logger.log(JSON.stringify(rowData));
  var newRange = sheet.getRange(newRow, 1, 1, rowData.length);
  newRange.setValues([rowData]);
}
  return ContentService.createTextOutput(result);
}
function stripQuotes( value ) {
  return value.replace(/^["']|['"]$/g, "");
}


function sendEmail(){
  var ss = SpreadsheetApp.getActiveSpreadsheet();
  var sheet = ss.getSheetByName("Sheet1");
  
  var lastRow = sheet.getLastRow();
  var lastColumn = sheet.getLastColumn();
  var maxRow = sheet.getMaxRows();
  var maxCol = sheet.getMaxColumns();
  
  //var accZ = sheet.getRange(lastRow, lastColumn-1).getValue();
  var lastCell = sheet.getRange(lastRow-1, lastColumn).getValue();
  Logger.log(lastCell);
  
  if(lastCell=="Poor")
  {
    GmailApp.sendEmail("mywataverse@gmail.com", "Alert", "Humidex Trigger, check temperature and humidity in the location. Alert 1 Activated");
  } 
}
