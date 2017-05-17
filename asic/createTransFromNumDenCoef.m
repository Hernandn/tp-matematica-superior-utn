function [transfer,cancelado] = createTransFromNumDenCoef()
  respuesta = inputdlg({"Numeradores separados por comas","Denominadores separados por comas"},"Ingrese los coeficientes",[1,1]);
  
  if length(respuesta)==0,
    cancelado = 1;
    transfer = 0;
  else,
    cancelado = 0;
    coefNumerador = strCellToNumVector(strsplit(respuesta{1}, ","));
    coefDenominador = strCellToNumVector(strsplit(respuesta{2}, ","));
    transfer = tf(coefNumerador,coefDenominador);
  end;
endfunction