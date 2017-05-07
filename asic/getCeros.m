function getCeros(transfer)
  [numeradores,denominadores]=tfdata(transfer);
  [z,p,k]=tf2zp(numeradores{1},denominadores{1});
  aux=sprintf("%d ",z);
  printf("Ceros: %s\n",aux);
endfunction