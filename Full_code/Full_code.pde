/*

Sketch for DFRobotShop Rover Robots

This sketch was originally written for 10-13 year-old Boy Scouts to 
learn how to program their first C++ program. It contains three "programs" 
in fill-in-the-blank format. The first program moves the robot forward, 
backward, left and right. The second program responds to a CdS photocell 
connected to A0. The third program uses line-following sensors connected 
to the bottom of the robot to follow a black line on the floor. 

Instructions: 
-For use with Boy Scouts: download entire folder using ZIP button on 
GitHub and open "Full_code.pde". The exercises are in the "control" tab.
The Boy Scouts must use the commands given in "List of functions.pdf" to 
complete the program. There is a comment for every one or two lines of code. 
The completed programs are in "answers.c". When one exercise is done, use 
"Ctrl+/" to comment the first "control()" and uncomment the next one under 
exercise 2. 

-For use with college students: The "drivers" tab is where all of the 
functions in "List of functions.pdf" are. You may wish to eliminate or
append this file.  

License
-MIT License

*/

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

unsigned long lastheartbeat = 0;
const unsigned long HEARTBEATPERIOD = 13; 

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
    
}
void loop(){
    control();
    
    if(heartbeatEnable && (millis() - lastheartbeat > HEARTBEATPERIOD)){
        heartbeat();
      
        lastheartbeat = millis();
    }
}
void heartbeat(){
    if(heartbeatEnable){
        analogWrite(LED1_PIN, 127 + 127 * sin(2 * PI * millis() / 2000));
    }
}
