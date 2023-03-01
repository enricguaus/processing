// Author: Enric Guaus
// Date: 1/3/2023
// Course: Fonaments de Programació
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
