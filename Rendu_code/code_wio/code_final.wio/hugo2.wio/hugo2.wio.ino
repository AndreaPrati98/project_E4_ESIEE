//################################ librairies ################################
//Screen librairies
#include "seeed_line_chart.h"
#include "TFT_eSPI.h" 
#include <SPI.h>  

//Storage librairies
#include <Seeed_FS.h> 
#include "SD/Seeed_SD.h" 

//i2c
#include <Wire.h>  

//Sensors librairies
#include "MAX30105.h" 
#include "LIS3DHTR.h" 
#include <Adafruit_MLX90614.h> 
#include "heartRate.h"          

//################################ objects ################################
//Screen objects
TFT_eSPI tft; 
TFT_eSprite spr = TFT_eSprite(&tft);

//Sensors objects
LIS3DHTR<TwoWire> lis; 
MAX30105 particleSensor; 
Adafruit_MLX90614 mlx = Adafruit_MLX90614(); 

//Storage object
File myFile;

//################################ constants ################################
#define MAX_SIZE 50 // maximum size of data (display)
doubles ir_disp; // Initilising a doubles type to store data

#define buttonOn WIO_KEY_C //left button
#define buttonOff WIO_KEY_A  //right button = OFF

int fileCounter = 1; //files created counter 
bool openFile = false;
const float savePeriod = 1000; //(ms)
float lastSave = 0; //(ms)
float currentTime; //(ms)

//IR 
const float irSamplingFrequency = 256; //(Hz)
const float irCooldown = 1 / irSamplingFrequency * 1000; //(ms)
float irLastSave = 0; //(ms)
long  irValue = 0; //(u?)

//Acceleration
const float accelerationSamplingFrequency = 32; //(Hz) 
const float accelerationCooldown = 1 / accelerationSamplingFrequency * 1000; //(ms)
float accelerationLastSave = 0; //(ms)
float xValue, yValue, zValue; //(u?)

//temperature
const float temperatureSamplingFrequency = 3; //(Hz)
const float temperatureCooldown = 1 / temperatureSamplingFrequency * 1000; //(ms)
float temperatureLastSave = 0; //(ms)
float temperatureValue; //(celsius)

//HR 
const float heartRateSamplingFrequency = 1; //(Hz)
const float heartRateCooldown = 1 / heartRateSamplingFrequency * 1000; //(ms)
float heartRateLastSave = 0; //(ms)  

//SPO2
const float spo2SamplingFrequency = 1; //(Hz)
const float spo2Cooldown = 1 / spo2SamplingFrequency * 1000; //(ms)
float spo2LastSave = 0; //(ms)
int spo2Value; //(%)

//Bpm
const byte RATE_SIZE = 15; //Increase this for more averaging. 4 is good.
byte rates[RATE_SIZE];
byte rateSpot = 0;
long lastBeat = 0; //(ms)
float beatsPerMinute;
int beatAvg; //(bpm)
int bpmValue; // (bpm)

//################################ setup ################################
void setup()
{
  pinMode(buttonOn, INPUT); 
  pinMode(buttonOff, INPUT); 

  initializeSensors();
  drawWaitingScreen();
  createSavingFile();
}

//################################ loop ################################
void loop()
{ 
  if(!openFile)
  {
    while(digitalRead(buttonOn) == HIGH);
    myFile = SD.open("data" + String(fileCounter) + ".csv", FILE_APPEND); 
    drawRecordingBackground();
    openFile = true; 
  }

  currentTime = millis(); 
  bpmValue = bpmCalculator();
  particleSensor.update();
  spo2Value = particleSensor.getSpO2();
  irValue = particleSensor.getIR();    //retrieve the IR read value 
  
  if(currentTime - lastSave > savePeriod)
  {  
    //IR measurement 
    /*
    if ((currentTime - irLastSave) > irCooldown)
    {  
      irUpdate(irValue); 
      displayLineGraph();
      irLastSave = currentTime;
    }*/

    // Acceleration measurement 
    if ((currentTime - accelerationLastSave) >= accelerationCooldown)
    {
      xValue = lis.getAccelerationX(); 
      yValue = lis.getAccelerationY(); 
      zValue = lis.getAccelerationZ();
      saveAcceleration(xValue, yValue, zValue); 
      accelerationLastSave = currentTime;
    }

    //HR measurement  
    /*
    if ((currentTime - heartRateLastSave) >= heartRateCooldown)
    {
      saveHeartRate(bpmValue);
      heartRateLastSave = currentTime;
    }
    */

    // Spo2 measurement
    if ((currentTime - spo2LastSave) >= spo2Cooldown)
    {
      saveSPO2(spo2Value);
      spo2LastSave = currentTime;
    }

    //Temperature measurement  
    if ((currentTime - temperatureLastSave) >= temperatureCooldown)
    { 
      temperatureValue = mlx.readObjectTempC();
      saveTemperature(temperatureValue);
      temperatureLastSave = currentTime;
    }

    lastSave = currentTime;
    drawData(xValue, yValue, zValue, bpmValue, spo2Value, temperatureValue);
  }

  if (digitalRead(buttonOff) == LOW)
  {
    drawEnd();
    myFile.close();
    myFile.println("Fin enregistrement !");
    while(1); //infinite loop (while we restart the terminal)
  } 
}

