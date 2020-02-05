int figureType=0; // 0 -> liniea; 1 -> Rect; 2 -> Elipse
int nFigures=0;

void setup(){
  size(400,300);
  noLoop();
}

void draw(){
  for(int i=0;i<nFigures;i++){
    if(figureType==0){
      rect(100,100,100,random(300));
    }
    if(figureType==1){
      line(30,40,random(300),random(400));
    }
    if(figureType==2){
      ellipse(30,40,random(300),random(400));
    }
  }
}

void keyPressed(){
  figureType=int(random(3));
  nFigures=key-48;
  redraw();
}