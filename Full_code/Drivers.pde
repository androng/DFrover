const int INPUT_TYPE_MOTOR = 1;
const int INPUT_TYPE_SPEED = 2;
const int INPUT_TYPE_LINE = 3;
const int LIGHT_DIFFERENCE = 100;

/* Moves motor 1 or 2 at a certain speed. */
void setSpeed(int motor, int motorSpeed){
    if(checkInput(motor, INPUT_TYPE_MOTOR) == false){
        return;
    }
    if(checkInput(motorSpeed, INPUT_TYPE_SPEED) == false){
        return;
    }
    
    
    if(motor == 1){
        analogWrite(E1, motorSpeed);
    }
    else if(motor == 2){
        analogWrite(E2, motorSpeed);
    }
}
/* Sets the direction of motor 1 or 2 forward. 
*/
void forward(int motor){
    if(checkInput(motor, INPUT_TYPE_MOTOR) == false){
        return;
    }
    if(motor == 1){
        digitalWrite(M1, HIGH);
    }
    else if(motor == 2){
        digitalWrite(M2, HIGH);
    }
}
/* Sets the direction of motor 1 or 2 backward. 
*/
void backward(int motor){
    if(checkInput(motor, INPUT_TYPE_MOTOR) == false){
        return;
    }
    if(motor == 1){
        digitalWrite(M1, LOW);
    }
    else if(motor == 2){
        digitalWrite(M2, LOW);
    }
}
/* Returns true if there is less light than turn on time by LIGHT_DIFFERENCE. 
Assumes photoresistor on top, so voltage goes down with more light. */
boolean lessLight(){
    Serial.println(startLightValue - analogRead(LIGHT_SENSOR));
    return (startLightValue - analogRead(LIGHT_SENSOR) > LIGHT_DIFFERENCE);
}
/* Returns true if there is more light than turn on time by LIGHT_DIFFERENCE. 
Assumes photoresistor on top, so voltage goes down with more light.*/
boolean moreLight(){
    return (analogRead(LIGHT_SENSOR) - startLightValue > LIGHT_DIFFERENCE);
}
/* False if input invalid. */
boolean checkInput(int input, int inputType){
    switch(inputType){
    case INPUT_TYPE_MOTOR:
        if(input != 1 && input != 2){
            Serial.print("ERROR: Invalid motor number: ");
            Serial.println(input);
            return false;
        }
        break;
    case INPUT_TYPE_SPEED:
        if(input < 0 || input > 255){
            Serial.print("ERROR: Invalid motor speed: ");
            Serial.println(input);
            return false;
        }
        break;
    case INPUT_TYPE_LINE: 
        if(input != 1 && input != 2){
            Serial.print("ERROR: Invalid line sensor number: ");
            Serial.println(input);
            return false;
        }
        break;
    default:
        Serial.println("ERROR: Checking for unknown input type");
        break;
    }
    return true;
}
/* Returns true if line detected */
boolean line(int sensorNum){
    checkInput(sensorNum, INPUT_TYPE_LINE);
    if(sensorNum == 1){
        return overLine(QRE1);
    }
    else if(sensorNum == 2){
        return overLine(QRE2);
    }
}
/* Enables heartbeat over LEDs */
void enableHeartbeat(){
    heartbeatEnable = true;
}
/* Disable heartbeat from LEDs */
void disableHeartbeat(){
    heartbeatEnable = false;
    digitalWrite(LED1_PIN, LOW);
}
