clear; clc;
pkg load control;
pkg load signal;
printf("Bienvenido al Programa ASIC\n");

opc = 9;
while opc==9,
  [transfer,cancelado] = menuIngresoFuncion();
  if cancelado==1,
    opc = 0;  #Finalizar
  else,
    opc = menuFuncionalidades(transfer);
  end;
end;
printf("\n\nPrograma finalizado\n\n");
