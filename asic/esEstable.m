function retval = esEstable(transfer)
  [numeradores,denominadores] = tfdata(transfer);
  [z,p,k] = tf2zp(numeradores{1},denominadores{1});
  retval = all(real(p) < 0);
  if retval!=0,
    retval = length(find(!real(p)))>1
  end;
endfunction