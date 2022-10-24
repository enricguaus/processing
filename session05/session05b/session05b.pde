// Author: Enric Guaus
// Date: 24/10/2022
// Course: Fonaments de Programació
//         Escola Superior de Música de Catalunya
// Description: Computing "factorial" using recursion and 
//              our own functions in a separate sketch.
// Concepts: Functions and recursivity.

void setup(){  // Basic setup to compute the factorial
  int a=6;
  int b=myFact(a);
  println(a,"!=",b);
}