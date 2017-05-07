function getGanancia(transfer)
  [numeradores,denominadores]=tfdata(transfer);
  [z,p,k]=tf2zp(numeradores{1},denominadores{1});
  printf("Ganancia: %d\n",k);
endfunction