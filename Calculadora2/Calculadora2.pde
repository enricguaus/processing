/**
 * Calculadora2
 * Conceptes:
 *   - Separació de funcions en diferents fitxers
 *   - Arrays com a paràmetres in/out de funcions
 * Enric Guaus
 * Abril 2017
 */

int nombre1;
int nombre2;

void setup() {
  int [] nombres = new int[2];
  nombres[0]=4;
  nombres[1]=3;
  println("Nombres originals     : " + nombres[0] + " " + nombres[1]);
  println("Resultat suma         : " + suma(nombres[0],nombres[1]));
  println("Resultat multiplicació: " + multi(nombres[0],nombres[1]));
  println("Resultat potència     : " + potencia(nombres[0],nombres[1]));
  println("Resultat factorial    : " + factorial(nombres[0]));
  int [] tmp=swap(nombres);
  println("Resultat swap         : " + tmp[0] + " " + tmp[1]);
}


