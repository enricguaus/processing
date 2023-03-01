// Author: Enric Guaus
// Date: 01/03/2023
// Course: Tècniques de programació informàtica I
//         Escola Superior de Música de Catalunya
// Description: Prints "Aprovat" or "Suspens" depending on the qualification.
// Concepts: Control structures: IF-ELSE

int nota=4;

if(nota>=5){
  println("Aprovat");
}else{
  println("Suspès");
}

// compact version: skip {} when there is only one instruction inside the "if" and/or "else":
/*
if(nota>=5)  println("Aprovat");
else         println("Suspès");
*/