//################################ fonctions ################################
int bpmCalculator()
{
  irValue = particleSensor.getIR();    //Reading the IR value it will permit us to know if there's a finger on the sensor or not
  if(irValue > 30000){ //If a finger is detected   
    if (checkForBeat(irValue) == true) //If a heart beat is detected
    {           
      long delta = millis() - lastBeat;                   
      lastBeat = millis();

      beatsPerMinute = 60 / (delta / 1000.0); //Calculating the BPM

      if (beatsPerMinute < 255 && beatsPerMinute > 20) //To calculate the average we store some values (4) then do some maths to calculate the average
      {
        rates[rateSpot++] = (byte)beatsPerMinute; //Store this reading in the array
        rateSpot %= RATE_SIZE; //Wrap variable

        //Take average of readings
        beatAvg = 0;
        for (byte x = 0 ; x < RATE_SIZE ; x++)
          beatAvg += rates[x];
        beatAvg /= RATE_SIZE;
      }  
    } 
  }
  else beatAvg = 0; //If no finger is detected it puts the average BPM to 0
       
  return beatAvg;
}

void createSavingFile()
{
  // Creation File name data+compteur with extention csv 
  while (SD.exists("data" + String(fileCounter) + ".csv")) {
    fileCounter = fileCounter + 1;
  }
  myFile = SD.open("data" + String(fileCounter) + ".csv", FILE_WRITE); // ouvre le fichier en ??criture

  //Creation of a line with different parameters to be measured  
  myFile.println("TIME_IR;IR;TIME_ACCEL;X;Y;Z;TIME_TMP;tmp;TIME_HR_SPO2;HR;SPO2");
  myFile.close();// Close file
}

void displayLineGraph()
{  // Display function 
     spr.fillRect(0, 0, 3200, 30, TFT_LIGHTGREY);  //Blue rectangle for title "Onde de pouls"
     // Settings for the line graph title
     auto header = text(0, 0)
          .value("Onde de pouls") // Title display 
          .align(center)
          .valign(vcenter)
          .width(spr.width())
          .thickness(2);

     header.height(header.font_height(&spr) * 2);
     header.draw(&spr); // Header height is the twice the height of the font

     // Settings for the line graph
     auto content = line_chart(10, header.height()); //(x,y) where the line graph begins
     content
          .height(spr.height() - 30) // actual height of the line chart
          .width(spr.width() - content.x() * 2)         // actual width of the line chart
          .based_on(250000.255000)                                // Starting point of y-axis, must be a float                       // changer
          .show_circle(false)                           // drawing a cirle at each point, default is on.
          .value(ir_disp)                                  // passing through the data to line graph
          .max_size(MAX_SIZE)
          .color(TFT_RED)                               // Setting the color for the line
          .backgroud(TFT_WHITE)
          .draw(&spr);

     spr.pushSprite(0, 0);
}

void drawData(float x, float y, float z, int bpm, int spo2, float temperature)
{
  tft.setTextSize(2);
  eraseWriting();

  //acceleration
  tft.drawString(String(x), 250, 150); 
  tft.drawString(String(y), 250, 170);
  tft.drawString(String(z), 250, 190);

  //bpm
  tft.drawString(String(bpm), 80, 150);      

  //spo2
  tft.drawString(String(spo2), 80, 170);      //Display the value of SPO2 with writing place

  //temperature
  tft.drawString(String(temperature, 1)+" C", 50, 215);
}

