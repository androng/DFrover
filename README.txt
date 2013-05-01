Sketch for DFRobotShop Rover Robots

This sketch was originally written for 10-13 year-old Boy Scouts to learn how to program their first C++ program. It contains three "programs" in fill-in-the-blank format. The first program moves the robot forward, backward, left and right. The second program responds to a CdS photocell connected to A0. The third program uses line-following sensors connected to the bottom of the robot to follow a black line on the floor. 

Instructions: 
-For use with Boy Scouts: download entire folder using ZIP button on GitHub and open "Full_code.pde". The exercises are in the "control" tab. The Boy Scouts must use the commands given in "List of functions.pdf" to complete the program. There is a comment for every one or two lines of code. The completed programs are in "answers.c". When one exercise is done, use "Ctrl+/" to comment the first "control()" and uncomment the next one under exercise 2. 

-For use with college students: The "drivers" tab is where all of the functions in "List of functions.pdf" are. You may wish to eliminate or append this file.  

Extra:
-There is a "heartbeat enable" function. Connect pin 5 to the LED_SEL jumper to see the lights dim up and down. 
-The code will error check if a scout inputs an invalid command like "setSpeed(280)" because the max value is 255. It will show up in the serial monitor. 

License
-MIT License