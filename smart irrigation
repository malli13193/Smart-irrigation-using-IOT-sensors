//		Instructions:
//	1) Start Simulation
//	2) Toggle Sensor Value to Change the Moisture Level
// 	3) In serial monitor, type W to start the watering manually,
//		type S to stop waterting manually.

#include <LiquidCrystal.h>

LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

int moistureSensorPin = A0;   // Pin connected to the soil moisture sensor
int pumpPin = 9;              // Pin connected to the relay module

int Threshold = 500;       // Define a threshold value for sensor
int trig;

void setup() {
  pinMode(pumpPin, OUTPUT);
  digitalWrite(pumpPin, HIGH); // Turn off the pump initially
  Serial.begin(9600);
  
  lcd.begin(16, 2); // Initialize the LCD
  lcd.setCursor(0, 0);
  
}

void loop() {
  int moistureLevel = analogRead(moistureSensorPin);
    if (Serial.available()) {
    char command = Serial.read();
  
    switch (command) {
      case 'W':				// Start Watering
        digitalWrite(pumpPin, LOW);  // Turn on the pump
        Serial.println("Manual watering started");
      	lcd.clear();
        lcd.setCursor(0, 0);
        lcd.print("Manual Watering");
      	lcd.setCursor(0, 1);
        lcd.print("On for 5 sec");
      	delay(5000);
      	break;
        
      case 'S':				// Stop Watering
        digitalWrite(pumpPin, HIGH);   // Turn off the pump
        Serial.println("Manual watering stopped");
        lcd.clear();
        lcd.setCursor(0, 0);
        lcd.print("Manual Watering");
      	lcd.setCursor(0, 1);
        lcd.print("Off for 5 sec");
      	delay(5000);
		break;
      
      default:
        Serial.println("Unknown command");
        break;
    }
  } else {
    if (moistureLevel < Threshold) {
      digitalWrite(pumpPin, LOW);  // Turn on the pump
      Serial.println("Automatic watering activated");
      lcd.clear();
      lcd.setCursor(0, 0);
      lcd.print("AutoWatering ON");
      lcd.setCursor(0, 1);
      lcd.print("ML : ");
      lcd.setCursor(10,1);
      lcd.print(moistureLevel);
      
    } else if (moistureLevel > Threshold) {
      digitalWrite(pumpPin, HIGH);   // Turn off the pump
      Serial.println("Automatic watering stopped");
      lcd.clear();
      lcd.setCursor(0, 0);
      lcd.print("AutoWatering OFF");
      lcd.setCursor(0, 1);
      lcd.print("ML : ");
      lcd.setCursor(10,1);
      lcd.print(moistureLevel);
    }
  }
  delay(1000);  // Delay for stability
}