void drawEnd()
{
    Serial.println("Enregistrement OFF");
    //Design of button OFF  
    tft.setTextSize(2);     
    tft.setTextColor(TFT_BLACK);          //Sets the text colour to black
    tft.fillRect(250, 215, 50, 25, TFT_RED); // Make the writing space OFF (x,y,w,h,color red)

    // Framing the writing space OFF   (x,y,w,h,color blue)
    tft.fillRect(250, 215, 50, 3, TFT_BLUE);
    tft.fillRect(250, 237, 50, 3, TFT_BLUE);
    tft.fillRect(300, 215, 3, 25, TFT_BLUE);
    tft.fillRect(250, 215, 3, 22, TFT_BLUE);
    tft.drawString("OFF", 260, 220); //Text to display with writing place

    // Make the writing space ON (x,y,w,h,color green)
    tft.fillRect(190, 215, 50, 25, TFT_GREEN);
    tft.drawString("ON", 200, 220); //Text to display  with writing place
}

void drawRecordingBackground()
{
  // If button 1 ON
  tft.fillScreen(TFT_WHITE); //Set White background
  //design of button ON
  tft.setTextSize(2); //   font size 
  tft.setTextColor(TFT_BLACK);          //Sets the text colour to black
  tft.fillRect(190, 215, 50, 25, TFT_GREEN);
  tft.fillRect(190, 215, 50, 3, TFT_LIGHTGREY);
  tft.fillRect(190, 237, 50, 3, TFT_LIGHTGREY);
  tft.fillRect(190, 215, 3, 22, TFT_LIGHTGREY);
  tft.fillRect(237, 218, 3, 22, TFT_LIGHTGREY);
  tft.drawString("ON", 205, 220);
  tft.fillRect(250, 215, 50, 25, TFT_RED);
  tft.drawString("OFF", 260, 220);


  tft.fillRect(0, 121, 320, 2, TFT_BLACK);  //Horizontal line in the centre of the screen
  tft.fillRect(160, 121, 2, 220, TFT_BLACK);// Vertical line in the centre of the screen 

  tft.setTextSize(1); // Font size for sections
  tft.setTextColor(TFT_BLACK); //Writing in black 
  
  //oxy
  tft.fillRect(10, 125, 140, 20, TFT_LIGHTGREY); // Create a blue rectangle to encircle the title "OXYMETRIE"
  tft.drawString("OXYMETRIE",50,130);  //Text to display  "OXYMETRIE" with writing place

  //temp
  tft.fillRect(10, 190, 140, 20, TFT_LIGHTGREY); // Create a blue rectangle to encircle the title "TEMPERATURE"
  tft.drawString("TEMPERATURE",50,195); //Text to display  "TEMPERATURE" with writing place

  //mo
  tft.fillRect(170, 125, 140, 20, TFT_LIGHTGREY); // Create a blue rectangle to encircle the title "Movement"
  tft.drawString("MOUVEMENT",215,130); //Text to display  "MOUVEMENT" with writing place

  tft.setTextSize(2);

  tft.drawString("Acc X:", 180, 150);//Text to display  "Acc X:" with writing place
  tft.drawString("Acc Y:", 180, 170);//Text to display  "Acc Y:" with writing place
  tft.drawString("Acc Z:", 180, 190);//Text to display "Acc Z:" with writing place

  tft.drawString("HR:", 20, 150);    //Display  "HR:" with writing place
  tft.drawString(" bpm", 110, 150);  //Display  "bpm" with writing place (unit of measurement )
  tft.drawString("SPO2:", 20, 170);  //Display  "SPO2" with writing place
  tft.drawString(" %", 110, 170);    //Display  "%" with writing place (unit of measurement )
}

void drawWaitingScreen()
{
  //Description of how to start and stop the measurements at the beginning of the connection 
  tft.fillScreen(TFT_WHITE);
  tft.setTextSize(2); // Font size 
  tft.setTextColor(TFT_BLACK);          //sets the text colour to black
  tft.fillRect(30, 80, 260, 35, TFT_BLUE);
  tft.drawString("Bouton Gauche: Debut  ", 40, 90);
  tft.fillRect(30, 130, 260, 35, TFT_RED);
  tft.drawString("Bouton Droit: Fin  ", 55, 140);
}

