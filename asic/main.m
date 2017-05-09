clear; clc;
pkg load control;
pkg load signal;
printf("Bienvenido al Programa ASIC\n");

opc = 9;
while opc==9,
  transfer = menuIngresoFuncion();
  opc = menuFuncionalidades(transfer);
end;
printf("\n\nPrograma finalizado\n\n");
