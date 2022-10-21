// Author: Enric Guaus
// Date: 12/02/2020
// Course: Tècniques de programació informàtica I (ESMUC)
// Description: Printing chars and integers (position in the ASCII table) into the console
//              when pressing a key.
// Concepts: Chars and ASCII table. The "key" variable.

void setup(){
  key='a'; // Initialization of the 'key' char internal variable to a known value.
  noLoop();
}

void draw(){
  // ---- Understanding a char variable as an integer ----
  char myChar=key;    //Defining myChar as a char variable and assign it to 'key' value.
  int myNumber=key;   //Defining myNumber as an integer variable and assign it to the 'key' value.
  println("Key pressed: ",key,"| as char: ",myChar,"| as integer: ",myNumber); // Prints 'key', the myChar value (same as key), and myNumber (ASCII table position)
  
  // ---- Understanding an integer variable as a char ----
  int myNumber2=int(random(127)); //Random position in the ASCII table
  char myChar2=char(myNumber2); // Converting this integer as a char, according to the ASCII table
  println("Random generated integer:",myNumber2,"| as char: ",myChar2);
  println("Press key to continue");
}
void keyPressed(){
  // the 'key' variable is automatically updated
  redraw();
}
