// Author: Enric Guaus
// Date: 01/03/2023
// Course: Tècniques de programació Informàtica I
//         Escola Superior de Música de Catalunya
// Description: Introducing the draw() function. 
//              Global variables. 

int myHeight;                // Declaring the myHeight variable as an integer.

void setup(){ // Executed once at the beginning of the execution
  size(300,200);
  myHeight=0;                // Initializing it with a "controled" value: 0.
}

void draw(){ // Executed repeteadly as fast as the computer can.
  fill(201,154,65);
  rect(100,100,50,myHeight); // Using the variable.
  myHeight=myHeight+1;       // Using the variable.
  delay(100); // forcing a small pause between successive executions of draw()
}
