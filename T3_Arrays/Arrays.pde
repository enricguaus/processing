/**
 * Arrays
 * Conceptes:
 *   - Arrays de nombres
 * Enric Guaus
 * Abril 2017
*/

/*
// ---- VERSIO 1: Tots els passos per separat ----
int LONG = 10;
void setup() {
  // Declaració
  int [] nombres;
  // Demanar memòria
  nombres = new int[LONG];
  // Inicialitzar
  for(int i=0;i<LONG; i++){
    nombres[i]=0;
  }
  // Usar
  for(int i=0;i<LONG; i++){
    nombres[i]=2*i+3; // m'invento una funció qualsevol per fer alguna cosa.
    println("nombres[" + i + "]=" + nombres[i]);
  }
}
*/

/*
// ---- VERSIO 2: Declaro i demano memòria conjuntament ----
int LONG = 10;
void setup() {
  // Declaració i demanar memòria
  int [] nombres = new int[LONG];
  // Inicialitzar
  for(int i=0;i<LONG; i++){
    nombres[i]=0;
  }
  // Usar
  for(int i=0;i<LONG; i++){
    nombres[i]=2*i+3; // m'invento una funció qualsevol per fer alguna cosa.
    println("nombres[" + i + "]=" + nombres[i]);
  }
}
*/

// ---- VERSIO 3: Declaro, demano memòria i inicialitzo conjuntament ----
int LONG = 10;
void setup() {
  // Declaració, demanar memòria i inicialitzar
  int [] nombres = {0,0,0,0,0,0,0,0,0,0};
  // Usar
  for(int i=0;i<LONG; i++){
    nombres[i]=2*i+3; // m'invento una funció qualsevol per fer alguna cosa.
    println("nombres[" + i + "]=" + nombres[i]);
  }
}


