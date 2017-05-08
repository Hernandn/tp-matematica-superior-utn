function transfer = createTransFromZeroPoleGain()
  respuesta = inputdlg({"Ceros separados por comas","Polos separados por comas", "Ganancia"},"Ingrese los valores",[1,1,1]);
  ceros = strCellToNumVector(strsplit(respuesta{1}, ","));
  polos = strCellToNumVector(strsplit(respuesta{2}, ","));
  ganancia = str2num(respuesta{3});
  transfer = zpk(ceros,polos,ganancia);
endfunction