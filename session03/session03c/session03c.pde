// Author: Enric Guaus
// Date: 1/3/2023
// Course: Fonaments de Programació
//         Escola Superior de Música de Catalunya
// Description: Prints "Suspens", "Aprovat", "Notable" or "Excel·lent" depending on the qualification.
// Concepts: Control structures: nested IF-ELSE
//           Logical operators: OR, AND

int nota=7;

if((nota>=0) && (nota<5)){
  println("Suspès");
}else{
  if((nota>=5) && (nota<7)){
    println("Aprovat");
  }else{
    if((nota>=7) && (nota<9)){
      println("Notable");
    }else{
      if((nota>=9) && (nota<=10)){
        println("Excel·lent");
      }else{
        println("Error al càlcul de la nota");
      }
    }
  }
}


// compact version: skip {} when there is only one instruction inside the "if" and/or "else":

if((nota>=0) && (nota<5))        println("Suspès");
else if((nota>=5) && (nota<7))   println("Aprovat");
else if((nota>=7) && (nota<9))   println("Notable");
else if((nota>=9) && (nota<=10)) println("Excel·lent");
else                             println("Error al càlcul de la nota");
