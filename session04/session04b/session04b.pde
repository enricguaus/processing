// Author: Enric Guaus
// Date: 5/03/2023
// Course: Tècniques de programació informàtica I
//         Escola Superior de Música de Catalunya
// Description: Introduces random numbers (0..10) to the students grades
// Concepts: Array declaration + Memory allocate + Init + Use
//           Loops using For

int N_STUDENTS=12;                      // Variable used as CONSTANT (usually, in UPPERCASE)
int [] grade = new int[N_STUDENTS];     // Declaration + memory alocation
                                        // Grade is a global (composite) variable: all functions can see
                                        // and use it.
void setup(){
  for(int i=0;i<N_STUDENTS;i=i+1){      // Looping through students for initialization.
    grade[i]=0;                         // "i" is a local variable. Only sentences in the "for" loop can
  }                                     // see and use it.
}

void draw(){
  for(int i=0;i<N_STUDENTS;i=i+1){      // Looping through studens for using it.
    grade[i]=int(random(10));
    print(grade[i]," ");
  }
  println();
  delay(1000);                          // a 1 second pause to see results.
}
