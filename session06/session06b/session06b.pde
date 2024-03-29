// Author: Enric Guaus
// Date: 10/03/2023
// Course: Tècniques de programació informàtica I
//         Escola Superior de Música de Catalunya
// Description: Printing String objects (and some of their properties by using its methods) into the console.
// Concepts: String (introduction to Objects).

void setup(){
  String myString="ESMUC"; // Declaration and initialisation of a String object.
  int myLength=myString.length(); // Using the '.length' method to get its length.
  println(myString, ' ',myLength, ' ',myString.charAt(2),' ',myString.indexOf('C')); // Printing into the console and using other available methods
}
