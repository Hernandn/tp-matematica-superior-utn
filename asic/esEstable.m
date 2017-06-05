function retval = esEstable(transfer)
  [numeradores,denominadores] = tfdata(transfer);
  [z,p,k] = tf2zp(numeradores{1},denominadores{1});
  p = redondear(p,4);#redondeo a 4 decimales
  retval = all(real(p) <= 0);#todos los polos con parte real menor o igual que 0
  if retval,  #si se cumple, valido que haya como maximo uno que tenga parte real 0
    retval = length(find(!real(p)))<=1
  end;
endfunction