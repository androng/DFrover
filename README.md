<h1>Boy Scouts Merit Badge Day</h1>
<h3>Robotics Merit Badge: Programming</h3>

This program was originally written for 10-13 year-old Boy Scouts to learn how to program their first C++ program. It contains three "programs" in fill-in-the-blank format. 

<h3>Instructions</h3>
For use with Boy Scouts: download entire folder using ZIP button on GitHub and open "Full_code.pde". The exercises are in the "control" tab. <b>The Boy Scouts must use the commands given in "List of functions.pdf" to complete the program. Have this open on the other side of the screen.</b> There is a comment for every one or two lines of code. The completed programs are in "answers.c". When one exercise is done, use "Ctrl+/" to comment the first "control()" and uncomment the next one under exercise 2. 

-For use with college students: The "drivers" tab is where all of the functions in "List of functions.pdf" are. You may wish to eliminate or append this file.  

<h3>Exercises</h3>
1. Have the robot move forward backward, turn left and turn right. This is the longest one, so you can compile and run halfway through to make it more interesting. 
2. Program the robot to move forward with more light (flashlight) and move backward with less light (hand blocking the light sensor)
3. Program the robot to follow the line. Demo: http://youtu.be/9zmkiBHRgCo

<h3>Schematic</h3>
The schematic is very simple. Make a voltage divider with the photoresistor and 10k. The middle connects to A0. The line sensors 

<h3>Extra</h3>
--There is a "heartbeat enable" function. Connect pin 5 to the LED_SEL jumper to see the lights dim up and down. 
--The code will error check if a scout inputs an invalid command like "setSpeed(280)" because the max value is 255. It will show up in the serial monitor. 
