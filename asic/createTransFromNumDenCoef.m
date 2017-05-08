function transfer = createTransFromNumDenCoef()
  respuesta = inputdlg({"Numeradores separados por comas","Denominadores separados por comas"},"Ingrese los coeficientes",[1,1]);
  coefNumerador = strCellToNumVector(strsplit(respuesta{1}, ","));
  coefDenominador = strCellToNumVector(strsplit(respuesta{2}, ","));
  transfer = tf(coefNumerador,coefDenominador);
endfunction