function getPolos(transfer)
  [numeradores,denominadores] = tfdata(transfer);
  [z,p,k] = tf2zp(numeradores{1},denominadores{1});
  aux = concatVectorComplexNumbers(p);
  aux = sprintf("Polos:  %s",aux);
  printf("%s\n",aux);
  msgbox(aux);
endfunction