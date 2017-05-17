function ret = getPolos(transfer)
  [numeradores,denominadores] = tfdata(transfer);
  [z,p,k] = tf2zp(numeradores{1},denominadores{1});
  p = redondear(p,4);#redondeo a 4 decimales
  aux = concatVectorComplexNumbers(p);
  aux = sprintf("Polos:\t\t\t\t\t.\n%s",aux);
  printf("%s\n",aux);
  ret = aux;
endfunction