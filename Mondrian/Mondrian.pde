/*
 * Mondrian (https://en.wikipedia.org/wiki/Piet_Mondrian)
 * Conceptes:
 *   - Estructures de control
 *   - Demanar dades a l'usuari
 *   - Dibuixar per pantalla
 * Enric Guaus
 * Març 2017
 */
 
int n_pregunta;
int tipus;
int nombre;

void setup(){
  size(600,400);
  n_pregunta=0;
  tipus=0;
  nombre=0;
}

void draw(){
  background(255);
  if(n_pregunta<2) 
    demana_dades();
  else{
    for(int i=0;i<nombre;i++){
      fill(random(255),random(255),random(255));
      if(tipus==0){
        rect(random(600),random(400), random(2*60), random(2*40));
      }else{
        ellipse(random(600),random(400), random(2*60), random(2*40));
      }
      noLoop();
    }
  }
  delay(100);
}

void mouseClicked(){
  redraw();
}

void demana_dades(){
  if(keyPressed){
    switch(n_pregunta){
      case 0:  tipus=key-48;
               n_pregunta=1;
               break;
      case 1:  nombre=key-48;
               n_pregunta=2;
               break;
      default: break;
    }
    println("Vols dibuixar figures " + tipus);
    println("vols dibuixar " + nombre + " elements");
  }
}