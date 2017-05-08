function getGanancia(transfer)
  [numeradores,denominadores]=tfdata(transfer);
  [z,p,k]=tf2zp(numeradores{1},denominadores{1});
  aux=sprintf("Ganancia: %d",k);
  printf("%s\n",aux);
  msgbox(aux);
endfunction