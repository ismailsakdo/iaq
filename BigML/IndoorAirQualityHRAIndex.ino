/*
   Project by Syazwan Technology - 2 September 2022
   Gas ID: please insert your gas ID

   Dummy Variable:
   Formaldehyde
   Air Movement
   Air Motion

   Real Parameters:
   PM2.5
   CO2
   TVOC
*/

#include<Wire.h>
#include "ClosedCube_HDC1080.h"
#include <SoftwareSerial.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include "Adafruit_PM25AQI.h"
#include "Adafruit_CCS811.h"
#include <ESP8266WiFi.h>
#include <WiFiClientSecure.h>

#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 64 // OLED display height, in pixels

Adafruit_PM25AQI aqi = Adafruit_PM25AQI();
SoftwareSerial pmSerial(2, 3);
Adafruit_SSD1306 display(128, 64, & Wire, -1);
ClosedCube_HDC1080 hdc1080;
Adafruit_CCS811 ccs;

//------------- WiFi -----
const char* ssid = "YourSSID"; //--> Your wifi name or SSID.
const char* password = "YourPassword"; //--> Your wifi password.
const char* host = "script.google.com";
const int httpsPort = 443;

WiFiClientSecure client; //--> Create a WiFiClientSecure object.
String GAS_ID = "pleaseinsertyourgasidhere"; //--> spreadsheet script ID

//-------------end WiFi----

float thi; float t; float h; float nt; float nh;
int co2; int tvoc; int pm25; int pm10;
int string_tcat; int string_pm25cat; int string_tvoccat;
int string_hcat; int string_co2cat; int string_pm10cat; int totalRisk;

void setup() {
  Wire.begin();
  hdc1080.begin(0x40);
  Serial.begin(115200);
  pmSerial.begin(9600);

  //Particle
  if (! aqi.begin_UART(&pmSerial)) {
    Serial.println("Could not find PM 2.5 sensor!");
    while (1) delay(10);
  }

  //CO2
  if (!ccs.begin(0x5A)) {
    Serial.println("Failed to start sensor! Please check your wiring.");
    while (1);
  }

  while (!ccs.available());

  //OLED
  if (!display.begin(SSD1306_SWITCHCAPVCC, 0x3C)) {
    Serial.println(F("SSD1306 allocation failed"));
    for (;;);
  }
  delay(2000);
  display.clearDisplay();
  display.setTextColor(WHITE);
  Serial.println("PM25 found!");
  delay(1000);

  //WiFi
  WiFi.begin(ssid, password); //--> Connect to your WiFi router
  Serial.println("");

  Serial.print("Connecting");
  while (WiFi.status() != WL_CONNECTED) {
    Serial.print(".");
    //----------------------------------------Make the On Board Flashing LED on the process of connecting to the wifi router.
    digitalWrite(LED_BUILTIN, LOW);
    delay(250);
    digitalWrite(LED_BUILTIN, HIGH);
    delay(250);
    //----------------------------------------
  }
  //----------------------------------------
  digitalWrite(LED_BUILTIN, HIGH); //--> Turn off the On Board LED when it is connected to the wifi router.
  Serial.println("");
  Serial.print("Successfully connected to : ");
  Serial.println(ssid);
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());
  Serial.println();
  //----------------------------------------
  Serial.println("I'm awake, but I'm going into deep sleep mode for 30 seconds");

  client.setInsecure();
}

void loop() {

  PM25_AQI_Data data;

  if (! aqi.read(&data)) {
    Serial.println("Could not read from AQI");
    delay(500);  // try again in a bit!
    return;
  }

  Serial.println(F("---------------------------------------"));
  Serial.println(F("Concentration Units (standard)"));
  Serial.println(F("---------------------------------------"));
  Serial.print(F("PM 1.0: ")); Serial.print(data.pm10_standard);
  Serial.print(F("\t\tPM 2.5: ")); Serial.print(data.pm25_standard);
  Serial.print(F("\t\tPM 10: ")); Serial.println(data.pm100_standard);
  Serial.println(F("Concentration Units (environmental)"));
  Serial.println(F("---------------------------------------"));
  Serial.print(F("PM 1.0: ")); Serial.print(data.pm10_env);
  Serial.print(F("\t\tPM 2.5: ")); Serial.print(data.pm25_env);
  Serial.print(F("\t\tPM 10: ")); Serial.println(data.pm100_env);
  Serial.println(F("---------------------------------------"));

  //CO2 meter
  if (ccs.available()) {
    if (!ccs.readData()) {
      Serial.print("CO2: ");
      Serial.print(ccs.geteCO2());
      Serial.print("ppm, TVOC: ");
      Serial.println(ccs.getTVOC());
    }
    else {
      Serial.println("ERROR!");
      while (1);
    }
  }

  //Temperature and Humidity
  nt = hdc1080.readTemperature();
  nh = hdc1080.readHumidity();
  co2 = ccs.geteCO2();
  tvoc = ccs.getTVOC();
  pm10 = data.pm10_standard;
  pm25 = data.pm25_standard;

  //final calibration based on algorithm ***THI****
  t = (((1.0081 * nt) - (0.3202)) + 1.6); //Rsquare = 0.9999999125
  h = (((1.0305 * nh) - (0.7127)) - 16.54); // Rqsuare = 0.9996
  float tf = ((t * 1.8) + 32); //convertion of the temperature into Farenhiet
  thi = (tf - (0.55 - (0.55 * h / 100)) * (tf - 58));

  //display in serial result
  String temp = "Temperature : " + String(t) + " Degree Celcius";
  String humid = "Humidity : " + String(h) + " %";
  String temphumid = "THI Index : " + String(thi) + " THI Value";
  Serial.println(temp);
  Serial.println(humid);
  Serial.println(temphumid);

  //if else statement
  //dummy formaldehyde
  if (t > 30)
  {string_tcat = 1;}
  else
  { string_tcat = 0;}

  //real PM25
  if (pm25 > 10)
  {string_pm25cat = 1;}
  else
  { string_pm25cat = 0;}

  //real TVOC
  if (tvoc > 3)
  {string_tvoccat = 1;}
  else
  {string_tvoccat = 0;}

  //dummy Air Movement
  if (h > 68)
  {string_hcat = 1;}
  else
  {string_hcat = 0;}

  //real CO2
  if (co2> 600)
  {string_co2cat = 1;}
  else
  {string_co2cat = 0;}

  //dummy CFM
  if (pm10 > 20)
  {string_pm10cat = 1;}
  else
  {string_pm10cat = 0;}

  totalRisk = string_tcat + string_pm25cat + string_tvoccat + string_hcat + string_co2cat + string_pm10cat;
  Serial.println(string_pm25cat);
  Serial.println(totalRisk);
  sendData1();
  delay(6000);
}

