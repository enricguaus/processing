// Author: Enric Guaus
// Date: 05/02/2020
// Course: Tècniques de programació informàtica I (ESMUC)
// Description: Introduces random numbers (0..10) to the students grades
// Concepts: Array declaration + Memory allocate + Init + Use
//           (non optimal version because we are not using For-While structures)
//           Introduction to delay() and int() functions;
//           Use of variables as CONSTANT.

int N_STUDENTS=4;

int [] grade;                   // Array declaration (global)

void setup(){
  grade = new int[N_STUDENTS];  // Memory allocate
  grade[0]=0;                   // Initialization
  grade[1]=0;
  grade[2]=0;
  grade[3]=0;
}

void draw(){
  grade[0] = int(random(10));   // Using the array
  grade[1] = int(random(10));
  grade[2] = int(random(10));
  grade[3] = int(random(10));
  println(grade[0], grade[1], grade[2], grade[3]);
  delay(1000);
}