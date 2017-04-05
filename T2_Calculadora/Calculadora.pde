/**
 * Calculadora
 * Conceptes:
 *   - Funcions
 *   - Recursivitat
 * Enric Guaus
 * Març 2017
 */
 
int nombre1;
int nombre2;

void setup() {
  size(640, 360);
  background(0);
  nombre1=0;
  nombre2=0;
}

void draw() {
  int resultat_suma  = 0;
  int resultat_multi = 0;
  int resultat_potencia = 0;
  int resultat_factorial = 0;
  background(0);
  println("Nombre 1: "+ nombre1);
  println("Nombre 2: "+ nombre2);
  resultat_suma = suma(nombre1, nombre2);
  println("El resultat de la suma es: " + resultat_suma);
  resultat_multi = multi(nombre1, nombre2);
  println("El resultat de la multi es: " + resultat_multi);
  resultat_potencia = potencia(nombre1, nombre2);
  println("El resultat de la potencia es: " + resultat_potencia);
  resultat_factorial = factorial(nombre1);
  println("El resultat del factorial es: " + resultat_factorial);
  println(" ");
 
}

void keyPressed(){
  if(nombre1==0)    nombre1=key-48;
  else              nombre2=key-48;
}

int suma(int pN1, int pN2){
  int res = 0;
  res = pN1 + pN2;
  return res;
}

int multi(int pN1, int pN2){
  int res = 0;
  //res = pN1 * pN2;
  for(int i=0; i<pN2; i++){
    res = suma(res,pN1);
  } 
  return res;
}

int potencia(int pN1, int pN2){
  int res = pN1;
  if(pN2==0){
    return 1;
  }else{
    for(int i=1;i<pN2; i++){
      res=multi(res,pN1);
    }
  }
  return res;
}

int factorial(int pN1){
  int res = pN1;
  if(pN1==0) return 1;
  if(pN1>2)  res=multi(pN1,factorial(pN1-1));
  return res;
}