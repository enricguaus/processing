// Author: Enric Guaus
// Date: 01/03/2023
// Course: Tècniques de programació informàtica I
//         Escola Superior de Música de Catalunya
// Description: "Hello World" printing in the console and the canvas
//              with some formating options. 

void setup(){
  size(300,200);
  // writing at the console (useful for debugging)
  print("Hello World!");
  // writing at the canvas... (We will usually use this option)
  fill(24,200,150);             // ... with an RGB color ...
  textSize(46);                 // ... with a big font ...
  text("hello world!",50,50);   // ... at position 50, 50.
}
