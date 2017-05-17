function ret = getExpresionPolinomioFromCoeficientes(coeficientes)
  aux = '';
  cantidadCoef = length(coeficientes);
  for i=1:cantidadCoef,
    #signo del coeficiente
    if coeficientes(i)<0,
      aux = cstrcat(aux,' - ');
    else,
      if i>1,
        aux = cstrcat(aux,' + ');
      end;
    end;
    #imprimo el coeficiente solo si es mayor que 1 en modulo
    if abs(coeficientes(i))>1,
      aux = cstrcat(aux,num2str(abs(coeficientes(i))));
    end;
    #variable s
    if (cantidadCoef-i)>=2,  #si la s tiene exponente (2 o mas)
      aux = cstrcat(aux,' s^');
      aux = cstrcat(aux,num2str(cantidadCoef-i));
    elseif (cantidadCoef-i)==1,  #si la s no tiene exponente (1)
      aux = cstrcat(aux,' s');
    end;
  end;
  ret = aux;
endfunction