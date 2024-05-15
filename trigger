const int moistureSensorPin = A0; // Change this to your actual pin
const int pumpPin = 13; // Change this to the pin connected to your pump relay
void setup() {
Serial.begin(9600); // Initialize the serial communication for debugging
pinMode(pumpPin, OUTPUT); // Set the pump pin as an output
}
void loop() {
// Read the analog value from the moisture sensor
int moistureValue = analogRead(moistureSensorPin);
// Calculate the moisture percentage based on your sensor&#39;s characteristics
float moisturePercentage = calculateMoisturePercentage(moistureValue);
// Print the moisture percentage to the serial monitor
Serial.print(&quot;Moisture Percentage: &quot;);
Serial.print(moisturePercentage);
Serial.println(&quot;%&quot;);
// Check if the moisture percentage is less than 30%



if (moisturePercentage &lt; 30) {
// Turn on the pump
digitalWrite(pumpPin, HIGH);
} else {
// Turn off the pump
digitalWrite(pumpPin, LOW);
}
delay(1000); // Adjust the interval as needed
}
float calculateMoisturePercentage(int sensorValue) {
// You&#39;ll need to determine the logic for calculating the moisture percentage.
// This can vary depending on the sensor you&#39;re using and its calibration.
// Please consult your sensor&#39;s datasheet or documentation for the formula.
// Example calculation (assuming a linear calibration between 0% (dry) and 100%
(wet)):
float moisturePercentage = map(sensorValue, 0, 1023, 0, 100);
return constrain(moisturePercentage, 0, 100); // Ensure the result is within 0-100%
}
OUTPUT:
Moisture Level: 15%
Moisture Level: 15%
Moisture Level: 15%
Moisture Level: 20%
Code to triger pump:
// Define the analog pin connected to the moisture sensor
const int moistureSensorPin = A0; // Change this to your actual pin
const int pumpPin = 13; // Change this to the pin connected to your pump relay
void setup() {
Serial.begin(9600); // Initialize the serial communication for debugging
pinMode(pumpPin, OUTPUT); // Set the pump pin as an output
}
void loop() {
// Read the analog value from the moisture sensor
int moistureValue = analogRead(moistureSensorPin);
// Calculate the moisture percentage based on your sensor&#39;s characteristics
float moisturePercentage = calculateMoisturePercentage(moistureValue);
// Print the moisture percentage to the serial monitor
Serial.print(&quot;Moisture Percentage: &quot;);
Serial.print(moisturePercentage);
Serial.println(&quot;%&quot;);
// Check if the moisture percentage is less than 30%



if (moisturePercentage &lt; 30) {
// Turn on the pump
digitalWrite(pumpPin, HIGH);
Serial.println(&quot;Pump is ON&quot;);
} else {
// Turn off the pump
digitalWrite(pumpPin, LOW);
Serial.println(&quot;Pump is OFF&quot;);
}
delay(1000); // Adjust the interval as needed
}
float calculateMoisturePercentage(int sensorValue) {
// You&#39;ll need to determine the logic for calculating the moisture percentage.
// This can vary depending on the sensor you&#39;re using and its calibration.
// Please consult your sensor&#39;s datasheet or documentation for the formula.
// Example calculation (assuming a linear calibration between 0% (dry) and 100%
(wet)):
float moisturePercentage = map(sensorValue, 0, 1023, 0, 100);
return constrain(moisturePercentage, 0, 100); // Ensure the result is within 0-100%
}
