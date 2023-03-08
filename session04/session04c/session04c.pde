// Author: Enric Guaus
// Date: 5/03/2023
// Course: Tècniques de programació informàtica I
//         Escola Superior de Música de Catalunya
// Description: Introduces random numbers (0..10) to the students grades.
// Concepts: Array declaration + Memory allocate + Init + Use
//           Loops using While

int N_STUDENTS=12;                      // Variable used as CONSTANT (usually, in UPPERCASE)
int [] grade = new int[N_STUDENTS];     // Declaration + memory alocation
                                        // Grade is a global (composite) variable: all functions can see
                                        // and use it.
void setup(){
  int i=0;                              // by using While, I've to declare the counter before ...
  while(i<N_STUDENTS){                  // ... write the looping condition...
    grade[i]=0;
    i=i+1;                              // ... and manually update the counter.
  }
}

void draw(){
  int i=0;                              // using While again, instead of For.
  while(i<N_STUDENTS){                  // Maybe it is not the best option in this context.
    grade[i]=int(random(10));
    print(grade[i]," ");
    i=i+1;
  }
  println();
  delay(1000);
}
