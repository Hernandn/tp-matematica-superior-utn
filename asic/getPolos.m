function getPolos(transfer)
  [numeradores,denominadores]=tfdata(transfer);
  [z,p,k]=tf2zp(numeradores{1},denominadores{1});
  aux=sprintf("%d ",p);
  printf("Polos: %s\n",aux);
endfunction