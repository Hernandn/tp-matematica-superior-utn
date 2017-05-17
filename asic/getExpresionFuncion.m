function ret = getExpresionFuncion(transfer)
  [numeradores,denominadores]=tfdata(transfer);
  aux = '';
  #numeradores
  polinomioNumeradores = getExpresionPolinomioFromCoeficientes(numeradores{1});
  #denominadores
  polinomioDenominadores = getExpresionPolinomioFromCoeficientes(denominadores{1});
  #barra de division
  barraDivision = repmat('-', 1, max(length(polinomioNumeradores),length(polinomioDenominadores)));
  
  aux = cstrcat(aux,polinomioNumeradores);
  aux=sprintf("%s\n",aux);
  aux = cstrcat(aux,barraDivision);
  aux=sprintf("%s\n",aux);
  aux = cstrcat(aux,polinomioDenominadores);
  
  aux=sprintf("Expresion:\t\t\t\t\t.\n\n%s\n",aux);
  printf("%s\n",aux);
  ret = aux;
endfunction