// Author: Enric Guaus
// Date: 01/03/2023
// Course: Tècniques de programació Informàtica I
//         Escola Superior de Música de Catalunya
/// Description: Declaring, initializing and using a variable with a
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