void eraseWriting()
{
  //temperature
  tft.fillRect(50, 215, 80, 15, TFT_WHITE); // Font de l'espace d'ecriture  (x,y,w,h,white color)
  //oxymetrie
  tft.fillRect(60, 150, 58, 15, TFT_WHITE); //bpm
  tft.fillRect(80, 170, 40, 15, TFT_WHITE); //spo2
  //mouvement
  tft.fillRect(250, 150, 60, 15, TFT_WHITE);  //White display space
  tft.fillRect(250, 170, 60, 15, TFT_WHITE);  //White display space 
  tft.fillRect(250, 190, 60, 15, TFT_WHITE);  //White display space
}

void initializeSensors()
{
  //Initialize the tft
  tft.begin(); 
  tft.setRotation(3); //Defining the rotation
  tft.fillScreen(TFT_WHITE); //Black background
  spr.createSprite(320, 120);  //Create a Sprite for line chart IR (width 320, length 120) 

  Serial.begin(115200);// Serial Initializing

  while (!Serial) {
  ; // wait for serial port to connect. Needed for native USB port only
  }

  lis.begin(Wire1);  //join i2c bus as master
  // Initialize sensor accelerometer
  if (!lis) {
    Serial.println("ERROR");
    while(1);
  }
  lis.setOutputDataRate(LIS3DHTR_DATARATE_25HZ); //Data output rate
  lis.setFullScaleRange(LIS3DHTR_RANGE_2G); //Scale range set to 2g
     
  particleSensor.begin(Wire, I2C_SPEED_FAST); //Use default I2C port, 400kHz speed
  particleSensor.setup(); //Configure sensor with default settings
  particleSensor.setPulseAmplitudeRed(0x0A); //Turn Red LED to low to indicate sensor is running
  
  while (!Serial);
  if (!mlx.begin()) {
    Serial.println("Error connecting to MLX sensor. Check wiring.");
    while (1);
  };

  //initialisaiton of SD card
  if (!SD.begin(SDCARD_SS_PIN, SDCARD_SPI)) {
    Serial.println("initialization failed!");
    while (1);
  }
  Serial.println("initialization done.");
}

void irUpdate(long ir)
{  // IR function       
     spr.fillSprite(TFT_WHITE);
     if (ir_disp.size()> MAX_SIZE) // IF IR display table of values > Max Values of table 
     {
        ir_disp.pop(); // this is used to remove the first read variable
     }
   
     ir_disp.push(ir); // read variables and store in ir_disp
     
     //Saving on SDcard
     myFile.print(String(millis())); // Saving Delay 
     myFile.print(";");
     myFile.print(String(ir)); // saving IR Value 
     myFile.println();
}  

void saveAcceleration(float x, float y, float z)
{
    myFile.print(";");myFile.print(";"); //Column break 
    myFile.print(String(millis())); // Saving delay
    myFile.print(";");
    myFile.print(String(x)); // Saving value of X
    myFile.print(";");
    myFile.print(String(y)); // Saving value of Y
    myFile.print(";");
    myFile.print(String(z)); // Saving value of Z
    myFile.println();
}

void saveHeartRate(int bpm)
{
  myFile.print(";");myFile.print(";");//Column break 
  myFile.print(";");myFile.print(";");//Column break 
  myFile.print(";");myFile.print(";");//Column break 
  myFile.print(";");myFile.print(";");//Column break 
  myFile.print(String(millis())); //Saving delay
  myFile.print(";");
  myFile.print(String(bpm));  // Saving HR value 
}

void saveSPO2(int spo2)
{
  myFile.print(";");
  myFile.print(String(spo2));// Saving SPO2 value  
  myFile.println();
}

void saveTemperature(float temperature)
{
  //Saving on SDcard 
  myFile.print(";");myFile.print(";"); //Column break 
  myFile.print(";");myFile.print(";");//Column break 
  myFile.print(";");myFile.print(";");//Column break 
  myFile.print(String(millis())); // Delay saving 
  myFile.print(";");
  myFile.print(String(temperature)); // saving temperature value 
  myFile.println();
}