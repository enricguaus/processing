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

int [] swap (int [] pNombres){
  int tmp=pNombres[0];
  pNombres[0]=pNombres[1];
  pNombres[1]=tmp;
  return pNombres;
}
