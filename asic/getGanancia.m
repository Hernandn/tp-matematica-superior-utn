function ret = getGanancia(transfer)
  [numeradores,denominadores]=tfdata(transfer);
  [z,p,k]=tf2zp(numeradores{1},denominadores{1});
  aux=sprintf("Ganancia:\t\t\t\t\t.\n%d",k);
  printf("%s\n",aux);
  ret = aux;
endfunction