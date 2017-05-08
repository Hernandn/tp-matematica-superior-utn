function getCeros(transfer)
  [numeradores,denominadores]=tfdata(transfer);
  [z,p,k]=tf2zp(numeradores{1},denominadores{1});
  aux=sprintf("%d ",z);
  aux=sprintf("Ceros: %s",aux);
  printf("%s\n",aux);
  msgbox(aux);
endfunction