//-----

// Subroutine for sending data to Google Sheets SendData1
// float t, float h, float thi, int co2, int tvoc, int pm25, int pm10
void sendData1() {
  Serial.println("==========");
  Serial.print("connecting to ");
  Serial.println(host);

  //----------------------------------------Connect to Google host
  if (!client.connect(host, httpsPort)) {
    Serial.println("connection failed");
    return;
  }
  //----------------------------------------

  //----------------------------------------Processing data and sending data
  String string_t =  String(t);
  String string_h =  String(h);
  String string_thi =  String(thi);
  String statusthi = "Good";
  String string_co2 = String(co2);
  String string_tvoc = String(tvoc);
  String string_pm25 = String(pm25);
  String string_pm10 = String(pm10);

  String url = "/macros/s/" + GAS_ID + "/exec?formaldehyde=" + string_t +
               "&pm25=" + string_pm25 + "&tvoc=" + string_tvoc +
               "&airmovement=" + string_h + "&co2=" + string_co2 + "&cfm=" + string_pm10 +
               "&hchocat=" + string_tcat + "&pm25cat=" + string_pm25cat + "&tvoccat=" + string_tvoccat +
               "&airmovementcat=" + string_hcat + "&co2cat=" + string_co2cat + "&cfmcat=" + string_pm10cat +
               "&totalRisk=" + totalRisk;

  Serial.print("requesting URL: ");
  Serial.println(url);

  client.print(String("GET ") + url + " HTTP/1.1\r\n" +
               "Host: " + host + "\r\n" +
               "User-Agent: BuildFailureDetectorESP8266\r\n" +
               "Connection: close\r\n\r\n");

  Serial.println("request sent");
  //----------------------------------------

  //----------------------------------------Checking whether the data was sent successfully or not
  while (client.connected()) {
    String line = client.readStringUntil('\n');
    if (line == "\r") {
      Serial.println("headers received");
      break;
    }
  }
  String line = client.readStringUntil('\n');
  if (line.startsWith("{\"state\":\"success\"")) {
    Serial.println("esp8266/Arduino CI successfull!");
  } else {
    Serial.println("esp8266/Arduino CI has failed");
  }
  Serial.print("reply was : ");
  Serial.println(line);
  Serial.println("closing connection");
  Serial.println("==========");
  Serial.println();
  //----------------------------------------

  //display on OLED LCD
  delay(500);
  display.clearDisplay();

  // display temperature
  display.setTextSize(1);
  display.setCursor(0, 0);
  display.print("Syazwan Technology");
  display.setTextSize(1);
  display.setCursor(0, 10);
  display.print("====================");
  display.setTextSize(1);
  display.setCursor(0, 20);
  display.print("HCHO [ppm] & AM [m/s]");
  display.setTextSize(1.5);
  display.setCursor(0, 30);
  display.print(t);
  display.print(" ");
  display.setTextSize(1);
  display.print(" ");
  display.setTextSize(1.5);
  display.setCursor(60, 30);
  display.print(h);
  display.print(" ");

  //display pm2.5
  display.setTextSize(1.5);
  display.setCursor(0, 40);
  display.print("AM:");
  display.setTextSize(1.5);
  display.setCursor(20, 40);
  display.print(pm10);
  display.print("CFM");
  display.setTextSize(1.5);
  display.setCursor(70, 40);
  display.print(pm25);
  display.print("(PM25) ");
  display.setTextSize(1.5);
  display.setCursor(0, 50);
  display.print("CO2:");
  display.setTextSize(1.5);
  display.setCursor(20, 50);
  display.print(co2);
  display.print(" TVOC ");
  display.setTextSize(1.5);
  display.setCursor(70, 50);
  display.print(tvoc);
  display.print("  ppb");

  display.display();

  delay(1000);
}
