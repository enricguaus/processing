// Author: Enric Guaus
// Date: 8/03/2023
// Course: Tècniques de programació informàtica I
//         Escola Superior de Música de Catalunya
// Description: Swap function for using Arrays as parameters.
// Concepts: Arrays as parameters and return in a function.

void setup(){
  int[] nombres=new int[2]; //Declaration and memory allocation of the "nombres" array
  nombres[0]=3;              // Initializing the array with 2 numbers
  nombres[1]=4;
  println("Els nombres son: ",nombres[0], " i ", nombres[1]); // Printing into the console (original values)
  nombres = mySwap(nombres,2);                                // Calling the swap function
  println("Els nombres son: ",nombres[0], " i ", nombres[1]); // Printing into the console (exchanged values)
}

int[] mySwap(int[] pPair, int pLength){ // Passing an int[] as an argument. Length is not strictly necessary, but its fair...
  int _aux=pPair[0];
  pPair[0]=pPair[1];
  pPair[1]=_aux;
  return pPair;                         // Return an int[] with the exchanges values.
}
