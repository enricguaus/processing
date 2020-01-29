// Author: Enric Guaus
// Date: 29/01/2020
// Course: Tècniques de programació informàtica I (ESMUC)
// Description: Declaring, initializing and using a variable with a
//              mnemotecnic name.

void setup(){
  size(300,200);
  int myHeight;              // Declaring the myHeight variable as an integer.
  myHeight=0;                // Initializing it with a "controled" value: 0.
  // ... We can do a lot of things here ...
  fill(201,154,65);
  myHeight = 40;             // Using it: Asigning a new value.
  rect(100,100,50,myHeight); // Using it: defining the rectangle's height.
}
