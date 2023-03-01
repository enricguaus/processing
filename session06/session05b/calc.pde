// Author: Enric Guaus
// Date: 24/10/2022
// Course: Fonaments de Programació
//         Escola Superior de Música de Catalunya
// Description: List of mathematical functions to be shared 
//              with other projects.

int mySuma(int pN1, int pN2){
  int _result=0;
  _result=pN1+pN2;
  return _result;
}

int myMulti(int pN1, int pN2){
  int _result=0;
  for(int i=0;i<pN1;i++){
    _result=mySuma(_result,pN2); 
  }
  return _result;
}

int myFact(int pN1){ // Algorythm copied and adapted from internet
  int _result=0;
  if(pN1>1) _result=myMulti(pN1,myFact(pN1-1)); // Using my own Multi function
  else      _result=1;
  return _result;
}