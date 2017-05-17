function ret = getCeros(transfer)
  [numeradores,denominadores] = tfdata(transfer);
  [z,p,k] = tf2zp(numeradores{1},denominadores{1});
  z = redondear(z,4);#redondeo a 4 decimales
  aux = concatVectorComplexNumbers(z);
  aux = sprintf("Ceros:\t\t\t\t\t.\n%s",aux);
  printf("%s\n",aux);
  ret = aux;
endfunction