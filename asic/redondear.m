function ret = redondear(numero,decimales)
  ret = round((10**decimales) * numero) / (10**decimales);
endfunction