// Author: Enric Guaus
// Date: 19/02/2020
// Course: Tècniques de programació informàtica I (ESMUC)
// Description: Computing "factorial" using recursion and 
//              our own functions in a separate sketch.
// Concepts: Functions and recursivity.

void setup(){  // Basic setup to compute the factorial
  int a=6;
  int b=myFact(a);
  println(a,"!=",b);
}