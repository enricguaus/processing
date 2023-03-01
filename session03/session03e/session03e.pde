// Author: Enric Guaus
// Date: 01/03/2023
// Course: Tècniques de programació informàtica I
//         Escola Superior de Música de Catalunya
// Description: Prints "Suspens", "Aprovat", "Notable" or "Excel·lent" depending on the qualification.
// Concepts: Control structures: SWITCH (break and default)

int nota=2;

switch(nota){
    case  0:
    case  1:
    case  2:
    case  3:
    case  4: println("Suspès"); break;
    case  5:
    case  6: println("Aprovat"); break;
    case  7:
    case  8: println("Notable"); break;
    case  9:
    case 10: println("Excel·lent"); break;
    default: println("Error al càlcul de la nota");
}
