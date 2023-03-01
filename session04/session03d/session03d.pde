// Author: Enric Guaus
// Date: 10/10/2022
// Course: Fonaments de Programació
//         Escola Superior de Música de Catalunya
// Description: Introduces random numbers (0..10) to the students grades.
// Concepts: Array declaration + Memory allocate + Init + Use
//           Loops using For
//           Using noLoop() and redraw() to reduce CPU load.

int N_STUDENTS=12;
int [] grade = new int[N_STUDENTS];

void setup(){
  for(int i=0;i<N_STUDENTS;i=i+1){
    grade[i]=0;
  }
  noLoop();                              // This will stop looping, but draw() is executed once.
}

void draw(){
  for(int i=0;i<N_STUDENTS;i=i+1){
    grade[i]=int(random(10));
    print(grade[i]," ");
  }
  println();
}

void keyPressed(){
  redraw();                             // A key pressed forces a unique execution of the draw() function.
}                                       // Loop is still disabled (unless we use here the loop() function).