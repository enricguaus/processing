// Author: Enric Guaus
// Date: 10/03/2023
// Course: Tècniques de programació informàtica I
//         Escola Superior de Música de Catalunya
// Description: Printing part of the alphabet until the next vowel when pressing a key.
// Concepts: Switch control structure (using breaks and default options)

void setup(){ // Typical setup to stop infinite looping.
  noLoop();
}

void draw(){
  switch(key){
    case 'a':        // If 'a' is pressed, print a
      println("a");
      break;         // and exit the switch.
    case 'b':        // If 'b' is pressed, print 'b'...
      print("b ");   // ... and continue until a break is found.
    case 'c':        // If 'c' is pressed (or comes from 'b'), print 'c'...
      print("c ");   // ... and continue until a break is found
    case 'd':        // If 'd' is pressed (or comes from 'b' or 'c'), print 'd'...
      print("d ");   // ... and continue until a break is found
    case 'e':        // If 'e' is pressed (or comes from 'b', 'c' or 'd'), print 'e'...
      println("e");  
      break;         // and exit the switch.
    case 'f': 
      print("f ");
    case 'g': 
      print("g ");
    case 'h': 
      print("h ");
    case 'i': 
      println("i");
      break;
    default:          // If a key is pressed but is none of the above.
      println("Not implemented. Try another key");
      break;
  }
}

void keyPressed() { // Automatically updates the "key" internal variable...
  redraw();         // ... and call once the "draw()" function.
}
