function transfer = createTransFromZeroPoleGain()
  ceros = input("Ingrese los ceros en un array: ");
  polos = input("Ingrese los polos en un array: ");
  ganancia = input("Ingrese la ganancia (constante): ");
  transfer = zpk(ceros,polos,ganancia);
endfunction