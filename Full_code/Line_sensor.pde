boolean overLine(unsigned char sensorPin){
    return readQD(sensorPin) > 2000;
}
/* Reads QRE Line sensor and returns the amount of time it took to 
discharge the capacitor */
int readQD(unsigned char sensorPin){
    //Returns value from the QRE1113 
    //Lower numbers mean more refleacive
    //More than 3000 means nothing was reflected.
    pinMode( sensorPin, OUTPUT );
    digitalWrite( sensorPin, HIGH );
    delayMicroseconds(10);
    pinMode( sensorPin, INPUT );
  
    long time = micros();
  
    //time how long the input is HIGH, but quit after 3ms as nothing happens after that
    while (digitalRead(sensorPin) == HIGH && micros() - time < 3000);
    int diff = micros() - time;
  
    return diff;
}
