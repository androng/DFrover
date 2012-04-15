#include <MsTimer2.h>

const unsigned char E1 = 6; //M1 Speed Control 
const unsigned char E2 = 5; //M2 Speed Control 
const unsigned char M1 = 8; //M1 Direction Control
const unsigned char M2 = 7; //M2 Direction Control
const unsigned char QRE1 = 2; 
const unsigned char QRE2 = A5; 
const unsigned char LED1_PIN = 5; /* Cannot be pin 3 because Timer 2 is used. */
const unsigned char LIGHT_SENSOR = A0;
const unsigned char MEDIUM_SPEED = 180;

int startLightValue = 0;
boolean heartbeatEnable = false;

void setup(){
    Serial.begin(9600);
    
    /* Set motors and enable pins to output */
    pinMode(M1, OUTPUT);
    pinMode(M2, OUTPUT);
    pinMode(E1, OUTPUT);
    pinMode(E2, OUTPUT);
    
    /* Set A1 to act as voltage source for light sensor. */
    pinMode(A1, OUTPUT);
    digitalWrite(A1, HIGH);
    
    /* Set LEDs to output */
    pinMode(LED1_PIN, OUTPUT);
    
    /* Take ten readings when sensor starts up and average them. */
    int i;
    for(i = 0; i < 10; i++){
        startLightValue += analogRead(LIGHT_SENSOR);
    }
    startLightValue /= i;
    
    MsTimer2::set(13, heartbeat); 
    MsTimer2::start();
}
void loop(){
    control();
}
void heartbeat(){
    if(heartbeatEnable){
        analogWrite(LED1_PIN, 127 + 127 * sin(2 * PI * millis() / 2000));
    }
}
