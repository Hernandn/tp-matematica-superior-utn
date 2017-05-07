function transfer = createTransFromNumDenCoef()
  coefNumerador = input("Ingrese los coeficientes del numerador en un array: ");
  coefDenominador = input("Ingrese los coeficientes del denominador en un array: ");
  transfer = tf(coefNumerador,coefDenominador);
endfunction