/**
 * Strings
 * Conceptes:
 *   - Arrays de char's vs String
 * Enric Guaus
 * Abril 2017
*/
 
void setup(){
  char [] lletres = {'h','o','l','a'};
  println(lletres);
  String paraula="Hola";
  println(paraula);
  // String declara un objecte, amb variables i mètodes
  println("Longitud: " + paraula.length());
  println("Majúscules: " + paraula.toUpperCase());
}

