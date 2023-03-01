// Author: Enric Guaus
// Date: 19/02/2020
// Author: Enric Guaus
// Date: 24/10/2022
// Course: Fonaments de Programació
//         Escola Superior de Música de Catalunya
// Description: Computing "sum" and "mult" by using our own functions.
// Concepts: Functions, parameters, return, calling with different contexts.

void setup(){
  int a=3;
  int b=4;
  int c=mySuma(a,b);  // Assign to 'c' the sum of 'a' and 'b' using my own inplementation
  int d=myMulti(a,b); // Assign to 'c' the multiplication of 'a' and 'b' using my own inplementation
  println(a,' ',b,' ',c,' ',d);
}

int mySuma(int pN1, int pN2){   // I use to start the parameter names with 'p'
  int _result=0;                // I use to start the local variables names with '_'
  _result=pN1+pN2;              // Computing...
  return _result;               // Return the result of the computation back
}

int myMulti(int pN1, int pN2){  // I use to start the parameter names with 'p'
  int _result=0;                // I use to start the local variables names with '_'
  //_result=pN1*pN2;            // Computing... This is the straight multiplication
  for(int i=0;i<pN1;i++){       //              or using loops (mathematical definition)
    //_result=_result+pN2;      //                  - in the "formal" way,
    //_result+=pN2;             //                  - in the "short" way,
    _result=mySuma(_result,pN2);//                  - o using my own function! 
  }
  return _result;               // Return the result of the computation back
}