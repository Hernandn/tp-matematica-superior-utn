function retval = esEstable(transfer)
  [numeradores,denominadores] = tfdata(transfer);
  [z,p,k] = tf2zp(numeradores{1},denominadores{1});
  p = redondear(p,4);#redondeo a 4 decimales
  retval = all(real(p) < 0);
  if !retval,
    retval = length(find(!real(p)))<=1
  end;
endfunction