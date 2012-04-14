/******* 
Exercise 1: Basic movement to get familar with functions
-Move forward for 2 seconds
-Move backward for 2 seconds
-Move forward and turn left for 2 seconds
-Move forward and turn right for 2 seconds
*********/
//void control(){
//    /****** Move forward for two seconds ******/
//    /* Set direction of motor 1 and 2 */
//    forward(1);
//    forward(2);
//    /* Set speed of motor 1 and 2 */
//    setSpeed(1, 255);
//    setSpeed(2, 255);
//    /* Do nothing for 2 seconds. */
//    delay(2000);
//    
//    /******  Move backward for two seconds  ******/
//    /* Set direction of motor 1 and 2 */
//    backward(1);
//    backward(2);
//    /* Do nothing for 2 seconds. */
//    delay(2000);
//    
//    /******  Move forward and turn left for 2 seconds  ******/
//    /* Turn both motors off */
//    setSpeed(1, 0);
//    setSpeed(2, 0);
//    /* Set direction of motor 1 forward */
//    forward(1);
//    /* Turn motor 1 on (increase speed). */
//    setSpeed(1, 255);
//    /* Do nothing for 2 seconds. */
//    delay(2000);
//    
//    /******  Move forward and turn right for 2 seconds  ******/
//    /* Turn both motors off */
//    setSpeed(1, 0);
//    setSpeed(2, 0);
//    /* Set direction of motor 2 forward */
//    forward(2);
//    /* Turn motor 2 on (increase speed). */
//    setSpeed(2, 255);
//    /* Do nothing for 2 seconds. */
//    delay(2000);
//    
//    /******  Stop  ******/
//    /* Turn both motors off */
//    setSpeed(1, 0);
//    setSpeed(2, 0);
//    /* Do nothing for 4 seconds. */
//    delay(4000);
//}

/******* 
Exercise 2: Light-triggered robot. 
-Moves forward if there is light
-(optional) Moves backward if light is blocked
*********/
//void control(){
//    /* Turn both motors off */
//    setSpeed(1, 0);
//    setSpeed(2, 0);
//
//    /******  Moves forward if there is light  ******/
//    /* If there is more light */
//    if(moreLight()){
//        /* Set direction of motor 1 and 2 */
//        forward(1);
//        forward(2);
//        /* Set speed of motor 1 and 2 */
//        setSpeed(1, 255);
//        setSpeed(2, 255);
//    }
//    /******  Moves backward if light is blocked  ******/
//    if(lessLight()){
//        /* Set direction of motor 1 and 2 */
//        backward(1);
//        backward(2);
//        /* Set speed of motor 1 and 2 */
//        setSpeed(1, 255);
//        setSpeed(2, 255);
//    }
//    
//    /* Wait 0.1s */
//    delay(100);
//}

/******* 
Exercise 3: Line follower: follows a line between the two sensors. 
-Turn off motor 1 if line under sensor 1
-Turn off motor 2 if line under sensor 2
*********/
//void control(){
//    /* Set direction of motor 1 and 2 */
//    forward(1);
//    forward(2);
//
//    /******  Turn off motor 1 if line under sensor 1  ******/
//    /* If sensor 1 is over a line */
//    if(line(1)){
//        /* Turn motor 1 off */
//        setSpeed(1, 0);
//    }
//    else {
//        /* Turn motor 1 on */
//        setSpeed(1, 255);
//    }
//    /******  Turn off motor 2 if line under sensor 2  ******/
//    /* If sensor 2 is over a line */
//    if(line(2)){
//        /* Turn motor 2 off */
//        setSpeed(2, 0);
//    }
//    else {
//        /* Turn motor 2 on */
//        setSpeed(2, 255);
//    }
//    
//    /* Wait 0.1s */
//    delay(100);
//}


