function transfer = menuIngresoFuncion()
  printf("Seleccione una opcion para ingresar la funcion de transferencia a traves de:\n");
  printf("1 - Coeficientes del polinomio del numerador y denominador\n");
  printf("2 - Polos, ceros y ganancia\n");
  opcion = input ("Opcion: ");
  if opcion == 1,
    transfer = createTransFromNumDenCoef();
  elseif opcion == 2,
    transfer = createTransFromZeroPoleGain();
  end;
endfunction